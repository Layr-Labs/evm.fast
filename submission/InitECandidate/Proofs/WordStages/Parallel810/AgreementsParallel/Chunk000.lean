import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel810.Data2
import InitECandidate.Proofs.WordStages.Parallel810.Data3
import InitECandidate.Proofs.DeadStages810.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages810.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1345 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages810.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1149 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages810.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1344 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages810.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1148 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages810.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1346 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages810.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1150 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages810.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1342 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages810.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1146 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages810.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages810.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages810.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1337 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages810.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1141 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages810.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1315 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages810.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1134 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages810.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1338 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input7_def]
  simp only [input6_eq, input5_eq]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages810.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1142 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output7_def]
  simp only [output6_eq, output5_eq]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages810.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1314 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages810.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1133 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages810.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1339 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input9_def]
  simp only [input8_eq, input7_eq]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages810.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1143 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output9_def]
  simp only [output8_eq, output7_eq]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages810.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1312 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages810.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1131 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages810.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1309 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages810.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1128 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages810.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1308 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages810.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1127 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages810.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1310 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input13_def]
  simp only [input12_eq, input11_eq]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages810.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1129 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output13_def]
  simp only [output12_eq, output11_eq]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages810.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1306 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input14_def]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages810.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1125 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output14_def]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages810.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1303 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages810.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1122 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages810.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1302 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input16_def]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages810.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1121 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages810.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1304 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input17_def]
  simp only [input16_eq, input15_eq]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages810.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1123 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output17_def]
  simp only [output16_eq, output15_eq]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages810.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1300 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages810.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1119 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages810.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1297 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages810.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1116 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages810.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1296 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages810.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1115 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages810.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1298 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input21_def]
  simp only [input20_eq, input19_eq]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages810.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1117 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output21_def]
  simp only [output20_eq, output19_eq]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages810.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1294 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages810.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1113 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages810.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1291 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages810.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1110 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages810.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1290 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages810.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1109 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages810.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1292 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input25_def]
  simp only [input24_eq, input23_eq]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages810.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1111 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output25_def]
  simp only [output24_eq, output23_eq]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages810.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1288 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input26_def]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages810.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1107 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output26_def]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages810.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1285 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages810.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1104 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages810.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1284 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages810.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1103 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages810.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1286 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input29_def]
  simp only [input28_eq, input27_eq]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages810.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1105 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output29_def]
  simp only [output28_eq, output27_eq]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages810.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1282 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input30_def]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages810.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1101 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages810.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1279 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input31_def]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages810.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1098 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages810.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1278 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input32_def]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages810.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1097 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages810.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1280 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input33_def]
  simp only [input32_eq, input31_eq]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages810.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1099 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output33_def]
  simp only [output32_eq, output31_eq]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages810.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1276 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input34_def]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages810.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1095 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages810.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1274 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages810.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1093 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages810.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1272 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages810.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1091 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages810.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1270 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages810.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1089 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages810.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1268 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input38_def]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages810.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1087 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output38_def]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages810.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1266 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages810.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1085 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages810.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1264 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages810.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1083 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages810.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1261 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages810.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1080 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages810.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1260 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input42_def]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages810.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1079 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages810.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1262 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input43_def]
  simp only [input42_eq, input41_eq]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages810.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1081 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output43_def]
  simp only [output42_eq, output41_eq]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages810.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1257 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages810.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1076 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages810.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1256 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages810.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1075 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages810.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1258 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input46_def]
  simp only [input45_eq, input44_eq]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages810.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1077 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output46_def]
  simp only [output45_eq, output44_eq]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages810.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1254 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages810.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1073 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages810.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1251 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages810.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1070 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages810.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1250 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input49_def]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages810.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1069 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages810.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1252 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input50_def]
  simp only [input49_eq, input48_eq]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages810.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1071 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output50_def]
  simp only [output49_eq, output48_eq]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages810.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1248 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages810.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1067 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages810.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1245 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages810.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1064 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages810.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1244 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages810.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1063 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages810.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1246 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input54_def]
  simp only [input53_eq, input52_eq]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages810.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1065 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output54_def]
  simp only [output53_eq, output52_eq]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages810.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1242 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input55_def]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages810.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1061 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages810.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1239 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input56_def]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages810.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1058 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output56_def]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages810.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1238 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages810.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1057 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages810.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1240 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input58_def]
  simp only [input57_eq, input56_eq]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages810.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1059 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output58_def]
  simp only [output57_eq, output56_eq]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages810.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1236 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages810.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1055 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages810.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1233 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages810.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1052 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages810.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1232 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages810.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1051 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages810.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1234 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input62_def]
  simp only [input61_eq, input60_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages810.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1053 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output62_def]
  simp only [output61_eq, output60_eq]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages810.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1230 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages810.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1049 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages810.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1227 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input64_def]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages810.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1046 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output64_def]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages810.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1226 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages810.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1045 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages810.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1228 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input66_def]
  simp only [input65_eq, input64_eq]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages810.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1047 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output66_def]
  simp only [output65_eq, output64_eq]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages810.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1224 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages810.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1043 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages810.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1222 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages810.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1041 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages810.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1220 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages810.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1039 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages810.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1218 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input70_def]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages810.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1037 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output70_def]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages810.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1216 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages810.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1035 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages810.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1214 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages810.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1033 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages810.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1212 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages810.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1031 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages810.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1209 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages810.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1028 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages810.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1208 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages810.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1027 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages810.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1210 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages810.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1029 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages810.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1205 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages810.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1024 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages810.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1204 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages810.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1023 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages810.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1206 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input79_def]
  simp only [input78_eq, input77_eq]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages810.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1025 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output79_def]
  simp only [output78_eq, output77_eq]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages810.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1202 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages810.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1021 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages810.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1199 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages810.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1018 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages810.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1198 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages810.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1017 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages810.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1200 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input83_def]
  simp only [input82_eq, input81_eq]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages810.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1019 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output83_def]
  simp only [output82_eq, output81_eq]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages810.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1196 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input84_def]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages810.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1015 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output84_def]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages810.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1193 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input85_def]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages810.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1012 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages810.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1192 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input86_def]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages810.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1011 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output86_def]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages810.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1194 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input87_def]
  simp only [input86_eq, input85_eq]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages810.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1013 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output87_def]
  simp only [output86_eq, output85_eq]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages810.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1190 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input88_def]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages810.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages810.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1187 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages810.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages810.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1186 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input90_def]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages810.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1005 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages810.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1188 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input91_def]
  simp only [input90_eq, input89_eq]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages810.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1007 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output91_def]
  simp only [output90_eq, output89_eq]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages810.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1184 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages810.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1003 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages810.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1181 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages810.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1000 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages810.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1180 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages810.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_999 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages810.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1182 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input95_def]
  simp only [input94_eq, input93_eq]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages810.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1001 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output95_def]
  simp only [output94_eq, output93_eq]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages810.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1178 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages810.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_997 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages810.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1175 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages810.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_994 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages810.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1174 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input98_def]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages810.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_993 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages810.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1176 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input99_def]
  simp only [input98_eq, input97_eq]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages810.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_995 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output99_def]
  simp only [output98_eq, output97_eq]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages810.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1172 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages810.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_991 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages810.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1170 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages810.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_989 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages810.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1168 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input102_def]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages810.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_987 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output102_def]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages810.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1166 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages810.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_985 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages810.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1164 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input104_def]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages810.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_983 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages810.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1162 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages810.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_981 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages810.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1160 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input106_def]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages810.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_979 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages810.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1158 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input107_def]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages810.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_977 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages810.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input108_def]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages810.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages810.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1153 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages810.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_972 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages810.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1111 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages810.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_939 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages810.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1154 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input111_def]
  simp only [input110_eq, input109_eq]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages810.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_973 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output111_def]
  simp only [output110_eq, output109_eq]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages810.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1110 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input112_def]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages810.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_938 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages810.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1155 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input113_def]
  simp only [input112_eq, input111_eq]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages810.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_974 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output113_def]
  simp only [output112_eq, output111_eq]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages810.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1108 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input114_def]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages810.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_936 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages810.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1106 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages810.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_934 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages810.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1104 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages810.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_932 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages810.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1102 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages810.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_930 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages810.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1100 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input118_def]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages810.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_928 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output118_def]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages810.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1098 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages810.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_926 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages810.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1096 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input120_def]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages810.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_924 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages810.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1094 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input121_def]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages810.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_922 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages810.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1092 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages810.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_920 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages810.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1090 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages810.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_918 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages810.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1088 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages810.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_916 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages810.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1086 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages810.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_914 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages810.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages810.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages810.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1081 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input127_def]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages810.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_909 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages810.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1039 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input128_def]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages810.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_876 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages810.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1082 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input129_def]
  simp only [input128_eq, input127_eq]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages810.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_910 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output129_def]
  simp only [output128_eq, output127_eq]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages810.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1038 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input130_def]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages810.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_875 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages810.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1083 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input131_def]
  simp only [input130_eq, input129_eq]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages810.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_911 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output131_def]
  simp only [output130_eq, output129_eq]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages810.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1036 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input132_def]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages810.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_873 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages810.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1034 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages810.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_871 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages810.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1032 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input134_def]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages810.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_869 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages810.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1030 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages810.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_867 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages810.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1028 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages810.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_865 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages810.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1026 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages810.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_863 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages810.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1024 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input138_def]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages810.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_861 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output138_def]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages810.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1022 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages810.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_859 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages810.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1020 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input140_def]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages810.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_857 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages810.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1018 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages810.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_855 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages810.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1016 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages810.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_853 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages810.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1014 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input143_def]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages810.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_851 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output143_def]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages810.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input144_def]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages810.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages810.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1009 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages810.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_846 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages810.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_967 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input146_def]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages810.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_813 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages810.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1010 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input147_def]
  simp only [input146_eq, input145_eq]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages810.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_847 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output147_def]
  simp only [output146_eq, output145_eq]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages810.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_966 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input148_def]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages810.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_812 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages810.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1011 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input149_def]
  simp only [input148_eq, input147_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages810.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_848 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output149_def]
  simp only [output148_eq, output147_eq]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages810.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_964 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input150_def]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages810.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_810 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages810.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_962 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input151_def]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages810.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_808 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages810.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_960 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input152_def]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages810.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_806 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages810.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_958 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input153_def]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages810.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_804 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages810.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_956 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input154_def]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages810.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_802 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages810.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_954 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input155_def]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages810.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_800 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages810.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_952 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input156_def]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages810.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_798 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages810.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_950 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input157_def]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages810.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_796 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output157_def]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages810.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_948 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input158_def]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages810.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_794 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output158_def]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages810.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_946 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages810.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_792 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages810.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_944 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input160_def]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages810.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_790 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages810.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_942 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages810.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_788 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages810.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input162_def]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages810.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages810.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_937 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input163_def]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages810.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_783 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages810.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_895 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input164_def]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages810.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_750 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages810.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_938 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input165_def]
  simp only [input164_eq, input163_eq]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages810.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_784 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output165_def]
  simp only [output164_eq, output163_eq]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages810.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_894 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input166_def]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages810.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_749 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages810.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_939 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input167_def]
  simp only [input166_eq, input165_eq]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages810.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_785 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output167_def]
  simp only [output166_eq, output165_eq]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages810.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_892 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input168_def]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages810.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_747 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages810.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_890 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input169_def]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages810.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_745 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages810.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_888 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input170_def]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages810.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_743 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output170_def]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages810.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_886 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input171_def]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages810.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_741 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output171_def]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages810.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_884 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input172_def]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages810.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_739 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output172_def]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages810.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_882 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages810.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_737 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages810.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_880 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input174_def]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages810.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_735 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages810.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_878 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages810.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_733 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages810.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_876 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages810.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_731 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages810.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_874 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages810.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_729 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages810.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_872 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages810.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_727 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages810.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_870 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input179_def]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages810.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_725 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages810.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages810.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages810.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_865 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages810.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_720 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages810.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_823 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input182_def]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages810.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_687 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages810.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_866 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input183_def]
  simp only [input182_eq, input181_eq]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages810.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_721 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output183_def]
  simp only [output182_eq, output181_eq]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages810.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_822 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input184_def]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages810.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_686 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output184_def]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages810.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_867 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input185_def]
  simp only [input184_eq, input183_eq]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages810.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_722 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output185_def]
  simp only [output184_eq, output183_eq]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages810.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_820 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input186_def]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages810.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_684 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages810.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_818 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages810.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_682 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages810.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_816 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages810.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_680 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages810.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_814 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input189_def]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages810.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_678 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages810.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_812 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages810.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_676 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages810.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_810 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages810.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_674 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages810.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_808 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages810.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_672 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages810.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_806 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages810.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_670 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages810.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_804 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages810.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_668 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages810.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_802 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages810.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_666 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages810.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_800 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input196_def]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages810.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_664 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output196_def]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages810.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_798 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input197_def]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages810.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_662 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages810.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input198_def]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages810.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output198_def]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages810.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_793 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages810.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_657 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages810.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_751 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages810.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_624 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages810.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_794 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input201_def]
  simp only [input200_eq, input199_eq]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages810.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_658 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output201_def]
  simp only [output200_eq, output199_eq]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages810.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_750 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input202_def]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages810.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_623 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output202_def]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages810.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_795 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input203_def]
  simp only [input202_eq, input201_eq]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages810.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_659 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output203_def]
  simp only [output202_eq, output201_eq]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages810.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_748 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages810.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_621 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages810.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_746 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages810.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_619 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages810.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_744 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages810.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_617 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages810.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_742 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input207_def]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages810.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_615 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages810.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_740 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input208_def]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages810.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_613 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages810.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_738 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages810.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_611 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages810.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_736 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input210_def]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages810.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_609 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages810.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_734 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input211_def]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages810.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_607 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages810.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_732 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input212_def]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages810.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_605 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output212_def]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages810.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_730 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input213_def]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages810.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_603 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output213_def]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages810.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_728 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input214_def]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages810.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_601 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages810.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_726 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages810.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_599 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages810.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages810.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages810.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_720 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input217_def]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages810.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_593 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages810.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_678 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages810.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_560 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages810.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_721 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input219_def]
  simp only [input218_eq, input217_eq]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages810.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_594 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output219_def]
  simp only [output218_eq, output217_eq]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages810.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_677 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages810.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_559 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages810.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_722 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input221_def]
  simp only [input220_eq, input219_eq]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages810.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_595 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output221_def]
  simp only [output220_eq, output219_eq]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages810.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_676 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages810.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_558 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages810.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_723 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input223_def]
  simp only [input222_eq, input221_eq]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages810.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_596 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output223_def]
  simp only [output222_eq, output221_eq]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages810.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_674 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages810.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_556 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages810.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_672 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input225_def]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages810.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_554 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages810.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_670 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages810.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_552 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages810.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_668 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input227_def]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages810.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_550 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages810.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_666 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages810.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_548 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages810.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_664 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input229_def]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages810.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_546 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages810.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_662 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages810.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_544 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages810.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_660 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages810.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_656 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages810.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_540 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages810.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_655 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages810.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_539 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages810.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_657 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input234_def]
  simp only [input233_eq, input232_eq]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages810.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_541 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output234_def]
  simp only [output233_eq, output232_eq]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages810.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_653 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages810.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_537 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages810.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_651 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages810.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_535 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages810.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_649 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input237_def]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages810.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_533 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages810.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_648 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input238_def]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages810.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_532 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages810.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_650 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input239_def]
  simp only [input238_eq, input237_eq]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages810.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_534 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output239_def]
  simp only [output238_eq, output237_eq]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages810.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_652 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input240_def]
  simp only [input239_eq, input236_eq]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages810.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_536 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output240_def]
  simp only [output239_eq, output236_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages810.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_654 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input241_def]
  simp only [input240_eq, input235_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages810.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_538 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output241_def]
  simp only [output240_eq, output235_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages810.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_658 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input242_def]
  simp only [input241_eq, input234_eq]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages810.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_542 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output242_def]
  simp only [output241_eq, output234_eq]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages810.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input243_def]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages810.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output243_def]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages810.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_642 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input244_def]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages810.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_526 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages810.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_600 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input245_def]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages810.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_493 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output245_def]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages810.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_643 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input246_def]
  simp only [input245_eq, input244_eq]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages810.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_527 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output246_def]
  simp only [output245_eq, output244_eq]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages810.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_599 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input247_def]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages810.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_492 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages810.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_644 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input248_def]
  simp only [input247_eq, input246_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages810.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_528 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output248_def]
  simp only [output247_eq, output246_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages810.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_598 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input249_def]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages810.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_491 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output249_def]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages810.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_645 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input250_def]
  simp only [input249_eq, input248_eq]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages810.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_529 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output250_def]
  simp only [output249_eq, output248_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages810.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_596 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input251_def]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages810.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_489 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output251_def]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages810.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_594 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input252_def]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages810.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_487 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output252_def]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages810.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_592 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input253_def]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages810.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_485 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output253_def]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages810.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_590 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input254_def]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages810.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_483 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output254_def]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages810.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_588 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages810.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_481 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel
