import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages808.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages808.Parallel
theorem node1280_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value307 value1 value2 = (output602, value308, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value308 value1 value2 = (output1279, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value307 value1 value2 = (output1280, value593, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value306 value1 value2 = (output601, value307, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value307 value1 value2 = (output1280, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value306 value1 value2 = (output1281, value593, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value305 value1 value2 = (output600, value306, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value306 value1 value2 = (output1281, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value305 value1 value2 = (output1282, value593, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value304 value1 value2 = (output599, value305, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value305 value1 value2 = (output1282, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value304 value1 value2 = (output1283, value593, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value303 value1 value2 = (output598, value304, value1))
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value304 value1 value2 = (output1283, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1284 value303 value1 value2 = (output1284, value593, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child1283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output1283_skip]
  kernel_rfl

theorem node1285_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value302 value1 value2 = (output597, value303, value1))
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value303 value1 value2 = (output1284, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1285 value302 value1 value2 = (output1285, value593, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child1284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output1284_skip]
  kernel_rfl

theorem node1286_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value301 value1 value2 = (output596, value302, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value302 value1 value2 = (output1285, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value301 value1 value2 = (output1286, value593, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value300 value1 value2 = (output595, value301, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value301 value1 value2 = (output1286, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value300 value1 value2 = (output1287, value593, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child1286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output1286_skip]
  kernel_rfl

theorem node1288_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value299 value1 value2 = (output594, value300, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value300 value1 value2 = (output1287, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value299 value1 value2 = (output1288, value593, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value298 value1 value2 = (output593, value299, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value299 value1 value2 = (output1288, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value298 value1 value2 = (output1289, value593, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq
    (child592 : Flapjack.WordAlloc.removeDeadStructural input592 value297 value1 value2 = (output592, value298, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value298 value1 value2 = (output1289, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value297 value1 value2 = (output1290, value593, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child592]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output592_skip, output1289_skip]
  kernel_rfl

theorem node1291_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value296 value1 value2 = (output591, value297, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value297 value1 value2 = (output1290, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value296 value1 value2 = (output1291, value593, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child1290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value293 value1 value2 = (output590, value296, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value296 value1 value2 = (output1291, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value293 value1 value2 = (output1292, value593, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child1291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output1291_skip]
  kernel_rfl

theorem node1293_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value293 value1 value2 = (output585, value293, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value293 value1 value2 = (output1292, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value293 value1 value2 = (output1293, value593, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child1292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output1292_skip]
  kernel_rfl

theorem node1294_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value292 value1 value2 = (output584, value293, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value293 value1 value2 = (output1293, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value292 value1 value2 = (output1294, value593, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value291 value1 value2 = (output583, value292, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value292 value1 value2 = (output1294, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value291 value1 value2 = (output1295, value593, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output583_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value290 value1 value2 = (output582, value291, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value291 value1 value2 = (output1295, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value290 value1 value2 = (output1296, value593, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value289 value1 value2 = (output581, value290, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value290 value1 value2 = (output1296, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value289 value1 value2 = (output1297, value593, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value288 value1 value2 = (output580, value289, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value289 value1 value2 = (output1297, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value288 value1 value2 = (output1298, value593, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value287 value1 value2 = (output579, value288, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value288 value1 value2 = (output1298, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value287 value1 value2 = (output1299, value593, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child579]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output579_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value286 value1 value2 = (output578, value287, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value287 value1 value2 = (output1299, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value286 value1 value2 = (output1300, value593, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output578_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value285 value1 value2 = (output577, value286, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value286 value1 value2 = (output1300, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value285 value1 value2 = (output1301, value593, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child576 : Flapjack.WordAlloc.removeDeadStructural input576 value284 value1 value2 = (output576, value285, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value285 value1 value2 = (output1301, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value284 value1 value2 = (output1302, value593, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child576]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output576_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value283 value1 value2 = (output575, value284, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value284 value1 value2 = (output1302, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value283 value1 value2 = (output1303, value593, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value282 value1 value2 = (output574, value283, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value283 value1 value2 = (output1303, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value282 value1 value2 = (output1304, value593, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value281 value1 value2 = (output573, value282, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value282 value1 value2 = (output1304, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value281 value1 value2 = (output1305, value593, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value278 value1 value2 = (output572, value281, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value281 value1 value2 = (output1305, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value278 value1 value2 = (output1306, value593, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value278 value1 value2 = (output567, value278, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value278 value1 value2 = (output1306, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value278 value1 value2 = (output1307, value593, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value277 value1 value2 = (output566, value278, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value278 value1 value2 = (output1307, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value277 value1 value2 = (output1308, value593, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child565 : Flapjack.WordAlloc.removeDeadStructural input565 value276 value1 value2 = (output565, value277, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value277 value1 value2 = (output1308, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value276 value1 value2 = (output1309, value593, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child565]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output565_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child564 : Flapjack.WordAlloc.removeDeadStructural input564 value275 value1 value2 = (output564, value276, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value276 value1 value2 = (output1309, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value275 value1 value2 = (output1310, value593, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child564]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output564_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value274 value1 value2 = (output563, value275, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value275 value1 value2 = (output1310, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value274 value1 value2 = (output1311, value593, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child562 : Flapjack.WordAlloc.removeDeadStructural input562 value273 value1 value2 = (output562, value274, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value274 value1 value2 = (output1311, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value273 value1 value2 = (output1312, value593, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child562]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output562_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value272 value1 value2 = (output561, value273, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value273 value1 value2 = (output1312, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value272 value1 value2 = (output1313, value593, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value271 value1 value2 = (output560, value272, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value272 value1 value2 = (output1313, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value271 value1 value2 = (output1314, value593, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value270 value1 value2 = (output559, value271, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value271 value1 value2 = (output1314, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value270 value1 value2 = (output1315, value593, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child1314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value269 value1 value2 = (output558, value270, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value270 value1 value2 = (output1315, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value269 value1 value2 = (output1316, value593, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value268 value1 value2 = (output557, value269, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value269 value1 value2 = (output1316, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value268 value1 value2 = (output1317, value593, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value267 value1 value2 = (output556, value268, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value268 value1 value2 = (output1317, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value267 value1 value2 = (output1318, value593, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value266 value1 value2 = (output555, value267, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value267 value1 value2 = (output1318, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value266 value1 value2 = (output1319, value593, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value263 value1 value2 = (output554, value266, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value266 value1 value2 = (output1319, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value263 value1 value2 = (output1320, value593, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1319_skip]
  kernel_rfl

theorem node1321_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value263 value1 value2 = (output549, value263, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value263 value1 value2 = (output1320, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value263 value1 value2 = (output1321, value593, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child1320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output1320_skip]
  kernel_rfl

theorem node1322_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value262 value1 value2 = (output548, value263, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value263 value1 value2 = (output1321, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value262 value1 value2 = (output1322, value593, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value261 value1 value2 = (output547, value262, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value262 value1 value2 = (output1322, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value261 value1 value2 = (output1323, value593, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child1322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value260 value1 value2 = (output546, value261, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value261 value1 value2 = (output1323, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value260 value1 value2 = (output1324, value593, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child1323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output1323_skip]
  kernel_rfl

theorem node1325_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value259 value1 value2 = (output545, value260, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value260 value1 value2 = (output1324, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value259 value1 value2 = (output1325, value593, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value258 value1 value2 = (output544, value259, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value259 value1 value2 = (output1325, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value258 value1 value2 = (output1326, value593, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value257 value1 value2 = (output543, value258, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value258 value1 value2 = (output1326, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value257 value1 value2 = (output1327, value593, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value256 value1 value2 = (output542, value257, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value257 value1 value2 = (output1327, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value256 value1 value2 = (output1328, value593, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value255 value1 value2 = (output541, value256, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value256 value1 value2 = (output1328, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value255 value1 value2 = (output1329, value593, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value254 value1 value2 = (output540, value255, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value255 value1 value2 = (output1329, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value254 value1 value2 = (output1330, value593, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value253 value1 value2 = (output539, value254, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value254 value1 value2 = (output1330, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value253 value1 value2 = (output1331, value593, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value252 value1 value2 = (output538, value253, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value253 value1 value2 = (output1331, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value252 value1 value2 = (output1332, value593, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value251 value1 value2 = (output537, value252, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value252 value1 value2 = (output1332, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value251 value1 value2 = (output1333, value593, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value248 value1 value2 = (output536, value251, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value251 value1 value2 = (output1333, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value248 value1 value2 = (output1334, value593, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child1333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value248 value1 value2 = (output531, value248, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value248 value1 value2 = (output1334, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value248 value1 value2 = (output1335, value593, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value247 value1 value2 = (output530, value248, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value248 value1 value2 = (output1335, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value247 value1 value2 = (output1336, value593, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value246 value1 value2 = (output529, value247, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value247 value1 value2 = (output1336, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value246 value1 value2 = (output1337, value593, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value245 value1 value2 = (output528, value246, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value246 value1 value2 = (output1337, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value245 value1 value2 = (output1338, value593, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child1337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output1337_skip]
  kernel_rfl

theorem node1339_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value244 value1 value2 = (output527, value245, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value245 value1 value2 = (output1338, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value244 value1 value2 = (output1339, value593, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1338_skip]
  kernel_rfl

theorem node1340_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value243 value1 value2 = (output526, value244, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value244 value1 value2 = (output1339, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value243 value1 value2 = (output1340, value593, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value242 value1 value2 = (output525, value243, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value243 value1 value2 = (output1340, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value242 value1 value2 = (output1341, value593, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value241 value1 value2 = (output524, value242, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value242 value1 value2 = (output1341, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value241 value1 value2 = (output1342, value593, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child1341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output1341_skip]
  kernel_rfl

theorem node1343_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value240 value1 value2 = (output523, value241, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value241 value1 value2 = (output1342, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value240 value1 value2 = (output1343, value593, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value239 value1 value2 = (output522, value240, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value240 value1 value2 = (output1343, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value239 value1 value2 = (output1344, value593, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value238 value1 value2 = (output521, value239, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value239 value1 value2 = (output1344, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value238 value1 value2 = (output1345, value593, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value237 value1 value2 = (output520, value238, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value238 value1 value2 = (output1345, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value237 value1 value2 = (output1346, value593, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value236 value1 value2 = (output519, value237, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value237 value1 value2 = (output1346, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value236 value1 value2 = (output1347, value593, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value233 value1 value2 = (output518, value236, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value236 value1 value2 = (output1347, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value233 value1 value2 = (output1348, value593, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value233 value1 value2 = (output513, value233, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value233 value1 value2 = (output1348, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value233 value1 value2 = (output1349, value593, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value232 value1 value2 = (output512, value233, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value233 value1 value2 = (output1349, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value232 value1 value2 = (output1350, value593, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value231 value1 value2 = (output511, value232, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value232 value1 value2 = (output1350, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value231 value1 value2 = (output1351, value593, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value230 value1 value2 = (output510, value231, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value231 value1 value2 = (output1351, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value230 value1 value2 = (output1352, value593, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value229 value1 value2 = (output509, value230, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value230 value1 value2 = (output1352, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value229 value1 value2 = (output1353, value593, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value228 value1 value2 = (output508, value229, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value229 value1 value2 = (output1353, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value228 value1 value2 = (output1354, value593, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value227 value1 value2 = (output507, value228, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value228 value1 value2 = (output1354, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value227 value1 value2 = (output1355, value593, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value226 value1 value2 = (output506, value227, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value227 value1 value2 = (output1355, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value226 value1 value2 = (output1356, value593, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value225 value1 value2 = (output505, value226, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value226 value1 value2 = (output1356, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value225 value1 value2 = (output1357, value593, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value130 value1 value2 = (output504, value225, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value225 value1 value2 = (output1357, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value130 value1 value2 = (output1358, value593, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value130 value1 value2 = (output205, value130, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value130 value1 value2 = (output1358, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value130 value1 value2 = (output1359, value593, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value129 value1 value2 = (output204, value130, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value130 value1 value2 = (output1359, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value129 value1 value2 = (output1360, value593, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value128 value1 value2 = (output203, value129, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value129 value1 value2 = (output1360, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value128 value1 value2 = (output1361, value593, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value127 value1 value2 = (output202, value128, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value128 value1 value2 = (output1361, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value127 value1 value2 = (output1362, value593, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value126 value1 value2 = (output201, value127, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value127 value1 value2 = (output1362, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value126 value1 value2 = (output1363, value593, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child1362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value125 value1 value2 = (output200, value126, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value126 value1 value2 = (output1363, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value125 value1 value2 = (output1364, value593, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value124 value1 value2 = (output199, value125, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value125 value1 value2 = (output1364, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value124 value1 value2 = (output1365, value593, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child1364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output1364_skip]
  kernel_rfl

theorem node1366_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value121 value1 value2 = (output198, value124, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value124 value1 value2 = (output1365, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value121 value1 value2 = (output1366, value593, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child1365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value121 value1 value2 = (output193, value121, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value121 value1 value2 = (output1366, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value121 value1 value2 = (output1367, value593, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child1366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output1366_skip]
  kernel_rfl

theorem node1368_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value120 value1 value2 = (output192, value121, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value121 value1 value2 = (output1367, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value120 value1 value2 = (output1368, value593, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child1367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output1367_skip]
  kernel_rfl

theorem node1369_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value119 value1 value2 = (output191, value120, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value120 value1 value2 = (output1368, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value119 value1 value2 = (output1369, value593, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1368_skip]
  kernel_rfl

theorem node1370_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value118 value1 value2 = (output190, value119, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value119 value1 value2 = (output1369, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value118 value1 value2 = (output1370, value593, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value117 value1 value2 = (output189, value118, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value118 value1 value2 = (output1370, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value117 value1 value2 = (output1371, value593, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value116 value1 value2 = (output188, value117, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value117 value1 value2 = (output1371, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value116 value1 value2 = (output1372, value593, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value115 value1 value2 = (output187, value116, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value116 value1 value2 = (output1372, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value115 value1 value2 = (output1373, value593, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value112 value1 value2 = (output186, value115, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value115 value1 value2 = (output1373, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value112 value1 value2 = (output1374, value593, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value112 value1 value2 = (output181, value112, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value112 value1 value2 = (output1374, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value112 value1 value2 = (output1375, value593, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value111 value1 value2 = (output180, value112, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value112 value1 value2 = (output1375, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value111 value1 value2 = (output1376, value593, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child1375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value110 value1 value2 = (output179, value111, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value111 value1 value2 = (output1376, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value110 value1 value2 = (output1377, value593, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value97 value1 value2 = (output178, value110, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value110 value1 value2 = (output1377, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value97 value1 value2 = (output1378, value593, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value97 value1 value2 = (output119, value97, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value97 value1 value2 = (output1378, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value97 value1 value2 = (output1379, value593, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value96 value1 value2 = (output118, value97, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value97 value1 value2 = (output1379, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value96 value1 value2 = (output1380, value593, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value95 value1 value2 = (output117, value96, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value96 value1 value2 = (output1380, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value95 value1 value2 = (output1381, value593, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value94 value1 value2 = (output116, value95, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value95 value1 value2 = (output1381, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value94 value1 value2 = (output1382, value593, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value93 value1 value2 = (output115, value94, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value94 value1 value2 = (output1382, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value93 value1 value2 = (output1383, value593, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value92 value1 value2 = (output114, value93, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value93 value1 value2 = (output1383, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value92 value1 value2 = (output1384, value593, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value92, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value92 value1 value2 = (output1384, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value91 value1 value2 = (output1385, value593, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value91 value1 value2 = (output1385, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value90 value1 value2 = (output1386, value593, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value90 value1 value2 = (output1386, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value89 value1 value2 = (output1387, value593, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value89 value1 value2 = (output1387, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value88 value1 value2 = (output1388, value593, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value88 value1 value2 = (output1388, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value87 value1 value2 = (output1389, value593, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value87 value1 value2 = (output1389, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value86 value1 value2 = (output1390, value593, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value86 value1 value2 = (output1390, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value85 value1 value2 = (output1391, value593, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value82 value1 value2 = (output106, value85, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value85 value1 value2 = (output1391, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value82 value1 value2 = (output1392, value593, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value82 value1 value2 = (output101, value82, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value82 value1 value2 = (output1392, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value82 value1 value2 = (output1393, value593, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value81 value1 value2 = (output100, value82, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value82 value1 value2 = (output1393, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value81 value1 value2 = (output1394, value593, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value81, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value81 value1 value2 = (output1394, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value80 value1 value2 = (output1395, value593, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value80 value1 value2 = (output1395, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value79 value1 value2 = (output1396, value593, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child1395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output1395_skip]
  kernel_rfl

theorem node1397_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value79 value1 value2 = (output1396, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value78 value1 value2 = (output1397, value593, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value78 value1 value2 = (output1397, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value77 value1 value2 = (output1398, value593, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value77 value1 value2 = (output1398, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value76 value1 value2 = (output1399, value593, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value76 value1 value2 = (output1399, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value75 value1 value2 = (output1400, value593, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value75 value1 value2 = (output1400, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value74 value1 value2 = (output1401, value593, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value72 value1 value2 = (output92, value74, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value74 value1 value2 = (output1401, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value72 value1 value2 = (output1402, value593, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value71 value1 value2 = (output89, value72, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value72 value1 value2 = (output1402, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value71 value1 value2 = (output1403, value593, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output89_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value71, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value71 value1 value2 = (output1403, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value69 value1 value2 = (output1404, value593, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child1403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output1403_skip]
  kernel_rfl

theorem node1405_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value68 value1 value2 = (output85, value69, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value69 value1 value2 = (output1404, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value68 value1 value2 = (output1405, value593, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child1404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output1404_skip]
  kernel_rfl

theorem node1406_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value66 value1 value2 = (output84, value68, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value68 value1 value2 = (output1405, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value66 value1 value2 = (output1406, value593, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value66 value1 value2 = (output1406, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value65 value1 value2 = (output1407, value593, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value63 value1 value2 = (output80, value65, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value65 value1 value2 = (output1407, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value63 value1 value2 = (output1408, value593, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value62 value1 value2 = (output77, value63, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value63 value1 value2 = (output1408, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value62 value1 value2 = (output1409, value593, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value60 value1 value2 = (output76, value62, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value62 value1 value2 = (output1409, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value60 value1 value2 = (output1410, value593, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child1409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value59 value1 value2 = (output73, value60, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value60 value1 value2 = (output1410, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value59 value1 value2 = (output1411, value593, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child1410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value57 value1 value2 = (output72, value59, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value59 value1 value2 = (output1411, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value57 value1 value2 = (output1412, value593, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value55 value1 value2 = (output69, value57, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value57 value1 value2 = (output1412, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value55 value1 value2 = (output1413, value593, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value54 value1 value2 = (output66, value55, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value55 value1 value2 = (output1413, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value54 value1 value2 = (output1414, value593, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value53 value1 value2 = (output65, value54, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value54 value1 value2 = (output1414, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value53 value1 value2 = (output1415, value593, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value52 value1 value2 = (output64, value53, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value53 value1 value2 = (output1415, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value52 value1 value2 = (output1416, value593, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value51 value1 value2 = (output63, value52, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value52 value1 value2 = (output1416, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value51 value1 value2 = (output1417, value593, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value50 value1 value2 = (output62, value51, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value51 value1 value2 = (output1417, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value50 value1 value2 = (output1418, value593, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child1417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output1417_skip]
  kernel_rfl

theorem node1419_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value50 value1 value2 = (output1418, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value49 value1 value2 = (output1419, value593, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value48 value1 value2 = (output60, value49, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value49 value1 value2 = (output1419, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value48 value1 value2 = (output1420, value593, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value46 value1 value2 = (output59, value48, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value48 value1 value2 = (output1420, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value46 value1 value2 = (output1421, value593, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child1420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output1420_skip]
  kernel_rfl

theorem node1422_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value45 value1 value2 = (output56, value46, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value46 value1 value2 = (output1421, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value45 value1 value2 = (output1422, value593, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1421_skip]
  kernel_rfl

theorem node1423_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value43 value1 value2 = (output55, value45, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value45 value1 value2 = (output1422, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value43 value1 value2 = (output1423, value593, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value42 value1 value2 = (output52, value43, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value43 value1 value2 = (output1423, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value42 value1 value2 = (output1424, value593, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value40 value1 value2 = (output51, value42, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value42 value1 value2 = (output1424, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value40 value1 value2 = (output1425, value593, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child1424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value39 value1 value2 = (output48, value40, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value40 value1 value2 = (output1425, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value39 value1 value2 = (output1426, value593, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value37 value1 value2 = (output47, value39, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value39 value1 value2 = (output1426, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value37 value1 value2 = (output1427, value593, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value37 value1 value2 = (output1427, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value36 value1 value2 = (output1428, value593, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value34 value1 value2 = (output43, value36, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value36 value1 value2 = (output1428, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value34 value1 value2 = (output1429, value593, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value33 value1 value2 = (output40, value34, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value34 value1 value2 = (output1429, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value33 value1 value2 = (output1430, value593, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value31 value1 value2 = (output39, value33, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value33 value1 value2 = (output1430, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value31 value1 value2 = (output1431, value593, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value29 value1 value2 = (output36, value31, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value31 value1 value2 = (output1431, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value29 value1 value2 = (output1432, value593, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value28 value1 value2 = (output33, value29, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value29 value1 value2 = (output1432, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value28 value1 value2 = (output1433, value593, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child1432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output1432_skip]
  kernel_rfl

theorem node1434_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value28 value1 value2 = (output1433, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value27 value1 value2 = (output1434, value593, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value26 value1 value2 = (output31, value27, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value27 value1 value2 = (output1434, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value26 value1 value2 = (output1435, value593, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child1434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value26 value1 value2 = (output1435, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value25 value1 value2 = (output1436, value593, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child1435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output1435_skip]
  kernel_rfl

theorem node1437_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value24 value1 value2 = (output29, value25, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value25 value1 value2 = (output1436, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value24 value1 value2 = (output1437, value593, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value23 value1 value2 = (output28, value24, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value24 value1 value2 = (output1437, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value23 value1 value2 = (output1438, value593, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child28]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output28_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value22 value1 value2 = (output27, value23, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value23 value1 value2 = (output1438, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value22 value1 value2 = (output1439, value593, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value20 value1 value2 = (output26, value22, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value22 value1 value2 = (output1439, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value20 value1 value2 = (output1440, value593, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value19 value1 value2 = (output23, value20, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value20 value1 value2 = (output1440, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value19 value1 value2 = (output1441, value593, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value17 value1 value2 = (output22, value19, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value19 value1 value2 = (output1441, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value17 value1 value2 = (output1442, value593, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value17 value1 value2 = (output1442, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value16 value1 value2 = (output1443, value593, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value16 value1 value2 = (output1443, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value14 value1 value2 = (output1444, value593, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value14 value1 value2 = (output1444, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value13 value1 value2 = (output1445, value593, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value13 value1 value2 = (output1445, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value11 value1 value2 = (output1446, value593, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value11 value1 value2 = (output1446, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value10 value1 value2 = (output1447, value593, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value10 value1 value2 = (output1447, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value8 value1 value2 = (output1448, value593, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value8 value1 value2 = (output1448, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value7 value1 value2 = (output1449, value593, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1448_skip]
  kernel_rfl

theorem node1450_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value7 value1 value2 = (output1449, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value5 value1 value2 = (output1450, value593, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value5 value1 value2 = (output1450, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value4 value1 value2 = (output1451, value593, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1450_skip]
  kernel_rfl

theorem node1452_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value4 value1 value2 = (output1451, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value0 value1 value2 = (output1452, value593, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1453 value593 value1 value2 = (output1453, value594, value1) := by
  rw [input1453_def, output1453_def]
  kernel_rfl

theorem node1454_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value0 value1 value2 = (output1452, value593, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value593 value1 value2 = (output1453, value594, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value0 value1 value2 = (output1454, value594, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  try dsimp only
  rw [child1453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output1453_skip]
  kernel_rfl

#print axioms node1454_cond_eq
end InitECandidate.Proofs.DeadStages808.Parallel
