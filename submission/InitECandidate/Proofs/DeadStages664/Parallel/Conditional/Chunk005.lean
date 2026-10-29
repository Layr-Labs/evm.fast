import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages664.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages664.Parallel
theorem node1280_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value518 value1 value2 = (output972, value518, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value518 value1 value2 = (output1279, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value518 value1 value2 = (output1280, value615, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value517 value1 value2 = (output971, value518, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value518 value1 value2 = (output1280, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value517 value1 value2 = (output1281, value615, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value515 value1 value2 = (output970, value517, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value517 value1 value2 = (output1281, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value515 value1 value2 = (output1282, value615, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child970]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output970_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value514 value1 value2 = (output967, value515, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value515 value1 value2 = (output1282, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value514 value1 value2 = (output1283, value615, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value512 value1 value2 = (output966, value514, value1))
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value514 value1 value2 = (output1283, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1284 value512 value1 value2 = (output1284, value615, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child1283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output1283_skip]
  kernel_rfl

theorem node1285_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value511 value1 value2 = (output963, value512, value1))
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value512 value1 value2 = (output1284, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1285 value511 value1 value2 = (output1285, value615, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child1284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output1284_skip]
  kernel_rfl

theorem node1286_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value509 value1 value2 = (output962, value511, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value511 value1 value2 = (output1285, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value509 value1 value2 = (output1286, value615, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value508 value1 value2 = (output959, value509, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value509 value1 value2 = (output1286, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value508 value1 value2 = (output1287, value615, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child1286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output1286_skip]
  kernel_rfl

theorem node1288_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value410 value1 value2 = (output958, value508, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value508 value1 value2 = (output1287, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value410 value1 value2 = (output1288, value615, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value502 value1 value2 = (output955, value410, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value410 value1 value2 = (output1288, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value502 value1 value2 = (output1289, value615, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value502 value1 value2 = (output946, value502, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value502 value1 value2 = (output1289, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value502 value1 value2 = (output1290, value615, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output1289_skip]
  kernel_rfl

theorem node1291_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value502 value1 value2 = (output945, value502, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value502 value1 value2 = (output1290, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value502 value1 value2 = (output1291, value615, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child1290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value502 value1 value2 = (output944, value502, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value502 value1 value2 = (output1291, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value502 value1 value2 = (output1292, value615, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child1291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output1291_skip]
  kernel_rfl

theorem node1293_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value502 value1 value2 = (output943, value502, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value502 value1 value2 = (output1292, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value502 value1 value2 = (output1293, value615, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  try dsimp only
  rw [child1292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output943_skip, output1292_skip]
  kernel_rfl

theorem node1294_cond_eq
    (child942 : Flapjack.WordAlloc.removeDeadStructural input942 value501 value1 value2 = (output942, value502, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value502 value1 value2 = (output1293, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value501 value1 value2 = (output1294, value615, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child942]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output942_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value499 value1 value2 = (output941, value501, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value501 value1 value2 = (output1294, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value499 value1 value2 = (output1295, value615, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value498 value1 value2 = (output938, value499, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value499 value1 value2 = (output1295, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value498 value1 value2 = (output1296, value615, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value496 value1 value2 = (output937, value498, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value498 value1 value2 = (output1296, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value496 value1 value2 = (output1297, value615, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value495 value1 value2 = (output934, value496, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value496 value1 value2 = (output1297, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value495 value1 value2 = (output1298, value615, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value493 value1 value2 = (output933, value495, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value495 value1 value2 = (output1298, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value493 value1 value2 = (output1299, value615, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value492 value1 value2 = (output930, value493, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value493 value1 value2 = (output1299, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value492 value1 value2 = (output1300, value615, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value410 value1 value2 = (output929, value492, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value492 value1 value2 = (output1300, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value410 value1 value2 = (output1301, value615, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output929_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value486 value1 value2 = (output926, value410, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value410 value1 value2 = (output1301, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value486 value1 value2 = (output1302, value615, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value486 value1 value2 = (output917, value486, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value486 value1 value2 = (output1302, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value486 value1 value2 = (output1303, value615, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value486 value1 value2 = (output916, value486, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value486 value1 value2 = (output1303, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value486 value1 value2 = (output1304, value615, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value486 value1 value2 = (output915, value486, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value486 value1 value2 = (output1304, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value486 value1 value2 = (output1305, value615, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value486 value1 value2 = (output914, value486, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value486 value1 value2 = (output1305, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value486 value1 value2 = (output1306, value615, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value485 value1 value2 = (output913, value486, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value486 value1 value2 = (output1306, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value485 value1 value2 = (output1307, value615, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value483 value1 value2 = (output912, value485, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value485 value1 value2 = (output1307, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value483 value1 value2 = (output1308, value615, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value482 value1 value2 = (output909, value483, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value483 value1 value2 = (output1308, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value482 value1 value2 = (output1309, value615, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value480 value1 value2 = (output908, value482, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value482 value1 value2 = (output1309, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value480 value1 value2 = (output1310, value615, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value479 value1 value2 = (output905, value480, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value480 value1 value2 = (output1310, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value479 value1 value2 = (output1311, value615, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value477 value1 value2 = (output904, value479, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value479 value1 value2 = (output1311, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value477 value1 value2 = (output1312, value615, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value476 value1 value2 = (output901, value477, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value477 value1 value2 = (output1312, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value476 value1 value2 = (output1313, value615, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child901]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output901_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value410 value1 value2 = (output900, value476, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value476 value1 value2 = (output1313, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value410 value1 value2 = (output1314, value615, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value470 value1 value2 = (output897, value410, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value410 value1 value2 = (output1314, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value470 value1 value2 = (output1315, value615, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child1314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value470 value1 value2 = (output888, value470, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value470 value1 value2 = (output1315, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value470 value1 value2 = (output1316, value615, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value470 value1 value2 = (output887, value470, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value470 value1 value2 = (output1316, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value470 value1 value2 = (output1317, value615, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value470 value1 value2 = (output886, value470, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value470 value1 value2 = (output1317, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value470 value1 value2 = (output1318, value615, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value470 value1 value2 = (output885, value470, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value470 value1 value2 = (output1318, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value470 value1 value2 = (output1319, value615, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value469 value1 value2 = (output884, value470, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value470 value1 value2 = (output1319, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value469 value1 value2 = (output1320, value615, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output1319_skip]
  kernel_rfl

theorem node1321_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value467 value1 value2 = (output883, value469, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value469 value1 value2 = (output1320, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value467 value1 value2 = (output1321, value615, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child1320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output1320_skip]
  kernel_rfl

theorem node1322_cond_eq
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value466 value1 value2 = (output880, value467, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value467 value1 value2 = (output1321, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value466 value1 value2 = (output1322, value615, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child880]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output880_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value464 value1 value2 = (output879, value466, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value466 value1 value2 = (output1322, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value464 value1 value2 = (output1323, value615, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child1322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value463 value1 value2 = (output876, value464, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value464 value1 value2 = (output1323, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value463 value1 value2 = (output1324, value615, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child1323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output1323_skip]
  kernel_rfl

theorem node1325_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value461 value1 value2 = (output875, value463, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value463 value1 value2 = (output1324, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value461 value1 value2 = (output1325, value615, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value460 value1 value2 = (output872, value461, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value461 value1 value2 = (output1325, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value460 value1 value2 = (output1326, value615, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value410 value1 value2 = (output871, value460, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value460 value1 value2 = (output1326, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value410 value1 value2 = (output1327, value615, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value454 value1 value2 = (output868, value410, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value410 value1 value2 = (output1327, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value454 value1 value2 = (output1328, value615, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value454 value1 value2 = (output859, value454, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value454 value1 value2 = (output1328, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value454 value1 value2 = (output1329, value615, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value454 value1 value2 = (output858, value454, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value454 value1 value2 = (output1329, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value454 value1 value2 = (output1330, value615, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value454 value1 value2 = (output857, value454, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value454 value1 value2 = (output1330, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value454 value1 value2 = (output1331, value615, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value454 value1 value2 = (output856, value454, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value454 value1 value2 = (output1331, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value454 value1 value2 = (output1332, value615, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value453 value1 value2 = (output855, value454, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value454 value1 value2 = (output1332, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value453 value1 value2 = (output1333, value615, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value451 value1 value2 = (output854, value453, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value453 value1 value2 = (output1333, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value451 value1 value2 = (output1334, value615, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child1333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value450 value1 value2 = (output851, value451, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value451 value1 value2 = (output1334, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value450 value1 value2 = (output1335, value615, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value448 value1 value2 = (output850, value450, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value450 value1 value2 = (output1335, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value448 value1 value2 = (output1336, value615, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value447 value1 value2 = (output847, value448, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value448 value1 value2 = (output1336, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value447 value1 value2 = (output1337, value615, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value445 value1 value2 = (output846, value447, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value447 value1 value2 = (output1337, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value445 value1 value2 = (output1338, value615, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child1337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output1337_skip]
  kernel_rfl

theorem node1339_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value444 value1 value2 = (output843, value445, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value445 value1 value2 = (output1338, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value444 value1 value2 = (output1339, value615, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child1338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output1338_skip]
  kernel_rfl

theorem node1340_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value410 value1 value2 = (output842, value444, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value444 value1 value2 = (output1339, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value410 value1 value2 = (output1340, value615, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value438 value1 value2 = (output839, value410, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value410 value1 value2 = (output1340, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value438 value1 value2 = (output1341, value615, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value438 value1 value2 = (output830, value438, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value438 value1 value2 = (output1341, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value438 value1 value2 = (output1342, value615, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child1341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output1341_skip]
  kernel_rfl

theorem node1343_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value438 value1 value2 = (output829, value438, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value438 value1 value2 = (output1342, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value438 value1 value2 = (output1343, value615, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value438 value1 value2 = (output828, value438, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value438 value1 value2 = (output1343, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value438 value1 value2 = (output1344, value615, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value438 value1 value2 = (output827, value438, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value438 value1 value2 = (output1344, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value438 value1 value2 = (output1345, value615, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value437 value1 value2 = (output826, value438, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value438 value1 value2 = (output1345, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value437 value1 value2 = (output1346, value615, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value435 value1 value2 = (output825, value437, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value437 value1 value2 = (output1346, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value435 value1 value2 = (output1347, value615, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output825_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value434 value1 value2 = (output822, value435, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value435 value1 value2 = (output1347, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value434 value1 value2 = (output1348, value615, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value432 value1 value2 = (output821, value434, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value434 value1 value2 = (output1348, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value432 value1 value2 = (output1349, value615, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value431 value1 value2 = (output818, value432, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value432 value1 value2 = (output1349, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value431 value1 value2 = (output1350, value615, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value429 value1 value2 = (output817, value431, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value431 value1 value2 = (output1350, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value429 value1 value2 = (output1351, value615, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child817]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output817_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value428 value1 value2 = (output814, value429, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value429 value1 value2 = (output1351, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value428 value1 value2 = (output1352, value615, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value410 value1 value2 = (output813, value428, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value428 value1 value2 = (output1352, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value410 value1 value2 = (output1353, value615, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value422 value1 value2 = (output810, value410, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value410 value1 value2 = (output1353, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value422 value1 value2 = (output1354, value615, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value422 value1 value2 = (output801, value422, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value422 value1 value2 = (output1354, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value422 value1 value2 = (output1355, value615, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value422 value1 value2 = (output800, value422, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value422 value1 value2 = (output1355, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value422 value1 value2 = (output1356, value615, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value422 value1 value2 = (output799, value422, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value422 value1 value2 = (output1356, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value422 value1 value2 = (output1357, value615, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value422 value1 value2 = (output798, value422, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value422 value1 value2 = (output1357, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value422 value1 value2 = (output1358, value615, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value421 value1 value2 = (output797, value422, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value422 value1 value2 = (output1358, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value421 value1 value2 = (output1359, value615, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value419 value1 value2 = (output796, value421, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value421 value1 value2 = (output1359, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value419 value1 value2 = (output1360, value615, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child796]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output796_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value418 value1 value2 = (output793, value419, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value419 value1 value2 = (output1360, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value418 value1 value2 = (output1361, value615, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child793]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output793_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value416 value1 value2 = (output792, value418, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value418 value1 value2 = (output1361, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value416 value1 value2 = (output1362, value615, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value415 value1 value2 = (output789, value416, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value416 value1 value2 = (output1362, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value415 value1 value2 = (output1363, value615, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  try dsimp only
  rw [child1362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output789_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value413 value1 value2 = (output788, value415, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value415 value1 value2 = (output1363, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value413 value1 value2 = (output1364, value615, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value412 value1 value2 = (output785, value413, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value413 value1 value2 = (output1364, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value412 value1 value2 = (output1365, value615, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child1364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output1364_skip]
  kernel_rfl

theorem node1366_cond_eq
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value410 value1 value2 = (output784, value412, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value412 value1 value2 = (output1365, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value410 value1 value2 = (output1366, value615, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child784]
  try dsimp only
  rw [child1365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output784_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value410 value1 value2 = (output781, value410, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value410 value1 value2 = (output1366, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value410 value1 value2 = (output1367, value615, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child1366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output1366_skip]
  kernel_rfl

theorem node1368_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value406 value1 value2 = (output780, value410, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value410 value1 value2 = (output1367, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value406 value1 value2 = (output1368, value615, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child1367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output1367_skip]
  kernel_rfl

theorem node1369_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value406 value1 value2 = (output773, value406, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value406 value1 value2 = (output1368, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value406 value1 value2 = (output1369, value615, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child1368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output1368_skip]
  kernel_rfl

theorem node1370_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value402 value1 value2 = (output772, value406, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value406 value1 value2 = (output1369, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value402 value1 value2 = (output1370, value615, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value401 value1 value2 = (output765, value402, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value402 value1 value2 = (output1370, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value401 value1 value2 = (output1371, value615, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value400 value1 value2 = (output764, value401, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value401 value1 value2 = (output1371, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value400 value1 value2 = (output1372, value615, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value398 value1 value2 = (output763, value400, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value400 value1 value2 = (output1372, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value398 value1 value2 = (output1373, value615, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value397 value1 value2 = (output760, value398, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value398 value1 value2 = (output1373, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value397 value1 value2 = (output1374, value615, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value396 value1 value2 = (output759, value397, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value397 value1 value2 = (output1374, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value396 value1 value2 = (output1375, value615, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value395 value1 value2 = (output758, value396, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value396 value1 value2 = (output1375, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value395 value1 value2 = (output1376, value615, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child1375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value394 value1 value2 = (output757, value395, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value395 value1 value2 = (output1376, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value394 value1 value2 = (output1377, value615, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value394 value1 value2 = (output756, value394, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value394 value1 value2 = (output1377, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value394 value1 value2 = (output1378, value615, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value394 value1 value2 = (output755, value394, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value394 value1 value2 = (output1378, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value394 value1 value2 = (output1379, value615, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value394 value1 value2 = (output754, value394, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value394 value1 value2 = (output1379, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value394 value1 value2 = (output1380, value615, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value394 value1 value2 = (output753, value394, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value394 value1 value2 = (output1380, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value394 value1 value2 = (output1381, value615, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value394 value1 value2 = (output752, value394, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value394 value1 value2 = (output1381, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value394 value1 value2 = (output1382, value615, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value394 value1 value2 = (output751, value394, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value394 value1 value2 = (output1382, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value394 value1 value2 = (output1383, value615, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value394 value1 value2 = (output750, value394, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value394 value1 value2 = (output1383, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value394 value1 value2 = (output1384, value615, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value394 value1 value2 = (output749, value394, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value394 value1 value2 = (output1384, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value394 value1 value2 = (output1385, value615, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value383 value1 value2 = (output748, value394, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value394 value1 value2 = (output1385, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value383 value1 value2 = (output1386, value615, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value383 value1 value2 = (output727, value383, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value383 value1 value2 = (output1386, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value383 value1 value2 = (output1387, value615, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value383 value1 value2 = (output726, value383, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value383 value1 value2 = (output1387, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value383 value1 value2 = (output1388, value615, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value383 value1 value2 = (output725, value383, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value383 value1 value2 = (output1388, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value383 value1 value2 = (output1389, value615, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value383 value1 value2 = (output724, value383, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value383 value1 value2 = (output1389, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value383 value1 value2 = (output1390, value615, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value383 value1 value2 = (output723, value383, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value383 value1 value2 = (output1390, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value383 value1 value2 = (output1391, value615, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value382 value1 value2 = (output722, value383, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value383 value1 value2 = (output1391, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value382 value1 value2 = (output1392, value615, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value381 value1 value2 = (output721, value382, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value382 value1 value2 = (output1392, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value381 value1 value2 = (output1393, value615, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value380 value1 value2 = (output720, value381, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value381 value1 value2 = (output1393, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value380 value1 value2 = (output1394, value615, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value379 value1 value2 = (output719, value380, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value380 value1 value2 = (output1394, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value379 value1 value2 = (output1395, value615, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value372 value1 value2 = (output718, value379, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value379 value1 value2 = (output1395, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value372 value1 value2 = (output1396, value615, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child1395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output1395_skip]
  kernel_rfl

theorem node1397_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value372 value1 value2 = (output705, value372, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value372 value1 value2 = (output1396, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value372 value1 value2 = (output1397, value615, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value371 value1 value2 = (output704, value372, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value372 value1 value2 = (output1397, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value371 value1 value2 = (output1398, value615, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value370 value1 value2 = (output703, value371, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value371 value1 value2 = (output1398, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value370 value1 value2 = (output1399, value615, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value369 value1 value2 = (output702, value370, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value370 value1 value2 = (output1399, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value369 value1 value2 = (output1400, value615, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value368 value1 value2 = (output701, value369, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value369 value1 value2 = (output1400, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value368 value1 value2 = (output1401, value615, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value365 value1 value2 = (output700, value368, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value368 value1 value2 = (output1401, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value365 value1 value2 = (output1402, value615, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value365 value1 value2 = (output695, value365, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value365 value1 value2 = (output1402, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value365 value1 value2 = (output1403, value615, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value361 value1 value2 = (output694, value365, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value365 value1 value2 = (output1403, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value361 value1 value2 = (output1404, value615, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child1403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output1403_skip]
  kernel_rfl

theorem node1405_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value360 value1 value2 = (output687, value361, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value361 value1 value2 = (output1404, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value360 value1 value2 = (output1405, value615, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child1404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output1404_skip]
  kernel_rfl

theorem node1406_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value359 value1 value2 = (output686, value360, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value360 value1 value2 = (output1405, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value359 value1 value2 = (output1406, value615, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value358 value1 value2 = (output685, value359, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value359 value1 value2 = (output1406, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value358 value1 value2 = (output1407, value615, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value357 value1 value2 = (output684, value358, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value358 value1 value2 = (output1407, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value357 value1 value2 = (output1408, value615, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value356 value1 value2 = (output683, value357, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value357 value1 value2 = (output1408, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value356 value1 value2 = (output1409, value615, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  try dsimp only
  rw [child1408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child682 : Flapjack.WordAlloc.removeDeadStructural input682 value354 value1 value2 = (output682, value356, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value356 value1 value2 = (output1409, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value354 value1 value2 = (output1410, value615, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child682]
  try dsimp only
  rw [child1409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output682_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value353 value1 value2 = (output679, value354, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value354 value1 value2 = (output1410, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value353 value1 value2 = (output1411, value615, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child1410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value351 value1 value2 = (output678, value353, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value353 value1 value2 = (output1411, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value351 value1 value2 = (output1412, value615, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value350 value1 value2 = (output675, value351, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value351 value1 value2 = (output1412, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value350 value1 value2 = (output1413, value615, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value348 value1 value2 = (output674, value350, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value350 value1 value2 = (output1413, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value348 value1 value2 = (output1414, value615, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value347 value1 value2 = (output671, value348, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value348 value1 value2 = (output1414, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value347 value1 value2 = (output1415, value615, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child671]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output671_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value345 value1 value2 = (output670, value347, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value347 value1 value2 = (output1415, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value345 value1 value2 = (output1416, value615, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value340 value1 value2 = (output667, value345, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value345 value1 value2 = (output1416, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value340 value1 value2 = (output1417, value615, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value339 value1 value2 = (output658, value340, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value340 value1 value2 = (output1417, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value339 value1 value2 = (output1418, value615, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child1417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output1417_skip]
  kernel_rfl

theorem node1419_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value338 value1 value2 = (output657, value339, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value339 value1 value2 = (output1418, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value338 value1 value2 = (output1419, value615, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value337 value1 value2 = (output656, value338, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value338 value1 value2 = (output1419, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value337 value1 value2 = (output1420, value615, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value336 value1 value2 = (output655, value337, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value337 value1 value2 = (output1420, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value336 value1 value2 = (output1421, value615, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child1420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output1420_skip]
  kernel_rfl

theorem node1422_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value335 value1 value2 = (output654, value336, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value336 value1 value2 = (output1421, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value335 value1 value2 = (output1422, value615, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child1421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output1421_skip]
  kernel_rfl

theorem node1423_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value333 value1 value2 = (output653, value335, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value335 value1 value2 = (output1422, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value333 value1 value2 = (output1423, value615, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value332 value1 value2 = (output650, value333, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value333 value1 value2 = (output1423, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value332 value1 value2 = (output1424, value615, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value330 value1 value2 = (output649, value332, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value332 value1 value2 = (output1424, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value330 value1 value2 = (output1425, value615, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child1424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value329 value1 value2 = (output646, value330, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value330 value1 value2 = (output1425, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value329 value1 value2 = (output1426, value615, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value327 value1 value2 = (output645, value329, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value329 value1 value2 = (output1426, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value327 value1 value2 = (output1427, value615, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value326 value1 value2 = (output642, value327, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value327 value1 value2 = (output1427, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value326 value1 value2 = (output1428, value615, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value324 value1 value2 = (output641, value326, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value326 value1 value2 = (output1428, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value324 value1 value2 = (output1429, value615, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value324 value1 value2 = (output638, value324, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value324 value1 value2 = (output1429, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value324 value1 value2 = (output1430, value615, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value320 value1 value2 = (output637, value324, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value324 value1 value2 = (output1430, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value320 value1 value2 = (output1431, value615, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value320 value1 value2 = (output630, value320, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value320 value1 value2 = (output1431, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value320 value1 value2 = (output1432, value615, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value316 value1 value2 = (output629, value320, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value320 value1 value2 = (output1432, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value316 value1 value2 = (output1433, value615, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1432_skip]
  kernel_rfl

theorem node1434_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value315 value1 value2 = (output622, value316, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value316 value1 value2 = (output1433, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value315 value1 value2 = (output1434, value615, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq
    (child621 : Flapjack.WordAlloc.removeDeadStructural input621 value314 value1 value2 = (output621, value315, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value315 value1 value2 = (output1434, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value314 value1 value2 = (output1435, value615, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child621]
  try dsimp only
  rw [child1434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output621_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value5 value1 value2 = (output620, value314, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value314 value1 value2 = (output1435, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value5 value1 value2 = (output1436, value615, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child1435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output1435_skip]
  kernel_rfl

theorem node1437_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value309 value1 value2 = (output617, value5, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value5 value1 value2 = (output1436, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value309 value1 value2 = (output1437, value615, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value309 value1 value2 = (output610, value309, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value309 value1 value2 = (output1437, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value309 value1 value2 = (output1438, value615, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value308 value1 value2 = (output609, value309, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value309 value1 value2 = (output1438, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value308 value1 value2 = (output1439, value615, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value5 value1 value2 = (output608, value308, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value308 value1 value2 = (output1439, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value5 value1 value2 = (output1440, value615, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child1439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value302 value1 value2 = (output605, value5, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value5 value1 value2 = (output1440, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value302 value1 value2 = (output1441, value615, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value302 value1 value2 = (output596, value302, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value302 value1 value2 = (output1441, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value302 value1 value2 = (output1442, value615, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value301 value1 value2 = (output595, value302, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value302 value1 value2 = (output1442, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value301 value1 value2 = (output1443, value615, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value5 value1 value2 = (output594, value301, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value301 value1 value2 = (output1443, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value5 value1 value2 = (output1444, value615, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value295 value1 value2 = (output591, value5, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value5 value1 value2 = (output1444, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value295 value1 value2 = (output1445, value615, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value295 value1 value2 = (output582, value295, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value295 value1 value2 = (output1445, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value295 value1 value2 = (output1446, value615, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value294 value1 value2 = (output581, value295, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value295 value1 value2 = (output1446, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value294 value1 value2 = (output1447, value615, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value5 value1 value2 = (output580, value294, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value294 value1 value2 = (output1447, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value5 value1 value2 = (output1448, value615, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value288 value1 value2 = (output577, value5, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value5 value1 value2 = (output1448, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value288 value1 value2 = (output1449, value615, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child1448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output1448_skip]
  kernel_rfl

theorem node1450_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value288 value1 value2 = (output568, value288, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value288 value1 value2 = (output1449, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value288 value1 value2 = (output1450, value615, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value287 value1 value2 = (output567, value288, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value288 value1 value2 = (output1450, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value287 value1 value2 = (output1451, value615, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child1450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output1450_skip]
  kernel_rfl

theorem node1452_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value5 value1 value2 = (output566, value287, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value287 value1 value2 = (output1451, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value5 value1 value2 = (output1452, value615, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value281 value1 value2 = (output563, value5, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value5 value1 value2 = (output1452, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value281 value1 value2 = (output1453, value615, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child1452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output1452_skip]
  kernel_rfl

theorem node1454_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value281 value1 value2 = (output554, value281, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value281 value1 value2 = (output1453, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value281 value1 value2 = (output1454, value615, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1453_skip]
  kernel_rfl

theorem node1455_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value280 value1 value2 = (output553, value281, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value281 value1 value2 = (output1454, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value280 value1 value2 = (output1455, value615, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child1454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output1454_skip]
  kernel_rfl

theorem node1456_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value5 value1 value2 = (output552, value280, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value280 value1 value2 = (output1455, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value5 value1 value2 = (output1456, value615, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value274 value1 value2 = (output549, value5, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value5 value1 value2 = (output1456, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value274 value1 value2 = (output1457, value615, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value274 value1 value2 = (output540, value274, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value274 value1 value2 = (output1457, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value274 value1 value2 = (output1458, value615, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value273 value1 value2 = (output539, value274, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value274 value1 value2 = (output1458, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value273 value1 value2 = (output1459, value615, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value5 value1 value2 = (output538, value273, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value273 value1 value2 = (output1459, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value5 value1 value2 = (output1460, value615, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1459_skip]
  kernel_rfl

theorem node1461_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value267 value1 value2 = (output535, value5, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value5 value1 value2 = (output1460, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value267 value1 value2 = (output1461, value615, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child1460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value267 value1 value2 = (output526, value267, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value267 value1 value2 = (output1461, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value267 value1 value2 = (output1462, value615, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1461_skip]
  kernel_rfl

theorem node1463_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value266 value1 value2 = (output525, value267, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value267 value1 value2 = (output1462, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value266 value1 value2 = (output1463, value615, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child1462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output1462_skip]
  kernel_rfl

theorem node1464_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value5 value1 value2 = (output524, value266, value1))
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value266 value1 value2 = (output1463, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1464 value5 value1 value2 = (output1464, value615, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child1463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output1463_skip]
  kernel_rfl

theorem node1465_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value260 value1 value2 = (output521, value5, value1))
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value5 value1 value2 = (output1464, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1465 value260 value1 value2 = (output1465, value615, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child1464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output1464_skip]
  kernel_rfl

theorem node1466_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value260 value1 value2 = (output512, value260, value1))
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value260 value1 value2 = (output1465, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1466 value260 value1 value2 = (output1466, value615, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child1465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output1465_skip]
  kernel_rfl

theorem node1467_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value259 value1 value2 = (output511, value260, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value260 value1 value2 = (output1466, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value259 value1 value2 = (output1467, value615, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value5 value1 value2 = (output510, value259, value1))
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value259 value1 value2 = (output1467, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1468 value5 value1 value2 = (output1468, value615, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child1467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output1467_skip]
  kernel_rfl

theorem node1469_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value253 value1 value2 = (output507, value5, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value5 value1 value2 = (output1468, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value253 value1 value2 = (output1469, value615, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value253 value1 value2 = (output498, value253, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value253 value1 value2 = (output1469, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value253 value1 value2 = (output1470, value615, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child1469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output1469_skip]
  kernel_rfl

theorem node1471_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value252 value1 value2 = (output497, value253, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value253 value1 value2 = (output1470, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value252 value1 value2 = (output1471, value615, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child1470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output1470_skip]
  kernel_rfl

theorem node1472_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value5 value1 value2 = (output496, value252, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value252 value1 value2 = (output1471, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value5 value1 value2 = (output1472, value615, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child1471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value246 value1 value2 = (output493, value5, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value5 value1 value2 = (output1472, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value246 value1 value2 = (output1473, value615, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value246 value1 value2 = (output484, value246, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value246 value1 value2 = (output1473, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value246 value1 value2 = (output1474, value615, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child1473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value245 value1 value2 = (output483, value246, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value246 value1 value2 = (output1474, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value245 value1 value2 = (output1475, value615, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child1474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output1474_skip]
  kernel_rfl

theorem node1476_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value5 value1 value2 = (output482, value245, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value245 value1 value2 = (output1475, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value615, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value239 value1 value2 = (output479, value5, value1))
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1477 value239 value1 value2 = (output1477, value615, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child1476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output1476_skip]
  kernel_rfl

theorem node1478_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value239 value1 value2 = (output470, value239, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value239 value1 value2 = (output1477, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value239 value1 value2 = (output1478, value615, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child1477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output1477_skip]
  kernel_rfl

theorem node1479_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value238 value1 value2 = (output469, value239, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value239 value1 value2 = (output1478, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value238 value1 value2 = (output1479, value615, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child1478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output1478_skip]
  kernel_rfl

theorem node1480_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value5 value1 value2 = (output468, value238, value1))
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value238 value1 value2 = (output1479, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1480 value5 value1 value2 = (output1480, value615, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child1479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output1479_skip]
  kernel_rfl

theorem node1481_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value232 value1 value2 = (output465, value5, value1))
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value5 value1 value2 = (output1480, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1481 value232 value1 value2 = (output1481, value615, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child1480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output1480_skip]
  kernel_rfl

theorem node1482_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value232 value1 value2 = (output456, value232, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value232 value1 value2 = (output1481, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value232 value1 value2 = (output1482, value615, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child1481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output1481_skip]
  kernel_rfl

theorem node1483_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value232, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value232 value1 value2 = (output1482, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value231 value1 value2 = (output1483, value615, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child1482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output1482_skip]
  kernel_rfl

theorem node1484_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value5 value1 value2 = (output454, value231, value1))
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value231 value1 value2 = (output1483, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1484 value5 value1 value2 = (output1484, value615, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child1483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output1483_skip]
  kernel_rfl

theorem node1485_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value225 value1 value2 = (output451, value5, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value5 value1 value2 = (output1484, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value225 value1 value2 = (output1485, value615, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child1484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output1484_skip]
  kernel_rfl

theorem node1486_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value225 value1 value2 = (output442, value225, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value225 value1 value2 = (output1485, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value225 value1 value2 = (output1486, value615, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child1485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output1485_skip]
  kernel_rfl

theorem node1487_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value224 value1 value2 = (output441, value225, value1))
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value225 value1 value2 = (output1486, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1487 value224 value1 value2 = (output1487, value615, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child1486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output1486_skip]
  kernel_rfl

theorem node1488_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value5 value1 value2 = (output440, value224, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value224 value1 value2 = (output1487, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value5 value1 value2 = (output1488, value615, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child1487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output1487_skip]
  kernel_rfl

theorem node1489_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value218 value1 value2 = (output437, value5, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value5 value1 value2 = (output1488, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value218 value1 value2 = (output1489, value615, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child1488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value218 value1 value2 = (output428, value218, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value218 value1 value2 = (output1489, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value218 value1 value2 = (output1490, value615, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value217 value1 value2 = (output427, value218, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value218 value1 value2 = (output1490, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value217 value1 value2 = (output1491, value615, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child1490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value5 value1 value2 = (output426, value217, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value217 value1 value2 = (output1491, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value5 value1 value2 = (output1492, value615, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child1491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output1491_skip]
  kernel_rfl

theorem node1493_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value211 value1 value2 = (output423, value5, value1))
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value5 value1 value2 = (output1492, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1493 value211 value1 value2 = (output1493, value615, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child1492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output1492_skip]
  kernel_rfl

theorem node1494_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value211 value1 value2 = (output414, value211, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value211 value1 value2 = (output1493, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value211 value1 value2 = (output1494, value615, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child1493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value210 value1 value2 = (output413, value211, value1))
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value211 value1 value2 = (output1494, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1495 value210 value1 value2 = (output1495, value615, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child1494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output1494_skip]
  kernel_rfl

theorem node1496_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value5 value1 value2 = (output412, value210, value1))
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value210 value1 value2 = (output1495, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1496 value5 value1 value2 = (output1496, value615, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child1495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output1495_skip]
  kernel_rfl

theorem node1497_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value204 value1 value2 = (output409, value5, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value5 value1 value2 = (output1496, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value204 value1 value2 = (output1497, value615, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value204 value1 value2 = (output400, value204, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value204 value1 value2 = (output1497, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value204 value1 value2 = (output1498, value615, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value203 value1 value2 = (output399, value204, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value204 value1 value2 = (output1498, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value203 value1 value2 = (output1499, value615, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child1498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value5 value1 value2 = (output398, value203, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value203 value1 value2 = (output1499, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value5 value1 value2 = (output1500, value615, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value197 value1 value2 = (output395, value5, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value5 value1 value2 = (output1500, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value197 value1 value2 = (output1501, value615, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value197 value1 value2 = (output386, value197, value1))
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value197 value1 value2 = (output1501, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1502 value197 value1 value2 = (output1502, value615, value1) := by
  rw [input1502_def, output1502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child1501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output1501_skip]
  kernel_rfl

theorem node1503_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value196 value1 value2 = (output385, value197, value1))
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value197 value1 value2 = (output1502, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1503 value196 value1 value2 = (output1503, value615, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child1502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output1502_skip]
  kernel_rfl

theorem node1504_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value5 value1 value2 = (output384, value196, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value196 value1 value2 = (output1503, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value5 value1 value2 = (output1504, value615, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value190 value1 value2 = (output381, value5, value1))
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value5 value1 value2 = (output1504, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1505 value190 value1 value2 = (output1505, value615, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child1504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output1504_skip]
  kernel_rfl

theorem node1506_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value190 value1 value2 = (output372, value190, value1))
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value190 value1 value2 = (output1505, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1506 value190 value1 value2 = (output1506, value615, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child1505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output1505_skip]
  kernel_rfl

theorem node1507_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value189 value1 value2 = (output371, value190, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value190 value1 value2 = (output1506, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value189 value1 value2 = (output1507, value615, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value5 value1 value2 = (output370, value189, value1))
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value189 value1 value2 = (output1507, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1508 value5 value1 value2 = (output1508, value615, value1) := by
  rw [input1508_def, output1508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child1507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output1507_skip]
  kernel_rfl

theorem node1509_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value183 value1 value2 = (output367, value5, value1))
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value5 value1 value2 = (output1508, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1509 value183 value1 value2 = (output1509, value615, value1) := by
  rw [input1509_def, output1509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child1508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output1508_skip]
  kernel_rfl

theorem node1510_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value183 value1 value2 = (output358, value183, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value183 value1 value2 = (output1509, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value183 value1 value2 = (output1510, value615, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child1509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value182 value1 value2 = (output357, value183, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value183 value1 value2 = (output1510, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value182 value1 value2 = (output1511, value615, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value5 value1 value2 = (output356, value182, value1))
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value182 value1 value2 = (output1511, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1512 value5 value1 value2 = (output1512, value615, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child1511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output1511_skip]
  kernel_rfl

theorem node1513_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value176 value1 value2 = (output353, value5, value1))
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value5 value1 value2 = (output1512, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1513 value176 value1 value2 = (output1513, value615, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child1512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output1512_skip]
  kernel_rfl

theorem node1514_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value176 value1 value2 = (output344, value176, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value176 value1 value2 = (output1513, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value176 value1 value2 = (output1514, value615, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value176, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value176 value1 value2 = (output1514, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value175 value1 value2 = (output1515, value615, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child1514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value5 value1 value2 = (output342, value175, value1))
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value175 value1 value2 = (output1515, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1516 value5 value1 value2 = (output1516, value615, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child1515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output1515_skip]
  kernel_rfl

theorem node1517_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value169 value1 value2 = (output339, value5, value1))
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value5 value1 value2 = (output1516, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1517 value169 value1 value2 = (output1517, value615, value1) := by
  rw [input1517_def, output1517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child1516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output1516_skip]
  kernel_rfl

theorem node1518_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value169 value1 value2 = (output330, value169, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value169 value1 value2 = (output1517, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value169 value1 value2 = (output1518, value615, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value168 value1 value2 = (output329, value169, value1))
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value169 value1 value2 = (output1518, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1519 value168 value1 value2 = (output1519, value615, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child1518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output1518_skip]
  kernel_rfl

theorem node1520_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value5 value1 value2 = (output328, value168, value1))
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value168 value1 value2 = (output1519, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1520 value5 value1 value2 = (output1520, value615, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child1519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output1519_skip]
  kernel_rfl

theorem node1521_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value162 value1 value2 = (output325, value5, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value5 value1 value2 = (output1520, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value162 value1 value2 = (output1521, value615, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child1520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value162 value1 value2 = (output316, value162, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value162 value1 value2 = (output1521, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value162 value1 value2 = (output1522, value615, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child1521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value161 value1 value2 = (output315, value162, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value162 value1 value2 = (output1522, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value161 value1 value2 = (output1523, value615, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child1522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value5 value1 value2 = (output314, value161, value1))
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value161 value1 value2 = (output1523, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1524 value5 value1 value2 = (output1524, value615, value1) := by
  rw [input1524_def, output1524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child1523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output1523_skip]
  kernel_rfl

theorem node1525_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value155 value1 value2 = (output311, value5, value1))
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value5 value1 value2 = (output1524, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1525 value155 value1 value2 = (output1525, value615, value1) := by
  rw [input1525_def, output1525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child1524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output1524_skip]
  kernel_rfl

theorem node1526_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value155 value1 value2 = (output302, value155, value1))
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value155 value1 value2 = (output1525, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1526 value155 value1 value2 = (output1526, value615, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child1525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output1525_skip]
  kernel_rfl

theorem node1527_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value154 value1 value2 = (output301, value155, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value155 value1 value2 = (output1526, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value154 value1 value2 = (output1527, value615, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value5 value1 value2 = (output300, value154, value1))
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value154 value1 value2 = (output1527, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1528 value5 value1 value2 = (output1528, value615, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child1527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output1527_skip]
  kernel_rfl

theorem node1529_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value148 value1 value2 = (output297, value5, value1))
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value5 value1 value2 = (output1528, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1529 value148 value1 value2 = (output1529, value615, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child1528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output1528_skip]
  kernel_rfl

theorem node1530_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value148 value1 value2 = (output288, value148, value1))
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value148 value1 value2 = (output1529, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1530 value148 value1 value2 = (output1530, value615, value1) := by
  rw [input1530_def, output1530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child1529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output1529_skip]
  kernel_rfl

theorem node1531_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value147 value1 value2 = (output287, value148, value1))
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value148 value1 value2 = (output1530, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1531 value147 value1 value2 = (output1531, value615, value1) := by
  rw [input1531_def, output1531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child1530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output1530_skip]
  kernel_rfl

theorem node1532_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value5 value1 value2 = (output286, value147, value1))
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value147 value1 value2 = (output1531, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1532 value5 value1 value2 = (output1532, value615, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child1531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output1531_skip]
  kernel_rfl

theorem node1533_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value141 value1 value2 = (output283, value5, value1))
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value5 value1 value2 = (output1532, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1533 value141 value1 value2 = (output1533, value615, value1) := by
  rw [input1533_def, output1533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child1532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output1532_skip]
  kernel_rfl

theorem node1534_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value141 value1 value2 = (output274, value141, value1))
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value141 value1 value2 = (output1533, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1534 value141 value1 value2 = (output1534, value615, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child1533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output1533_skip]
  kernel_rfl

theorem node1535_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value140 value1 value2 = (output273, value141, value1))
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value141 value1 value2 = (output1534, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1535 value140 value1 value2 = (output1535, value615, value1) := by
  rw [input1535_def, output1535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child1534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output1534_skip]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages664.Parallel
