import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel875.Data2
import InitECandidate.Proofs.WordStages.Parallel875.Data3
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk005
import InitECandidate.Proofs.WordStages.Parallel875.AgreementsParallel.Chunk004

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel875.AgreementsParallel
theorem input1280_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1280 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3081 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1280_def]
  kernel_rfl

theorem output1280_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1280 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2256 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1280_def]
  kernel_rfl

theorem input1281_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1281 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3104 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1281_def]
  simp only [input1280_eq, input1279_eq]
  kernel_rfl

theorem output1281_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1281 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2270 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1281_def]
  simp only [output1280_eq, output1279_eq]
  kernel_rfl

theorem input1282_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1282 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3080 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1282_def]
  kernel_rfl

theorem output1282_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1282 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2255 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1282_def]
  kernel_rfl

theorem input1283_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1283 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3105 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1283_def]
  simp only [input1282_eq, input1281_eq]
  kernel_rfl

theorem output1283_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1283 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2271 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1283_def]
  simp only [output1282_eq, output1281_eq]
  kernel_rfl

theorem input1284_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1284 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3078 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1284_def]
  kernel_rfl

theorem output1284_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1284 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2253 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1284_def]
  kernel_rfl

theorem input1285_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1285 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3076 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1285_def]
  kernel_rfl

theorem output1285_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1285 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2251 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1285_def]
  kernel_rfl

theorem input1286_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1286 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3072 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1286_def]
  kernel_rfl

theorem output1286_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1286 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2247 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1286_def]
  kernel_rfl

theorem input1287_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1287 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3071 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1287_def]
  kernel_rfl

theorem output1287_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1287 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2246 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1287_def]
  kernel_rfl

theorem input1288_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1288 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3073 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1288_def]
  simp only [input1287_eq, input1286_eq]
  kernel_rfl

theorem output1288_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1288 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2248 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1288_def]
  simp only [output1287_eq, output1286_eq]
  kernel_rfl

theorem input1289_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1289 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3070 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1289_def]
  kernel_rfl

theorem output1289_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1289 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2245 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1289_def]
  kernel_rfl

theorem input1290_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1290 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3074 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1290_def]
  simp only [input1289_eq, input1288_eq]
  kernel_rfl

theorem output1290_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1290 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2249 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1290_def]
  simp only [output1289_eq, output1288_eq]
  kernel_rfl

theorem input1291_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1291 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1291_def]
  kernel_rfl

theorem output1291_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1291 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1291_def]
  kernel_rfl

theorem input1292_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1292 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3065 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1292_def]
  kernel_rfl

theorem output1292_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1292 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2240 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1292_def]
  kernel_rfl

theorem input1293_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1293 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3043 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1293_def]
  kernel_rfl

theorem output1293_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1293 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2227 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1293_def]
  kernel_rfl

theorem input1294_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1294 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3066 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1294_def]
  simp only [input1293_eq, input1292_eq]
  kernel_rfl

theorem output1294_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1294 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2241 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1294_def]
  simp only [output1293_eq, output1292_eq]
  kernel_rfl

theorem input1295_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1295 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3042 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1295_def]
  kernel_rfl

theorem output1295_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1295 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2226 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1295_def]
  kernel_rfl

theorem input1296_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1296 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3067 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1296_def]
  simp only [input1295_eq, input1294_eq]
  kernel_rfl

theorem output1296_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1296 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2242 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1296_def]
  simp only [output1295_eq, output1294_eq]
  kernel_rfl

theorem input1297_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1297 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3039 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1297_def]
  kernel_rfl

theorem output1297_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1297 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2223 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1297_def]
  kernel_rfl

theorem input1298_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1298 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3038 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1298_def]
  kernel_rfl

theorem output1298_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1298 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2222 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1298_def]
  kernel_rfl

theorem input1299_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1299 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3040 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1299_def]
  simp only [input1298_eq, input1297_eq]
  kernel_rfl

theorem output1299_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1299 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2224 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1299_def]
  simp only [output1298_eq, output1297_eq]
  kernel_rfl

theorem input1300_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1300 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3036 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1300_def]
  kernel_rfl

theorem output1300_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1300 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2220 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1300_def]
  kernel_rfl

theorem input1301_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1301 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1301_def]
  kernel_rfl

theorem output1301_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1301 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1301_def]
  kernel_rfl

theorem input1302_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1302 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3031 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1302_def]
  kernel_rfl

theorem output1302_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1302 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2215 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1302_def]
  kernel_rfl

theorem input1303_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1303 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3009 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1303_def]
  kernel_rfl

theorem output1303_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1303 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2202 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1303_def]
  kernel_rfl

theorem input1304_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1304 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3032 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1304_def]
  simp only [input1303_eq, input1302_eq]
  kernel_rfl

theorem output1304_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1304 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2216 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1304_def]
  simp only [output1303_eq, output1302_eq]
  kernel_rfl

theorem input1305_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1305 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3008 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1305_def]
  kernel_rfl

theorem output1305_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1305 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2201 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1305_def]
  kernel_rfl

theorem input1306_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1306 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3033 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1306_def]
  simp only [input1305_eq, input1304_eq]
  kernel_rfl

theorem output1306_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1306 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2217 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1306_def]
  simp only [output1305_eq, output1304_eq]
  kernel_rfl

theorem input1307_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1307 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3006 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1307_def]
  kernel_rfl

theorem output1307_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1307 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2199 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1307_def]
  kernel_rfl

theorem input1308_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1308 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3002 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1308_def]
  kernel_rfl

theorem output1308_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1308 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2195 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1308_def]
  kernel_rfl

theorem input1309_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1309 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3000 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1309_def]
  kernel_rfl

theorem output1309_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1309 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2193 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1309_def]
  kernel_rfl

theorem input1310_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1310 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2999 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1310_def]
  kernel_rfl

theorem output1310_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1310 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2192 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1310_def]
  kernel_rfl

theorem input1311_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1311 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3001 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1311_def]
  simp only [input1310_eq, input1309_eq]
  kernel_rfl

theorem output1311_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1311 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2194 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1311_def]
  simp only [output1310_eq, output1309_eq]
  kernel_rfl

theorem input1312_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1312 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3003 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1312_def]
  simp only [input1311_eq, input1308_eq]
  kernel_rfl

theorem output1312_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1312 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2196 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1312_def]
  simp only [output1311_eq, output1308_eq]
  kernel_rfl

theorem input1313_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1313 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2996 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1313_def]
  kernel_rfl

theorem output1313_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1313 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2189 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1313_def]
  kernel_rfl

theorem input1314_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1314 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2994 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1314_def]
  kernel_rfl

theorem output1314_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1314 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2187 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1314_def]
  kernel_rfl

theorem input1315_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1315 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2993 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1315_def]
  kernel_rfl

theorem output1315_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1315 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2186 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1315_def]
  kernel_rfl

theorem input1316_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1316 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2995 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1316_def]
  simp only [input1315_eq, input1314_eq]
  kernel_rfl

theorem output1316_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1316 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2188 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1316_def]
  simp only [output1315_eq, output1314_eq]
  kernel_rfl

theorem input1317_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1317 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2997 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1317_def]
  simp only [input1316_eq, input1313_eq]
  kernel_rfl

theorem output1317_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1317 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2190 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1317_def]
  simp only [output1316_eq, output1313_eq]
  kernel_rfl

theorem input1318_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1318 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2992 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1318_def]
  kernel_rfl

theorem output1318_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1318 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2185 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1318_def]
  kernel_rfl

theorem input1319_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1319 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2998 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1319_def]
  simp only [input1318_eq, input1317_eq]
  kernel_rfl

theorem output1319_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1319 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2191 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1319_def]
  simp only [output1318_eq, output1317_eq]
  kernel_rfl

theorem input1320_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1320 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_3004 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1320_def]
  simp only [input1319_eq, input1312_eq]
  kernel_rfl

theorem output1320_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1320 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2197 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1320_def]
  simp only [output1319_eq, output1312_eq]
  kernel_rfl

theorem input1321_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1321 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1321_def]
  kernel_rfl

theorem output1321_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1321 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1321_def]
  kernel_rfl

theorem input1322_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1322 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2987 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1322_def]
  kernel_rfl

theorem output1322_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1322 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2180 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1322_def]
  kernel_rfl

theorem input1323_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1323 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2965 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1323_def]
  kernel_rfl

theorem output1323_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1323 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2167 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1323_def]
  kernel_rfl

theorem input1324_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1324 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2988 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1324_def]
  simp only [input1323_eq, input1322_eq]
  kernel_rfl

theorem output1324_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1324 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2181 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1324_def]
  simp only [output1323_eq, output1322_eq]
  kernel_rfl

theorem input1325_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1325 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2964 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1325_def]
  kernel_rfl

theorem output1325_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1325 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2166 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1325_def]
  kernel_rfl

theorem input1326_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1326 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2989 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1326_def]
  simp only [input1325_eq, input1324_eq]
  kernel_rfl

theorem output1326_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1326 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2182 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1326_def]
  simp only [output1325_eq, output1324_eq]
  kernel_rfl

theorem input1327_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1327 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2962 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1327_def]
  kernel_rfl

theorem output1327_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1327 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2164 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1327_def]
  kernel_rfl

theorem input1328_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1328 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2959 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1328_def]
  kernel_rfl

theorem output1328_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1328 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2161 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1328_def]
  kernel_rfl

theorem input1329_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1329 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2958 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1329_def]
  kernel_rfl

theorem output1329_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1329 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2160 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1329_def]
  kernel_rfl

theorem input1330_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1330 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2960 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1330_def]
  simp only [input1329_eq, input1328_eq]
  kernel_rfl

theorem output1330_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1330 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2162 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1330_def]
  simp only [output1329_eq, output1328_eq]
  kernel_rfl

theorem input1331_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1331 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2956 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1331_def]
  kernel_rfl

theorem output1331_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1331 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2158 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1331_def]
  kernel_rfl

theorem input1332_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1332 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2954 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1332_def]
  kernel_rfl

theorem output1332_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1332 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2156 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1332_def]
  kernel_rfl

theorem input1333_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1333 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2951 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1333_def]
  kernel_rfl

theorem output1333_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1333 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2153 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1333_def]
  kernel_rfl

theorem input1334_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1334 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2950 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1334_def]
  kernel_rfl

theorem output1334_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1334 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2152 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1334_def]
  kernel_rfl

theorem input1335_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1335 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2952 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1335_def]
  simp only [input1334_eq, input1333_eq]
  kernel_rfl

theorem output1335_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1335 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2154 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1335_def]
  simp only [output1334_eq, output1333_eq]
  kernel_rfl

theorem input1336_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1336 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2947 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1336_def]
  kernel_rfl

theorem output1336_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1336 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2149 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1336_def]
  kernel_rfl

theorem input1337_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1337 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2946 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1337_def]
  kernel_rfl

theorem output1337_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1337 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2148 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1337_def]
  kernel_rfl

theorem input1338_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1338 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2948 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1338_def]
  simp only [input1337_eq, input1336_eq]
  kernel_rfl

theorem output1338_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1338 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2150 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1338_def]
  simp only [output1337_eq, output1336_eq]
  kernel_rfl

theorem input1339_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1339 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2944 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1339_def]
  kernel_rfl

theorem output1339_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1339 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2146 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1339_def]
  kernel_rfl

theorem input1340_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1340 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2942 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1340_def]
  kernel_rfl

theorem output1340_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1340 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2144 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1340_def]
  kernel_rfl

theorem input1341_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1341 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2939 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1341_def]
  kernel_rfl

theorem output1341_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1341 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2141 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1341_def]
  kernel_rfl

theorem input1342_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1342 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2938 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1342_def]
  kernel_rfl

theorem output1342_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1342 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2140 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1342_def]
  kernel_rfl

theorem input1343_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1343 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2940 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1343_def]
  simp only [input1342_eq, input1341_eq]
  kernel_rfl

theorem output1343_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1343 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2142 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1343_def]
  simp only [output1342_eq, output1341_eq]
  kernel_rfl

theorem input1344_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1344 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1344_def]
  kernel_rfl

theorem output1344_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1344 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1344_def]
  kernel_rfl

theorem input1345_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1345 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2933 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1345_def]
  kernel_rfl

theorem output1345_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1345 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2135 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1345_def]
  kernel_rfl

theorem input1346_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1346 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2911 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1346_def]
  kernel_rfl

theorem output1346_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1346 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2128 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1346_def]
  kernel_rfl

theorem input1347_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1347 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2934 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1347_def]
  simp only [input1346_eq, input1345_eq]
  kernel_rfl

theorem output1347_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1347 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2136 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1347_def]
  simp only [output1346_eq, output1345_eq]
  kernel_rfl

theorem input1348_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1348 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2910 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1348_def]
  kernel_rfl

theorem output1348_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1348 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2127 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1348_def]
  kernel_rfl

theorem input1349_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1349 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2935 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1349_def]
  simp only [input1348_eq, input1347_eq]
  kernel_rfl

theorem output1349_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1349 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2137 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1349_def]
  simp only [output1348_eq, output1347_eq]
  kernel_rfl

theorem input1350_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1350 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2908 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1350_def]
  kernel_rfl

theorem output1350_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1350 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2125 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1350_def]
  kernel_rfl

theorem input1351_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1351 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2906 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1351_def]
  kernel_rfl

theorem input1352_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1352 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2903 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1352_def]
  kernel_rfl

theorem output1352_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1352 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2122 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1352_def]
  kernel_rfl

theorem input1353_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1353 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2902 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1353_def]
  kernel_rfl

theorem output1353_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1353 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2121 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1353_def]
  kernel_rfl

theorem input1354_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1354 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2904 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1354_def]
  simp only [input1353_eq, input1352_eq]
  kernel_rfl

theorem output1354_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1354 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2123 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1354_def]
  simp only [output1353_eq, output1352_eq]
  kernel_rfl

theorem input1355_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1355 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2900 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1355_def]
  kernel_rfl

theorem output1355_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1355 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2119 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1355_def]
  kernel_rfl

theorem input1356_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1356 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2897 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1356_def]
  kernel_rfl

theorem output1356_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1356 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2116 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1356_def]
  kernel_rfl

theorem input1357_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1357 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2896 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1357_def]
  kernel_rfl

theorem output1357_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1357 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2115 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1357_def]
  kernel_rfl

theorem input1358_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1358 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2898 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1358_def]
  simp only [input1357_eq, input1356_eq]
  kernel_rfl

theorem output1358_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1358 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2117 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1358_def]
  simp only [output1357_eq, output1356_eq]
  kernel_rfl

theorem input1359_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1359 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2894 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1359_def]
  kernel_rfl

theorem output1359_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1359 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2113 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1359_def]
  kernel_rfl

theorem input1360_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1360 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2892 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1360_def]
  kernel_rfl

theorem input1361_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1361 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2889 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1361_def]
  kernel_rfl

theorem output1361_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1361 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2110 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1361_def]
  kernel_rfl

theorem input1362_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1362 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2888 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1362_def]
  kernel_rfl

theorem output1362_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1362 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2109 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1362_def]
  kernel_rfl

theorem input1363_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1363 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2890 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1363_def]
  simp only [input1362_eq, input1361_eq]
  kernel_rfl

theorem output1363_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1363 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2111 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1363_def]
  simp only [output1362_eq, output1361_eq]
  kernel_rfl

theorem input1364_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1364 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1364_def]
  kernel_rfl

theorem output1364_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1364 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1364_def]
  kernel_rfl

theorem input1365_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1365 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2790 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1365_def]
  kernel_rfl

theorem input1366_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1366 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2788 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1366_def]
  kernel_rfl

theorem input1367_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1367 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_5 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1367_def]
  kernel_rfl

theorem input1368_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1368 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2789 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1368_def]
  simp only [input1367_eq, input1366_eq]
  kernel_rfl

theorem input1369_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1369 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2791 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1369_def]
  simp only [input1368_eq, input1365_eq]
  kernel_rfl

theorem input1370_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1370 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2787 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1370_def]
  kernel_rfl

theorem output1370_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1370 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2024 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1370_def]
  kernel_rfl

theorem input1371_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1371 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2792 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1371_def]
  simp only [input1370_eq, input1369_eq]
  kernel_rfl

theorem output1371_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1371 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2024 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1371_def]
  simp only [output1370_eq]

theorem input1372_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1372 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2784 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1372_def]
  kernel_rfl

theorem output1372_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1372 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2021 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1372_def]
  kernel_rfl

theorem input1373_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1373 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2783 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1373_def]
  kernel_rfl

theorem output1373_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1373 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2020 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1373_def]
  kernel_rfl

theorem input1374_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1374 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2785 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1374_def]
  simp only [input1373_eq, input1372_eq]
  kernel_rfl

theorem output1374_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1374 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2022 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1374_def]
  simp only [output1373_eq, output1372_eq]
  kernel_rfl

theorem input1375_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1375 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2781 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1375_def]
  kernel_rfl

theorem output1375_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1375 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2018 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1375_def]
  kernel_rfl

theorem input1376_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1376 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2779 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1376_def]
  kernel_rfl

theorem input1377_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1377 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2776 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1377_def]
  kernel_rfl

theorem output1377_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1377 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2015 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1377_def]
  kernel_rfl

theorem input1378_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1378 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2775 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1378_def]
  kernel_rfl

theorem output1378_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1378 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2014 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1378_def]
  kernel_rfl

theorem input1379_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1379 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2777 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1379_def]
  simp only [input1378_eq, input1377_eq]
  kernel_rfl

theorem output1379_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1379 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2016 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1379_def]
  simp only [output1378_eq, output1377_eq]
  kernel_rfl

theorem input1380_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1380 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2772 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1380_def]
  kernel_rfl

theorem output1380_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1380 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2011 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1380_def]
  kernel_rfl

theorem input1381_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1381 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2771 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1381_def]
  kernel_rfl

theorem output1381_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1381 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2010 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1381_def]
  kernel_rfl

theorem input1382_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1382 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2773 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1382_def]
  simp only [input1381_eq, input1380_eq]
  kernel_rfl

theorem output1382_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1382 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2012 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1382_def]
  simp only [output1381_eq, output1380_eq]
  kernel_rfl

theorem input1383_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1383 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2769 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1383_def]
  kernel_rfl

theorem output1383_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1383 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2008 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1383_def]
  kernel_rfl

theorem input1384_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1384 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2766 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1384_def]
  kernel_rfl

theorem output1384_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1384 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2005 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1384_def]
  kernel_rfl

theorem input1385_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1385 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2765 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1385_def]
  kernel_rfl

theorem output1385_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1385 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2004 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1385_def]
  kernel_rfl

theorem input1386_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1386 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2767 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1386_def]
  simp only [input1385_eq, input1384_eq]
  kernel_rfl

theorem output1386_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1386 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2006 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1386_def]
  simp only [output1385_eq, output1384_eq]
  kernel_rfl

theorem input1387_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1387 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2762 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1387_def]
  kernel_rfl

theorem output1387_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1387 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2001 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1387_def]
  kernel_rfl

theorem input1388_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1388 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2761 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1388_def]
  kernel_rfl

theorem output1388_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1388 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2000 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1388_def]
  kernel_rfl

theorem input1389_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1389 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2763 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1389_def]
  simp only [input1388_eq, input1387_eq]
  kernel_rfl

theorem output1389_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1389 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2002 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1389_def]
  simp only [output1388_eq, output1387_eq]
  kernel_rfl

theorem input1390_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1390 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2758 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1390_def]
  kernel_rfl

theorem output1390_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1390 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1997 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1390_def]
  kernel_rfl

theorem input1391_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1391 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2757 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1391_def]
  kernel_rfl

theorem output1391_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1391 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1996 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1391_def]
  kernel_rfl

theorem input1392_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1392 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2759 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1392_def]
  simp only [input1391_eq, input1390_eq]
  kernel_rfl

theorem output1392_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1392 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1998 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1392_def]
  simp only [output1391_eq, output1390_eq]
  kernel_rfl

theorem input1393_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1393 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2755 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1393_def]
  kernel_rfl

theorem output1393_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1393 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1994 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1393_def]
  kernel_rfl

theorem input1394_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1394 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2752 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1394_def]
  kernel_rfl

theorem output1394_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1394 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1991 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1394_def]
  kernel_rfl

theorem input1395_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1395 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2751 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1395_def]
  kernel_rfl

theorem output1395_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1395 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1990 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1395_def]
  kernel_rfl

theorem input1396_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1396 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2753 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1396_def]
  simp only [input1395_eq, input1394_eq]
  kernel_rfl

theorem output1396_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1396 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1992 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1396_def]
  simp only [output1395_eq, output1394_eq]
  kernel_rfl

theorem input1397_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1397 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2748 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1397_def]
  kernel_rfl

theorem output1397_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1397 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1987 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1397_def]
  kernel_rfl

theorem input1398_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1398 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2747 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1398_def]
  kernel_rfl

theorem output1398_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1398 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1986 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1398_def]
  kernel_rfl

theorem input1399_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1399 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2749 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1399_def]
  simp only [input1398_eq, input1397_eq]
  kernel_rfl

theorem output1399_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1399 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1988 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1399_def]
  simp only [output1398_eq, output1397_eq]
  kernel_rfl

theorem input1400_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1400 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2744 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1400_def]
  kernel_rfl

theorem output1400_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1400 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1983 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1400_def]
  kernel_rfl

theorem input1401_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1401 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2743 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1401_def]
  kernel_rfl

theorem output1401_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1401 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1982 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1401_def]
  kernel_rfl

theorem input1402_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1402 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2745 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1402_def]
  simp only [input1401_eq, input1400_eq]
  kernel_rfl

theorem output1402_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1402 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1984 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1402_def]
  simp only [output1401_eq, output1400_eq]
  kernel_rfl

theorem input1403_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1403 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2741 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1403_def]
  kernel_rfl

theorem output1403_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1403 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1980 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1403_def]
  kernel_rfl

theorem input1404_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1404 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2739 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1404_def]
  kernel_rfl

theorem input1405_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1405 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2736 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1405_def]
  kernel_rfl

theorem output1405_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1405 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1977 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1405_def]
  kernel_rfl

theorem input1406_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1406 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2735 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1406_def]
  kernel_rfl

theorem output1406_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1406 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1976 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1406_def]
  kernel_rfl

theorem input1407_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1407 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2737 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1407_def]
  simp only [input1406_eq, input1405_eq]
  kernel_rfl

theorem output1407_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1407 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1978 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1407_def]
  simp only [output1406_eq, output1405_eq]
  kernel_rfl

theorem input1408_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1408 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2732 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1408_def]
  kernel_rfl

theorem output1408_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1408 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1973 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1408_def]
  kernel_rfl

theorem input1409_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1409 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2731 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1409_def]
  kernel_rfl

theorem output1409_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1409 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1972 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1409_def]
  kernel_rfl

theorem input1410_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1410 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2733 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1410_def]
  simp only [input1409_eq, input1408_eq]
  kernel_rfl

theorem output1410_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1410 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1974 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1410_def]
  simp only [output1409_eq, output1408_eq]
  kernel_rfl

theorem input1411_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1411 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2729 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1411_def]
  kernel_rfl

theorem output1411_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1411 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1970 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1411_def]
  kernel_rfl

theorem input1412_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1412 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2727 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1412_def]
  kernel_rfl

theorem output1412_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1412 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1968 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1412_def]
  kernel_rfl

theorem input1413_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1413 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2724 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1413_def]
  kernel_rfl

theorem output1413_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1413 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1965 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1413_def]
  kernel_rfl

theorem input1414_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1414 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2723 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1414_def]
  kernel_rfl

theorem output1414_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1414 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1964 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1414_def]
  kernel_rfl

theorem input1415_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1415 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2725 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1415_def]
  simp only [input1414_eq, input1413_eq]
  kernel_rfl

theorem output1415_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1415 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1966 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1415_def]
  simp only [output1414_eq, output1413_eq]
  kernel_rfl

theorem input1416_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1416 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2720 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1416_def]
  kernel_rfl

theorem output1416_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1416 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1961 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1416_def]
  kernel_rfl

theorem input1417_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1417 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2719 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1417_def]
  kernel_rfl

theorem output1417_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1417 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1960 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1417_def]
  kernel_rfl

theorem input1418_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1418 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2721 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1418_def]
  simp only [input1417_eq, input1416_eq]
  kernel_rfl

theorem output1418_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1418 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1962 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1418_def]
  simp only [output1417_eq, output1416_eq]
  kernel_rfl

theorem input1419_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1419 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2717 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1419_def]
  kernel_rfl

theorem output1419_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1419 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1958 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1419_def]
  kernel_rfl

theorem input1420_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1420 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2715 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1420_def]
  kernel_rfl

theorem output1420_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1420 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1956 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1420_def]
  kernel_rfl

theorem input1421_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1421 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2712 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1421_def]
  kernel_rfl

theorem output1421_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1421 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1953 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1421_def]
  kernel_rfl

theorem input1422_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1422 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2711 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1422_def]
  kernel_rfl

theorem output1422_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1422 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1952 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1422_def]
  kernel_rfl

theorem input1423_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1423 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2713 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1423_def]
  simp only [input1422_eq, input1421_eq]
  kernel_rfl

theorem output1423_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1423 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1954 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1423_def]
  simp only [output1422_eq, output1421_eq]
  kernel_rfl

theorem input1424_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1424 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1424_def]
  kernel_rfl

theorem output1424_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1424 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1424_def]
  kernel_rfl

theorem input1425_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1425 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2706 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1425_def]
  kernel_rfl

theorem output1425_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1425 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1947 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1425_def]
  kernel_rfl

theorem input1426_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1426 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2684 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1426_def]
  kernel_rfl

theorem output1426_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1426 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1940 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1426_def]
  kernel_rfl

theorem input1427_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1427 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2707 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1427_def]
  simp only [input1426_eq, input1425_eq]
  kernel_rfl

theorem output1427_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1427 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1948 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1427_def]
  simp only [output1426_eq, output1425_eq]
  kernel_rfl

theorem input1428_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1428 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2683 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1428_def]
  kernel_rfl

theorem output1428_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1428 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1939 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1428_def]
  kernel_rfl

theorem input1429_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1429 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2708 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1429_def]
  simp only [input1428_eq, input1427_eq]
  kernel_rfl

theorem output1429_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1429 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1949 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1429_def]
  simp only [output1428_eq, output1427_eq]
  kernel_rfl

theorem input1430_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1430 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2681 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1430_def]
  kernel_rfl

theorem output1430_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1430 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1937 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1430_def]
  kernel_rfl

theorem input1431_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1431 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2678 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1431_def]
  kernel_rfl

theorem output1431_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1431 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1934 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1431_def]
  kernel_rfl

theorem input1432_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1432 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2676 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1432_def]
  kernel_rfl

theorem output1432_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1432 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1932 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1432_def]
  kernel_rfl

theorem input1433_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1433 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2675 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1433_def]
  kernel_rfl

theorem output1433_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1433 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1931 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1433_def]
  kernel_rfl

theorem input1434_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1434 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2677 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1434_def]
  simp only [input1433_eq, input1432_eq]
  kernel_rfl

theorem output1434_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1434 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1933 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1434_def]
  simp only [output1433_eq, output1432_eq]
  kernel_rfl

theorem input1435_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1435 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2679 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1435_def]
  simp only [input1434_eq, input1431_eq]
  kernel_rfl

theorem output1435_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1435 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1935 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1435_def]
  simp only [output1434_eq, output1431_eq]
  kernel_rfl

theorem input1436_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1436 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2673 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1436_def]
  kernel_rfl

theorem output1436_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1436 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1929 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1436_def]
  kernel_rfl

theorem input1437_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1437 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1437_def]
  kernel_rfl

theorem output1437_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1437 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1437_def]
  kernel_rfl

theorem input1438_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1438 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2668 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1438_def]
  kernel_rfl

theorem output1438_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1438 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1924 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1438_def]
  kernel_rfl

theorem input1439_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1439 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2646 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1439_def]
  kernel_rfl

theorem output1439_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1439 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1911 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1439_def]
  kernel_rfl

theorem input1440_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1440 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2669 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1440_def]
  simp only [input1439_eq, input1438_eq]
  kernel_rfl

theorem output1440_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1440 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1925 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1440_def]
  simp only [output1439_eq, output1438_eq]
  kernel_rfl

theorem input1441_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1441 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2645 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1441_def]
  kernel_rfl

theorem output1441_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1441 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1910 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1441_def]
  kernel_rfl

theorem input1442_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1442 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2670 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1442_def]
  simp only [input1441_eq, input1440_eq]
  kernel_rfl

theorem output1442_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1442 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1926 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1442_def]
  simp only [output1441_eq, output1440_eq]
  kernel_rfl

theorem input1443_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1443 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2643 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1443_def]
  kernel_rfl

theorem output1443_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1443 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1908 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1443_def]
  kernel_rfl

theorem input1444_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1444 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2641 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1444_def]
  kernel_rfl

theorem input1445_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1445 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2639 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1445_def]
  kernel_rfl

theorem input1446_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1446 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1446_def]
  kernel_rfl

theorem output1446_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1446 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1446_def]
  kernel_rfl

theorem input1447_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1447 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2634 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1447_def]
  kernel_rfl

theorem output1447_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1447 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1903 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1447_def]
  kernel_rfl

theorem input1448_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1448 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2612 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1448_def]
  kernel_rfl

theorem output1448_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1448 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1890 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1448_def]
  kernel_rfl

theorem input1449_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1449 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2635 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1449_def]
  simp only [input1448_eq, input1447_eq]
  kernel_rfl

theorem output1449_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1449 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1904 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1449_def]
  simp only [output1448_eq, output1447_eq]
  kernel_rfl

theorem input1450_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1450 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2611 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1450_def]
  kernel_rfl

theorem output1450_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1450 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1889 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1450_def]
  kernel_rfl

theorem input1451_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1451 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2636 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1451_def]
  simp only [input1450_eq, input1449_eq]
  kernel_rfl

theorem output1451_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1451 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1905 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1451_def]
  simp only [output1450_eq, output1449_eq]
  kernel_rfl

theorem input1452_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1452 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2609 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1452_def]
  kernel_rfl

theorem output1452_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1452 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1887 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1452_def]
  kernel_rfl

theorem input1453_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1453 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2607 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1453_def]
  kernel_rfl

theorem input1454_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1454 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1454_def]
  kernel_rfl

theorem output1454_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1454 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1454_def]
  kernel_rfl

theorem input1455_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1455 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2605 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1455_def]
  kernel_rfl

theorem input1456_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1456 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2606 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1456_def]
  simp only [input1455_eq, input1454_eq]
  kernel_rfl

theorem output1456_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1456 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1456_def]
  simp only [output1454_eq]

theorem input1457_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1457 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2608 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1457_def]
  simp only [input1456_eq, input1453_eq]
  kernel_rfl

theorem output1457_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1457 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1457_def]
  simp only [output1456_eq]

theorem input1458_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1458 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2610 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1458_def]
  simp only [input1457_eq, input1452_eq]
  kernel_rfl

theorem output1458_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1458 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1888 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1458_def]
  simp only [output1457_eq, output1452_eq]
  kernel_rfl

theorem input1459_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1459 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2637 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1459_def]
  simp only [input1458_eq, input1451_eq]
  kernel_rfl

theorem output1459_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1459 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1906 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1459_def]
  simp only [output1458_eq, output1451_eq]
  kernel_rfl

theorem input1460_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1460 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2638 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1460_def]
  simp only [input1459_eq, input1446_eq]
  kernel_rfl

theorem output1460_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1460 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1907 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1460_def]
  simp only [output1459_eq, output1446_eq]
  kernel_rfl

theorem input1461_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1461 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2640 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1461_def]
  simp only [input1460_eq, input1445_eq]
  kernel_rfl

theorem output1461_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1461 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1907 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1461_def]
  simp only [output1460_eq]

theorem input1462_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1462 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2642 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1462_def]
  simp only [input1461_eq, input1444_eq]
  kernel_rfl

theorem output1462_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1462 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1907 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1462_def]
  simp only [output1461_eq]

theorem input1463_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1463 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2644 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1463_def]
  simp only [input1462_eq, input1443_eq]
  kernel_rfl

theorem output1463_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1463 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1909 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1463_def]
  simp only [output1462_eq, output1443_eq]
  kernel_rfl

theorem input1464_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1464 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2671 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1464_def]
  simp only [input1463_eq, input1442_eq]
  kernel_rfl

theorem output1464_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1464 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1927 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1464_def]
  simp only [output1463_eq, output1442_eq]
  kernel_rfl

theorem input1465_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1465 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2672 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1465_def]
  simp only [input1464_eq, input1437_eq]
  kernel_rfl

theorem output1465_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1465 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1928 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1465_def]
  simp only [output1464_eq, output1437_eq]
  kernel_rfl

theorem input1466_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1466 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2674 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1466_def]
  simp only [input1465_eq, input1436_eq]
  kernel_rfl

theorem output1466_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1466 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1930 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1466_def]
  simp only [output1465_eq, output1436_eq]
  kernel_rfl

theorem input1467_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1467 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2680 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1467_def]
  simp only [input1466_eq, input1435_eq]
  kernel_rfl

theorem output1467_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1467 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1936 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1467_def]
  simp only [output1466_eq, output1435_eq]
  kernel_rfl

theorem input1468_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1468 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2682 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1468_def]
  simp only [input1467_eq, input1430_eq]
  kernel_rfl

theorem output1468_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1468 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1938 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1468_def]
  simp only [output1467_eq, output1430_eq]
  kernel_rfl

theorem input1469_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1469 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2709 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1469_def]
  simp only [input1468_eq, input1429_eq]
  kernel_rfl

theorem output1469_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1469 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1950 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1469_def]
  simp only [output1468_eq, output1429_eq]
  kernel_rfl

theorem input1470_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1470 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2710 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1470_def]
  simp only [input1469_eq, input1424_eq]
  kernel_rfl

theorem output1470_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1470 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1951 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1470_def]
  simp only [output1469_eq, output1424_eq]
  kernel_rfl

theorem input1471_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1471 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2714 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1471_def]
  simp only [input1470_eq, input1423_eq]
  kernel_rfl

theorem output1471_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1471 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1955 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1471_def]
  simp only [output1470_eq, output1423_eq]
  kernel_rfl

theorem input1472_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1472 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2716 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1472_def]
  simp only [input1471_eq, input1420_eq]
  kernel_rfl

theorem output1472_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1472 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1957 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1472_def]
  simp only [output1471_eq, output1420_eq]
  kernel_rfl

theorem input1473_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1473 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2718 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1473_def]
  simp only [input1472_eq, input1419_eq]
  kernel_rfl

theorem output1473_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1473 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1959 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1473_def]
  simp only [output1472_eq, output1419_eq]
  kernel_rfl

theorem input1474_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1474 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2722 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1474_def]
  simp only [input1473_eq, input1418_eq]
  kernel_rfl

theorem output1474_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1474 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1963 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1474_def]
  simp only [output1473_eq, output1418_eq]
  kernel_rfl

theorem input1475_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1475 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2726 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1475_def]
  simp only [input1474_eq, input1415_eq]
  kernel_rfl

theorem output1475_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1475 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1967 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1475_def]
  simp only [output1474_eq, output1415_eq]
  kernel_rfl

theorem input1476_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1476 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2728 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1476_def]
  simp only [input1475_eq, input1412_eq]
  kernel_rfl

theorem output1476_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1476 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1969 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1476_def]
  simp only [output1475_eq, output1412_eq]
  kernel_rfl

theorem input1477_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1477 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2730 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1477_def]
  simp only [input1476_eq, input1411_eq]
  kernel_rfl

theorem output1477_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1477 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1971 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1477_def]
  simp only [output1476_eq, output1411_eq]
  kernel_rfl

theorem input1478_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1478 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2734 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1478_def]
  simp only [input1477_eq, input1410_eq]
  kernel_rfl

theorem output1478_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1478 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1975 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1478_def]
  simp only [output1477_eq, output1410_eq]
  kernel_rfl

theorem input1479_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1479 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2738 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1479_def]
  simp only [input1478_eq, input1407_eq]
  kernel_rfl

theorem output1479_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1479 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1979 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1479_def]
  simp only [output1478_eq, output1407_eq]
  kernel_rfl

theorem input1480_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1480 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2740 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1480_def]
  simp only [input1479_eq, input1404_eq]
  kernel_rfl

theorem output1480_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1480 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1979 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1480_def]
  simp only [output1479_eq]

theorem input1481_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1481 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2742 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1481_def]
  simp only [input1480_eq, input1403_eq]
  kernel_rfl

theorem output1481_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1481 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1981 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1481_def]
  simp only [output1480_eq, output1403_eq]
  kernel_rfl

theorem input1482_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1482 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2746 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1482_def]
  simp only [input1481_eq, input1402_eq]
  kernel_rfl

theorem output1482_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1482 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1985 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1482_def]
  simp only [output1481_eq, output1402_eq]
  kernel_rfl

theorem input1483_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1483 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2750 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1483_def]
  simp only [input1482_eq, input1399_eq]
  kernel_rfl

theorem output1483_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1483 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1989 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1483_def]
  simp only [output1482_eq, output1399_eq]
  kernel_rfl

theorem input1484_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1484 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2754 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1484_def]
  simp only [input1483_eq, input1396_eq]
  kernel_rfl

theorem output1484_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1484 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1993 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1484_def]
  simp only [output1483_eq, output1396_eq]
  kernel_rfl

theorem input1485_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1485 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2756 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1485_def]
  simp only [input1484_eq, input1393_eq]
  kernel_rfl

theorem output1485_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1485 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1995 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1485_def]
  simp only [output1484_eq, output1393_eq]
  kernel_rfl

theorem input1486_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1486 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2760 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1486_def]
  simp only [input1485_eq, input1392_eq]
  kernel_rfl

theorem output1486_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1486 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_1999 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1486_def]
  simp only [output1485_eq, output1392_eq]
  kernel_rfl

theorem input1487_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1487 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2764 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1487_def]
  simp only [input1486_eq, input1389_eq]
  kernel_rfl

theorem output1487_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1487 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2003 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1487_def]
  simp only [output1486_eq, output1389_eq]
  kernel_rfl

theorem input1488_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1488 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2768 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1488_def]
  simp only [input1487_eq, input1386_eq]
  kernel_rfl

theorem output1488_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1488 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2007 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1488_def]
  simp only [output1487_eq, output1386_eq]
  kernel_rfl

theorem input1489_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1489 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2770 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1489_def]
  simp only [input1488_eq, input1383_eq]
  kernel_rfl

theorem output1489_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1489 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2009 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1489_def]
  simp only [output1488_eq, output1383_eq]
  kernel_rfl

theorem input1490_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1490 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2774 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1490_def]
  simp only [input1489_eq, input1382_eq]
  kernel_rfl

theorem output1490_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1490 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2013 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1490_def]
  simp only [output1489_eq, output1382_eq]
  kernel_rfl

theorem input1491_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1491 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2778 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1491_def]
  simp only [input1490_eq, input1379_eq]
  kernel_rfl

theorem output1491_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1491 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2017 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1491_def]
  simp only [output1490_eq, output1379_eq]
  kernel_rfl

theorem input1492_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1492 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2780 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1492_def]
  simp only [input1491_eq, input1376_eq]
  kernel_rfl

theorem output1492_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1492 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2017 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1492_def]
  simp only [output1491_eq]

theorem input1493_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1493 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2782 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1493_def]
  simp only [input1492_eq, input1375_eq]
  kernel_rfl

theorem output1493_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1493 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2019 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1493_def]
  simp only [output1492_eq, output1375_eq]
  kernel_rfl

theorem input1494_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1494 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2786 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1494_def]
  simp only [input1493_eq, input1374_eq]
  kernel_rfl

theorem output1494_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1494 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2023 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1494_def]
  simp only [output1493_eq, output1374_eq]
  kernel_rfl

theorem input1495_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1495 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2793 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1495_def]
  simp only [input1494_eq, input1371_eq]
  kernel_rfl

theorem output1495_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1495 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2025 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1495_def]
  simp only [output1494_eq, output1371_eq]
  kernel_rfl

theorem input1496_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1496 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2881 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1496_def]
  kernel_rfl

theorem input1497_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1497 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2879 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1497_def]
  kernel_rfl

theorem input1498_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1498 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_5 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1498_def]
  kernel_rfl

theorem input1499_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1499 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2880 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1499_def]
  simp only [input1498_eq, input1497_eq]
  kernel_rfl

theorem input1500_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1500 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2882 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1500_def]
  simp only [input1499_eq, input1496_eq]
  kernel_rfl

theorem input1501_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1501 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2878 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1501_def]
  kernel_rfl

theorem output1501_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1501 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2104 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1501_def]
  kernel_rfl

theorem input1502_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1502 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2883 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1502_def]
  simp only [input1501_eq, input1500_eq]
  kernel_rfl

theorem output1502_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1502 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2104 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1502_def]
  simp only [output1501_eq]

theorem input1503_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1503 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2875 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1503_def]
  kernel_rfl

theorem output1503_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1503 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2101 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1503_def]
  kernel_rfl

theorem input1504_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1504 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2874 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1504_def]
  kernel_rfl

theorem output1504_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1504 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2100 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1504_def]
  kernel_rfl

theorem input1505_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1505 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2876 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1505_def]
  simp only [input1504_eq, input1503_eq]
  kernel_rfl

theorem output1505_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1505 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2102 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1505_def]
  simp only [output1504_eq, output1503_eq]
  kernel_rfl

theorem input1506_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1506 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2872 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1506_def]
  kernel_rfl

theorem output1506_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1506 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2098 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1506_def]
  kernel_rfl

theorem input1507_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1507 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2869 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1507_def]
  kernel_rfl

theorem output1507_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1507 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2095 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1507_def]
  kernel_rfl

theorem input1508_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1508 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2868 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1508_def]
  kernel_rfl

theorem output1508_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1508 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2094 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1508_def]
  kernel_rfl

theorem input1509_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1509 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2870 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1509_def]
  simp only [input1508_eq, input1507_eq]
  kernel_rfl

theorem output1509_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1509 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2096 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1509_def]
  simp only [output1508_eq, output1507_eq]
  kernel_rfl

theorem input1510_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1510 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2865 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1510_def]
  kernel_rfl

theorem output1510_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1510 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2091 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1510_def]
  kernel_rfl

theorem input1511_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1511 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2864 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1511_def]
  kernel_rfl

theorem output1511_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1511 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2090 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1511_def]
  kernel_rfl

theorem input1512_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1512 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2866 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1512_def]
  simp only [input1511_eq, input1510_eq]
  kernel_rfl

theorem output1512_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1512 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2092 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1512_def]
  simp only [output1511_eq, output1510_eq]
  kernel_rfl

theorem input1513_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1513 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2861 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1513_def]
  kernel_rfl

theorem output1513_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1513 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2087 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1513_def]
  kernel_rfl

theorem input1514_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1514 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2860 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1514_def]
  kernel_rfl

theorem output1514_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1514 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2086 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1514_def]
  kernel_rfl

theorem input1515_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1515 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2862 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1515_def]
  simp only [input1514_eq, input1513_eq]
  kernel_rfl

theorem output1515_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1515 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2088 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1515_def]
  simp only [output1514_eq, output1513_eq]
  kernel_rfl

theorem input1516_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1516 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2858 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1516_def]
  kernel_rfl

theorem output1516_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1516 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2084 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1516_def]
  kernel_rfl

theorem input1517_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1517 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2856 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1517_def]
  kernel_rfl

theorem input1518_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1518 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2853 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1518_def]
  kernel_rfl

theorem output1518_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1518 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2081 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1518_def]
  kernel_rfl

theorem input1519_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1519 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2852 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1519_def]
  kernel_rfl

theorem output1519_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1519 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2080 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1519_def]
  kernel_rfl

theorem input1520_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1520 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2854 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1520_def]
  simp only [input1519_eq, input1518_eq]
  kernel_rfl

theorem output1520_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1520 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2082 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1520_def]
  simp only [output1519_eq, output1518_eq]
  kernel_rfl

theorem input1521_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1521 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2849 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1521_def]
  kernel_rfl

theorem output1521_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1521 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2077 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1521_def]
  kernel_rfl

theorem input1522_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1522 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2848 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1522_def]
  kernel_rfl

theorem output1522_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1522 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2076 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1522_def]
  kernel_rfl

theorem input1523_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1523 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2850 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1523_def]
  simp only [input1522_eq, input1521_eq]
  kernel_rfl

theorem output1523_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1523 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2078 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1523_def]
  simp only [output1522_eq, output1521_eq]
  kernel_rfl

theorem input1524_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1524 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2846 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1524_def]
  kernel_rfl

theorem output1524_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1524 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2074 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1524_def]
  kernel_rfl

theorem input1525_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1525 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2844 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1525_def]
  kernel_rfl

theorem output1525_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1525 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2072 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1525_def]
  kernel_rfl

theorem input1526_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1526 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2841 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1526_def]
  kernel_rfl

theorem output1526_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1526 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2069 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1526_def]
  kernel_rfl

theorem input1527_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1527 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2840 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1527_def]
  kernel_rfl

theorem output1527_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1527 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2068 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1527_def]
  kernel_rfl

theorem input1528_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1528 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2842 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1528_def]
  simp only [input1527_eq, input1526_eq]
  kernel_rfl

theorem output1528_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1528 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2070 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1528_def]
  simp only [output1527_eq, output1526_eq]
  kernel_rfl

theorem input1529_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1529 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2837 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1529_def]
  kernel_rfl

theorem output1529_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1529 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2065 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1529_def]
  kernel_rfl

theorem input1530_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1530 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2836 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1530_def]
  kernel_rfl

theorem output1530_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1530 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2064 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1530_def]
  kernel_rfl

theorem input1531_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1531 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2838 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1531_def]
  simp only [input1530_eq, input1529_eq]
  kernel_rfl

theorem output1531_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1531 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2066 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1531_def]
  simp only [output1530_eq, output1529_eq]
  kernel_rfl

theorem input1532_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1532 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2834 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1532_def]
  kernel_rfl

theorem output1532_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1532 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2062 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1532_def]
  kernel_rfl

theorem input1533_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1533 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2831 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1533_def]
  kernel_rfl

theorem output1533_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1533 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2059 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1533_def]
  kernel_rfl

theorem input1534_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1534 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2830 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1534_def]
  kernel_rfl

theorem output1534_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1534 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2058 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1534_def]
  kernel_rfl

theorem input1535_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1535 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2832 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1535_def]
  simp only [input1534_eq, input1533_eq]
  kernel_rfl

theorem output1535_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1535 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_2060 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1535_def]
  simp only [output1534_eq, output1533_eq]
  kernel_rfl

#print axioms output1535_eq
end InitECandidate.Proofs.WordStages.Parallel875.AgreementsParallel
