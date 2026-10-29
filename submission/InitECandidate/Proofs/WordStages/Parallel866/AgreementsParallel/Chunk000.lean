import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel866.Data2
import InitECandidate.Proofs.WordStages.Parallel866.Data3
import InitECandidate.Proofs.DeadStages866.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages866.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1595 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages866.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1300 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages866.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1594 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages866.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1299 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages866.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1596 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages866.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1301 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages866.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1592 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages866.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1297 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages866.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages866.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages866.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1587 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages866.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1292 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages866.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1565 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages866.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1285 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages866.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1588 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input7_def]
  simp only [input6_eq, input5_eq]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages866.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1293 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output7_def]
  simp only [output6_eq, output5_eq]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages866.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1564 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages866.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1284 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages866.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1589 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input9_def]
  simp only [input8_eq, input7_eq]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages866.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1294 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output9_def]
  simp only [output8_eq, output7_eq]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages866.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1562 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages866.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1282 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages866.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1559 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages866.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1279 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages866.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1558 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages866.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1278 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages866.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1560 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input13_def]
  simp only [input12_eq, input11_eq]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages866.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1280 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output13_def]
  simp only [output12_eq, output11_eq]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages866.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1555 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input14_def]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages866.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1275 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output14_def]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages866.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1554 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages866.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1274 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages866.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1556 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input16_def]
  simp only [input15_eq, input14_eq]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages866.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1276 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output16_def]
  simp only [output15_eq, output14_eq]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages866.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages866.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages866.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1549 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages866.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1269 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages866.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1527 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages866.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1262 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages866.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1550 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input20_def]
  simp only [input19_eq, input18_eq]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages866.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1270 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output20_def]
  simp only [output19_eq, output18_eq]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages866.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1526 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages866.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1261 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages866.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1551 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input22_def]
  simp only [input21_eq, input20_eq]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages866.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1271 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output22_def]
  simp only [output21_eq, output20_eq]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages866.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages866.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1259 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages866.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages866.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1257 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages866.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1520 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages866.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1255 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages866.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input26_def]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages866.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output26_def]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages866.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1515 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages866.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1250 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages866.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1489 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages866.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1233 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages866.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1516 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input29_def]
  simp only [input28_eq, input27_eq]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages866.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1251 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output29_def]
  simp only [output28_eq, output27_eq]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages866.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1488 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input30_def]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages866.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1232 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages866.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1517 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input31_def]
  simp only [input30_eq, input29_eq]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages866.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1252 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output31_def]
  simp only [output30_eq, output29_eq]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages866.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1485 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input32_def]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages866.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1229 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages866.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1484 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input33_def]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages866.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1228 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages866.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1486 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input34_def]
  simp only [input33_eq, input32_eq]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages866.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1230 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output34_def]
  simp only [output33_eq, output32_eq]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages866.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages866.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages866.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1479 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages866.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1223 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages866.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1457 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages866.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1216 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages866.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1480 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input38_def]
  simp only [input37_eq, input36_eq]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages866.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1224 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output38_def]
  simp only [output37_eq, output36_eq]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages866.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1456 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages866.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1215 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages866.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1481 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input40_def]
  simp only [input39_eq, input38_eq]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages866.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1225 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output40_def]
  simp only [output39_eq, output38_eq]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages866.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1454 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages866.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1213 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages866.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1452 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input42_def]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages866.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1211 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages866.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1449 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input43_def]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages866.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1208 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output43_def]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages866.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1447 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages866.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1206 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages866.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1445 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages866.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1204 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages866.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1444 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input46_def]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages866.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1203 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages866.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1446 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input47_def]
  simp only [input46_eq, input45_eq]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages866.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1205 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output47_def]
  simp only [output46_eq, output45_eq]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages866.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1448 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input48_def]
  simp only [input47_eq, input44_eq]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages866.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1207 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output48_def]
  simp only [output47_eq, output44_eq]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages866.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1450 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input49_def]
  simp only [input48_eq, input43_eq]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages866.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1209 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output49_def]
  simp only [output48_eq, output43_eq]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages866.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages866.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages866.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1438 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages866.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1197 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages866.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages866.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages866.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1412 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages866.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1410 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages866.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1408 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages866.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1406 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input56_def]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages866.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages866.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1407 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input58_def]
  simp only [input57_eq, input56_eq]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages866.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1409 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input59_def]
  simp only [input58_eq, input55_eq]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages866.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1411 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input60_def]
  simp only [input59_eq, input54_eq]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages866.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1413 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input61_def]
  simp only [input60_eq, input53_eq]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages866.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1405 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input62_def]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages866.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1186 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output62_def]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages866.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1414 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input63_def]
  simp only [input62_eq, input61_eq]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages866.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1186 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output63_def]
  simp only [output62_eq]

theorem input64_eq : InitECandidate.Proofs.DeadStages866.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1402 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input64_def]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages866.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1183 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output64_def]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages866.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1401 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages866.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1182 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages866.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1403 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input66_def]
  simp only [input65_eq, input64_eq]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages866.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1184 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output66_def]
  simp only [output65_eq, output64_eq]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages866.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1399 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages866.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1180 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages866.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1396 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages866.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1177 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages866.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1395 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages866.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1176 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages866.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1397 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input70_def]
  simp only [input69_eq, input68_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages866.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1178 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output70_def]
  simp only [output69_eq, output68_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages866.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1392 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages866.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1173 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages866.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1391 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages866.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1172 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages866.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1393 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input73_def]
  simp only [input72_eq, input71_eq]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages866.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1174 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output73_def]
  simp only [output72_eq, output71_eq]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages866.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1389 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages866.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1170 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages866.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1387 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages866.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1168 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages866.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1384 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input76_def]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages866.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1165 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output76_def]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages866.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1381 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages866.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1162 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages866.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1379 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages866.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1160 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages866.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1377 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages866.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1158 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages866.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1375 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages866.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1156 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages866.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1374 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages866.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1155 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages866.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1376 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input82_def]
  simp only [input81_eq, input80_eq]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages866.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1157 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output82_def]
  simp only [output81_eq, output80_eq]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages866.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1378 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input83_def]
  simp only [input82_eq, input79_eq]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages866.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1159 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output83_def]
  simp only [output82_eq, output79_eq]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages866.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1380 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input84_def]
  simp only [input83_eq, input78_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages866.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1161 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output84_def]
  simp only [output83_eq, output78_eq]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages866.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1382 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input85_def]
  simp only [input84_eq, input77_eq]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages866.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1163 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output85_def]
  simp only [output84_eq, output77_eq]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages866.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1372 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input86_def]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages866.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1153 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output86_def]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages866.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1371 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input87_def]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages866.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1152 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages866.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1373 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input88_def]
  simp only [input87_eq, input86_eq]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages866.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1154 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output88_def]
  simp only [output87_eq, output86_eq]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages866.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1383 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input89_def]
  simp only [input88_eq, input85_eq]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages866.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1164 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output89_def]
  simp only [output88_eq, output85_eq]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages866.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1385 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input90_def]
  simp only [input89_eq, input76_eq]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages866.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1166 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output90_def]
  simp only [output89_eq, output76_eq]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages866.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1368 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages866.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1149 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages866.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1367 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages866.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1148 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages866.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1369 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input93_def]
  simp only [input92_eq, input91_eq]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages866.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1150 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output93_def]
  simp only [output92_eq, output91_eq]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages866.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1365 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages866.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1146 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages866.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1363 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages866.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1144 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages866.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1359 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages866.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1140 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages866.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1357 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages866.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1138 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages866.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1355 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input98_def]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages866.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1136 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages866.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1353 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input99_def]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages866.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1134 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output99_def]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages866.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1352 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages866.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1133 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages866.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1354 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input101_def]
  simp only [input100_eq, input99_eq]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages866.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1135 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output101_def]
  simp only [output100_eq, output99_eq]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages866.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1356 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input102_def]
  simp only [input101_eq, input98_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages866.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1137 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output102_def]
  simp only [output101_eq, output98_eq]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages866.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1358 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input103_def]
  simp only [input102_eq, input97_eq]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages866.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1139 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output103_def]
  simp only [output102_eq, output97_eq]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages866.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1360 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input104_def]
  simp only [input103_eq, input96_eq]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages866.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1141 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output104_def]
  simp only [output103_eq, output96_eq]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages866.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1350 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages866.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1131 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages866.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1349 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input106_def]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages866.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1130 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages866.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1351 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input107_def]
  simp only [input106_eq, input105_eq]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages866.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1132 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output107_def]
  simp only [output106_eq, output105_eq]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages866.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1361 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input108_def]
  simp only [input107_eq, input104_eq]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages866.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1142 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output108_def]
  simp only [output107_eq, output104_eq]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages866.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages866.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages866.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1344 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages866.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1125 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages866.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1318 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input111_def]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages866.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1108 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages866.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1345 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input112_def]
  simp only [input111_eq, input110_eq]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages866.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1126 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output112_def]
  simp only [output111_eq, output110_eq]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages866.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1317 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages866.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1107 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages866.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1346 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input114_def]
  simp only [input113_eq, input112_eq]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages866.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1127 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output114_def]
  simp only [output113_eq, output112_eq]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages866.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1313 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages866.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1103 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages866.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1311 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages866.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1101 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages866.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1310 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages866.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1100 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages866.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1312 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input118_def]
  simp only [input117_eq, input116_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages866.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1102 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output118_def]
  simp only [output117_eq, output116_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages866.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1314 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input119_def]
  simp only [input118_eq, input115_eq]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages866.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1104 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output119_def]
  simp only [output118_eq, output115_eq]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages866.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1309 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input120_def]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages866.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1099 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages866.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1315 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input121_def]
  simp only [input120_eq, input119_eq]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages866.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1105 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output121_def]
  simp only [output120_eq, output119_eq]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages866.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1305 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages866.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1095 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages866.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1304 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages866.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1094 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages866.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1306 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input124_def]
  simp only [input123_eq, input122_eq]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages866.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1096 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output124_def]
  simp only [output123_eq, output122_eq]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages866.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1303 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages866.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1093 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages866.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1307 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input126_def]
  simp only [input125_eq, input124_eq]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages866.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1097 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output126_def]
  simp only [output125_eq, output124_eq]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages866.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1301 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input127_def]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages866.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1091 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages866.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1299 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input128_def]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages866.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1089 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages866.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1297 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages866.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input130_def]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages866.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages866.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1295 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages866.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1296 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input132_def]
  simp only [input131_eq, input130_eq]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages866.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output132_def]
  simp only [output130_eq]

theorem input133_eq : InitECandidate.Proofs.DeadStages866.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1298 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input133_def]
  simp only [input132_eq, input129_eq]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages866.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output133_def]
  simp only [output132_eq]

theorem input134_eq : InitECandidate.Proofs.DeadStages866.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1300 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input134_def]
  simp only [input133_eq, input128_eq]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages866.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1090 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output134_def]
  simp only [output133_eq, output128_eq]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages866.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1302 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input135_def]
  simp only [input134_eq, input127_eq]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages866.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1092 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output135_def]
  simp only [output134_eq, output127_eq]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages866.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1308 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input136_def]
  simp only [input135_eq, input126_eq]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages866.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1098 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output136_def]
  simp only [output135_eq, output126_eq]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages866.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1316 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input137_def]
  simp only [input136_eq, input121_eq]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages866.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1106 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output137_def]
  simp only [output136_eq, output121_eq]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages866.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1347 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input138_def]
  simp only [input137_eq, input114_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages866.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1128 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output138_def]
  simp only [output137_eq, output114_eq]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages866.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1348 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input139_def]
  simp only [input138_eq, input109_eq]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages866.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1129 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output139_def]
  simp only [output138_eq, output109_eq]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages866.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1362 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input140_def]
  simp only [input139_eq, input108_eq]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages866.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1143 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output140_def]
  simp only [output139_eq, output108_eq]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages866.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1364 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input141_def]
  simp only [input140_eq, input95_eq]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages866.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1145 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output141_def]
  simp only [output140_eq, output95_eq]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages866.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1366 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input142_def]
  simp only [input141_eq, input94_eq]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages866.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1147 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output142_def]
  simp only [output141_eq, output94_eq]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages866.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1370 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input143_def]
  simp only [input142_eq, input93_eq]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages866.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1151 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output143_def]
  simp only [output142_eq, output93_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages866.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1386 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input144_def]
  simp only [input143_eq, input90_eq]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages866.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1167 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output144_def]
  simp only [output143_eq, output90_eq]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages866.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1388 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input145_def]
  simp only [input144_eq, input75_eq]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages866.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1169 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output145_def]
  simp only [output144_eq, output75_eq]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages866.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1390 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input146_def]
  simp only [input145_eq, input74_eq]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages866.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1171 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output146_def]
  simp only [output145_eq, output74_eq]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages866.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1394 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input147_def]
  simp only [input146_eq, input73_eq]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages866.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1175 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output147_def]
  simp only [output146_eq, output73_eq]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages866.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1398 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input148_def]
  simp only [input147_eq, input70_eq]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages866.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1179 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output148_def]
  simp only [output147_eq, output70_eq]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages866.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1400 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input149_def]
  simp only [input148_eq, input67_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages866.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1181 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output149_def]
  simp only [output148_eq, output67_eq]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages866.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1404 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input150_def]
  simp only [input149_eq, input66_eq]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages866.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1185 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output150_def]
  simp only [output149_eq, output66_eq]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages866.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1415 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input151_def]
  simp only [input150_eq, input63_eq]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages866.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1187 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output151_def]
  simp only [output150_eq, output63_eq]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages866.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1431 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages866.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1429 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages866.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1427 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages866.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1425 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages866.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages866.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1426 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input157_def]
  simp only [input156_eq, input155_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages866.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1428 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input158_def]
  simp only [input157_eq, input154_eq]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages866.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1430 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input159_def]
  simp only [input158_eq, input153_eq]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages866.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1432 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input160_def]
  simp only [input159_eq, input152_eq]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages866.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1424 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages866.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1192 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages866.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1433 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input162_def]
  simp only [input161_eq, input160_eq]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages866.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1192 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output162_def]
  simp only [output161_eq]

theorem input163_eq : InitECandidate.Proofs.DeadStages866.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1421 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input163_def]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages866.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1189 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages866.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1420 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input164_def]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages866.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1188 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages866.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1422 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input165_def]
  simp only [input164_eq, input163_eq]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages866.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1190 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output165_def]
  simp only [output164_eq, output163_eq]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages866.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1418 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages866.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input167_def]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages866.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages866.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1416 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages866.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1417 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input169_def]
  simp only [input168_eq, input167_eq]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages866.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output169_def]
  simp only [output167_eq]

theorem input170_eq : InitECandidate.Proofs.DeadStages866.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1419 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input170_def]
  simp only [input169_eq, input166_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages866.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output170_def]
  simp only [output169_eq]

theorem input171_eq : InitECandidate.Proofs.DeadStages866.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1423 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input171_def]
  simp only [input170_eq, input165_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages866.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1191 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output171_def]
  simp only [output170_eq, output165_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages866.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1434 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input172_def]
  simp only [input171_eq, input162_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages866.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1193 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output172_def]
  simp only [output171_eq, output162_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages866.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1435 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input173_def]
  simp only [input151_eq, input172_eq]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages866.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1194 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output173_def]
  simp only [output151_eq, output172_eq]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages866.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1293 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input174_def]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages866.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1087 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages866.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1292 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages866.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1086 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages866.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1294 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input176_def]
  simp only [input175_eq, input174_eq]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages866.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1088 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output176_def]
  simp only [output175_eq, output174_eq]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages866.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1436 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input177_def]
  simp only [input176_eq, input173_eq]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages866.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1195 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output177_def]
  simp only [output176_eq, output173_eq]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages866.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1437 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input178_def]
  simp only [input177_eq, input52_eq]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages866.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1196 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output178_def]
  simp only [output177_eq, output52_eq]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages866.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1439 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input179_def]
  simp only [input178_eq, input51_eq]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages866.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1198 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output179_def]
  simp only [output178_eq, output51_eq]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages866.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1440 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input180_def]
  simp only [input179_eq]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages866.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1199 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output180_def]
  simp only [output179_eq]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages866.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1290 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages866.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1085 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages866.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages866.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1291 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input183_def]
  simp only [input182_eq, input181_eq]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages866.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1085 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output183_def]
  simp only [output181_eq]

theorem input184_eq : InitECandidate.Proofs.DeadStages866.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1441 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input184_def]
  simp only [input183_eq, input180_eq]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages866.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1200 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output184_def]
  simp only [output183_eq, output180_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages866.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages866.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages866.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1287 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input186_def]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages866.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1082 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages866.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1284 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages866.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1079 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages866.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1283 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages866.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1078 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages866.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1285 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input189_def]
  simp only [input188_eq, input187_eq]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages866.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1080 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output189_def]
  simp only [output188_eq, output187_eq]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages866.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1281 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages866.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1076 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages866.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1279 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages866.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1074 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages866.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1276 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages866.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1071 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages866.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1274 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages866.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1069 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages866.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1272 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages866.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1067 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages866.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1271 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages866.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1066 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages866.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1273 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input196_def]
  simp only [input195_eq, input194_eq]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages866.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1068 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output196_def]
  simp only [output195_eq, output194_eq]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages866.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1275 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input197_def]
  simp only [input196_eq, input193_eq]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages866.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1070 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output197_def]
  simp only [output196_eq, output193_eq]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages866.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1277 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input198_def]
  simp only [input197_eq, input192_eq]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages866.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1072 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output198_def]
  simp only [output197_eq, output192_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages866.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages866.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages866.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1266 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages866.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1061 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages866.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1244 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages866.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1048 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages866.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1267 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input202_def]
  simp only [input201_eq, input200_eq]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages866.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1062 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output202_def]
  simp only [output201_eq, output200_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages866.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1243 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages866.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1047 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages866.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1268 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input204_def]
  simp only [input203_eq, input202_eq]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages866.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1063 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output204_def]
  simp only [output203_eq, output202_eq]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages866.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1240 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages866.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1044 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages866.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1238 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages866.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1042 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages866.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1237 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input207_def]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages866.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1041 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages866.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1239 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input208_def]
  simp only [input207_eq, input206_eq]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages866.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1043 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output208_def]
  simp only [output207_eq, output206_eq]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages866.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1241 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input209_def]
  simp only [input208_eq, input205_eq]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages866.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1045 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output209_def]
  simp only [output208_eq, output205_eq]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages866.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1234 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input210_def]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages866.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1038 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages866.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1233 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input211_def]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages866.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1037 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages866.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1235 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input212_def]
  simp only [input211_eq, input210_eq]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages866.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1039 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output212_def]
  simp only [output211_eq, output210_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages866.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input213_def]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages866.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output213_def]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages866.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1228 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input214_def]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages866.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1032 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages866.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1206 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages866.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1025 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages866.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1229 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input216_def]
  simp only [input215_eq, input214_eq]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages866.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1033 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output216_def]
  simp only [output215_eq, output214_eq]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages866.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1205 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input217_def]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages866.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1024 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages866.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1230 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input218_def]
  simp only [input217_eq, input216_eq]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages866.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1034 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output218_def]
  simp only [output217_eq, output216_eq]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages866.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1203 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input219_def]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages866.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1022 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages866.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1200 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages866.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1019 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages866.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1199 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages866.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1018 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages866.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1201 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input222_def]
  simp only [input221_eq, input220_eq]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages866.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1020 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output222_def]
  simp only [output221_eq, output220_eq]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages866.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1196 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages866.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1015 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages866.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1195 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages866.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1014 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages866.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1197 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input225_def]
  simp only [input224_eq, input223_eq]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages866.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1016 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output225_def]
  simp only [output224_eq, output223_eq]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages866.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages866.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages866.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1190 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages866.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages866.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages866.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1188 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages866.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1189 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input230_def]
  simp only [input229_eq, input228_eq]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages866.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output230_def]
  simp only [output228_eq]

theorem input231_eq : InitECandidate.Proofs.DeadStages866.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1191 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input231_def]
  simp only [input230_eq, input227_eq]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages866.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output231_def]
  simp only [output230_eq]

theorem input232_eq : InitECandidate.Proofs.DeadStages866.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1176 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages866.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1174 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages866.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages866.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1175 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input235_def]
  simp only [input234_eq, input233_eq]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages866.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1177 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input236_def]
  simp only [input235_eq, input232_eq]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages866.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1173 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages866.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1178 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input238_def]
  simp only [input237_eq, input236_eq]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages866.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_28 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages866.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_19 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages866.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1170 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input240_def]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages866.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output240_def]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages866.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1171 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input241_def]
  simp only [input240_eq, input239_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages866.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1007 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output241_def]
  simp only [output240_eq, output239_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages866.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1168 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input242_def]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages866.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1004 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages866.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1165 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input243_def]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages866.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1001 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output243_def]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages866.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1164 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input244_def]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages866.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1000 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages866.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1166 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input245_def]
  simp only [input244_eq, input243_eq]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages866.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1002 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output245_def]
  simp only [output244_eq, output243_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages866.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1162 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages866.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_998 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages866.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1160 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages866.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input248_def]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages866.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output248_def]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages866.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1158 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input249_def]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages866.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1159 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input250_def]
  simp only [input249_eq, input248_eq]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages866.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output250_def]
  simp only [output248_eq]

theorem input251_eq : InitECandidate.Proofs.DeadStages866.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1161 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input251_def]
  simp only [input250_eq, input247_eq]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages866.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output251_def]
  simp only [output250_eq]

theorem input252_eq : InitECandidate.Proofs.DeadStages866.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1163 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input252_def]
  simp only [input251_eq, input246_eq]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages866.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_999 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output252_def]
  simp only [output251_eq, output246_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages866.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1167 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input253_def]
  simp only [input252_eq, input245_eq]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages866.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1003 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output253_def]
  simp only [output252_eq, output245_eq]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages866.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1169 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input254_def]
  simp only [input253_eq, input242_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages866.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1005 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output254_def]
  simp only [output253_eq, output242_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages866.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1172 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input255_def]
  simp only [input254_eq, input241_eq]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages866.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1008 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output255_def]
  simp only [output254_eq, output241_eq]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel
