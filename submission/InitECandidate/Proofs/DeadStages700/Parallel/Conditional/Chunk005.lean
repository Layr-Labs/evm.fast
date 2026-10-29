import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages700.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages700.Parallel
theorem node1280_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value346 value1 value2 = (output988, value335, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value335 value1 value2 = (output1279, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value346 value1 value2 = (output1280, value449, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value344 value1 value2 = (output987, value346, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value346 value1 value2 = (output1280, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value344 value1 value2 = (output1281, value449, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value343 value1 value2 = (output984, value344, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value344 value1 value2 = (output1281, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value343 value1 value2 = (output1282, value449, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value341 value1 value2 = (output983, value343, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value343 value1 value2 = (output1282, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value341 value1 value2 = (output1283, value449, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value340 value1 value2 = (output980, value341, value1))
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value341 value1 value2 = (output1283, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1284 value340 value1 value2 = (output1284, value449, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  try dsimp only
  rw [child1283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output1283_skip]
  kernel_rfl

theorem node1285_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value338 value1 value2 = (output979, value340, value1))
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value340 value1 value2 = (output1284, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1285 value338 value1 value2 = (output1285, value449, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child1284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output1284_skip]
  kernel_rfl

theorem node1286_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value337 value1 value2 = (output976, value338, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value338 value1 value2 = (output1285, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value337 value1 value2 = (output1286, value449, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value335 value1 value2 = (output975, value337, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value337 value1 value2 = (output1286, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value335 value1 value2 = (output1287, value449, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child1286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output1286_skip]
  kernel_rfl

theorem node1288_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value335 value1 value2 = (output972, value335, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value335 value1 value2 = (output1287, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value335 value1 value2 = (output1288, value449, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value137 value1 value2 = (output971, value335, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value335 value1 value2 = (output1288, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value137 value1 value2 = (output1289, value449, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value137 value1 value2 = (output369, value137, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value137 value1 value2 = (output1289, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value137 value1 value2 = (output1290, value449, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output1289_skip]
  kernel_rfl

theorem node1291_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value136 value1 value2 = (output368, value137, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value137 value1 value2 = (output1290, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value136 value1 value2 = (output1291, value449, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child1290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value136 value1 value2 = (output367, value136, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value136 value1 value2 = (output1291, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value136 value1 value2 = (output1292, value449, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child1291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output1291_skip]
  kernel_rfl

theorem node1293_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value135 value1 value2 = (output366, value136, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value136 value1 value2 = (output1292, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value135 value1 value2 = (output1293, value449, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child1292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output1292_skip]
  kernel_rfl

theorem node1294_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value132 value1 value2 = (output365, value135, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value135 value1 value2 = (output1293, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value132 value1 value2 = (output1294, value449, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value132 value1 value2 = (output360, value132, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value132 value1 value2 = (output1294, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value132 value1 value2 = (output1295, value449, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value128 value1 value2 = (output359, value132, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value132 value1 value2 = (output1295, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value128 value1 value2 = (output1296, value449, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value131 value1 value2 = (output358, value128, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value128 value1 value2 = (output1296, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value131 value1 value2 = (output1297, value449, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value87 value1 value2 = (output357, value131, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value131 value1 value2 = (output1297, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value87 value1 value2 = (output1298, value449, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value87 value1 value2 = (output244, value87, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value87 value1 value2 = (output1298, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value87 value1 value2 = (output1299, value449, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value85 value1 value2 = (output243, value87, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value87 value1 value2 = (output1299, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value85 value1 value2 = (output1300, value449, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value83 value1 value2 = (output240, value85, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value85 value1 value2 = (output1300, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value83 value1 value2 = (output1301, value449, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value81 value1 value2 = (output237, value83, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value83 value1 value2 = (output1301, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value81 value1 value2 = (output1302, value449, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value79 value1 value2 = (output234, value81, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value81 value1 value2 = (output1302, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value79 value1 value2 = (output1303, value449, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value78 value1 value2 = (output231, value79, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value79 value1 value2 = (output1303, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value78 value1 value2 = (output1304, value449, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value77 value1 value2 = (output230, value78, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value78 value1 value2 = (output1304, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value77 value1 value2 = (output1305, value449, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value76 value1 value2 = (output229, value77, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value77 value1 value2 = (output1305, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value76 value1 value2 = (output1306, value449, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value75 value1 value2 = (output228, value76, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value76 value1 value2 = (output1306, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value75 value1 value2 = (output1307, value449, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value72 value1 value2 = (output227, value75, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value75 value1 value2 = (output1307, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value72 value1 value2 = (output1308, value449, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value72 value1 value2 = (output222, value72, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value72 value1 value2 = (output1308, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value72 value1 value2 = (output1309, value449, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value71 value1 value2 = (output221, value72, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value72 value1 value2 = (output1309, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value71 value1 value2 = (output1310, value449, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value71 value1 value2 = (output220, value71, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value71 value1 value2 = (output1310, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value71 value1 value2 = (output1311, value449, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value9 value1 value2 = (output219, value71, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value71 value1 value2 = (output1311, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value9 value1 value2 = (output1312, value449, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value1 value2 = (output11, value9, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value9 value1 value2 = (output1312, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value9 value1 value2 = (output1313, value449, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value9 value1 value2 = (output1313, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value8 value1 value2 = (output1314, value449, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value8 value1 value2 = (output1314, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value5 value1 value2 = (output1315, value449, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child1314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value5 value1 value2 = (output1315, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value5 value1 value2 = (output1316, value449, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value5 value1 value2 = (output1316, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value4 value1 value2 = (output1317, value449, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value4 value1 value2 = (output1317, value449, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value0 value1 value2 = (output1318, value449, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1319 value449 value1 value2 = (output1319, value450, value1) := by
  rw [input1319_def, output1319_def]
  kernel_rfl

theorem node1320_cond_eq
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value0 value1 value2 = (output1318, value449, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value449 value1 value2 = (output1319, value450, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value0 value1 value2 = (output1320, value450, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1318]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1318_skip, output1319_skip]
  kernel_rfl

#print axioms node1320_cond_eq
end InitECandidate.Proofs.DeadStages700.Parallel
