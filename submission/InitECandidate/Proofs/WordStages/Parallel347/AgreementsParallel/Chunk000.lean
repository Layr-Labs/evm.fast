import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel347.Data2
import InitECandidate.Proofs.WordStages.Parallel347.Data3
import InitECandidate.Proofs.DeadStages347.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel347.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages347.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2301 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages347.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1648 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages347.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2300 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages347.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1647 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages347.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2302 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages347.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1649 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages347.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2298 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages347.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1645 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages347.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2295 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages347.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1642 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages347.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2294 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages347.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1641 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages347.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2296 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input6_def]
  simp only [input5_eq, input4_eq]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages347.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1643 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output6_def]
  simp only [output5_eq, output4_eq]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages347.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2292 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages347.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1639 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages347.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2289 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages347.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1636 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages347.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2288 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input9_def]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages347.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1635 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages347.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2290 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input10_def]
  simp only [input9_eq, input8_eq]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages347.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1637 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output10_def]
  simp only [output9_eq, output8_eq]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages347.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2286 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages347.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1633 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages347.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2283 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages347.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1630 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages347.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2282 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages347.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1629 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages347.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2284 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages347.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1631 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages347.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2280 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages347.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1627 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages347.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2277 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input16_def]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages347.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1624 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages347.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2276 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages347.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1623 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages347.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2278 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input18_def]
  simp only [input17_eq, input16_eq]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages347.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1625 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output18_def]
  simp only [output17_eq, output16_eq]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages347.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2274 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages347.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1621 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages347.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2272 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages347.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1619 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages347.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2270 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages347.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1617 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages347.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2268 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages347.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1615 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages347.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2266 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages347.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1613 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages347.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2263 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages347.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1610 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages347.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2262 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages347.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1609 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages347.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2264 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input26_def]
  simp only [input25_eq, input24_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages347.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1611 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output26_def]
  simp only [output25_eq, output24_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages347.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages347.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages347.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2256 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages347.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1603 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages347.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2222 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input29_def]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages347.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1578 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages347.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2257 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input30_def]
  simp only [input29_eq, input28_eq]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages347.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1604 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output30_def]
  simp only [output29_eq, output28_eq]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages347.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2221 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input31_def]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages347.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1577 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages347.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2258 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input32_def]
  simp only [input31_eq, input30_eq]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages347.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1605 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output32_def]
  simp only [output31_eq, output30_eq]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages347.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2220 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input33_def]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages347.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1576 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages347.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2259 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input34_def]
  simp only [input33_eq, input32_eq]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages347.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1606 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output34_def]
  simp only [output33_eq, output32_eq]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages347.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2218 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages347.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2215 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages347.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1573 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages347.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2214 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages347.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1572 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages347.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2216 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input38_def]
  simp only [input37_eq, input36_eq]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages347.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1574 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output38_def]
  simp only [output37_eq, output36_eq]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages347.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2212 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages347.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1570 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages347.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2209 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages347.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1567 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages347.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2208 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages347.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1566 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages347.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2210 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input42_def]
  simp only [input41_eq, input40_eq]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages347.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1568 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output42_def]
  simp only [output41_eq, output40_eq]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages347.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2206 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input43_def]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages347.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1564 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output43_def]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages347.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2203 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages347.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1561 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages347.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2202 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages347.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1560 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages347.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2204 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input46_def]
  simp only [input45_eq, input44_eq]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages347.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1562 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output46_def]
  simp only [output45_eq, output44_eq]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages347.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2200 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages347.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1558 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages347.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2197 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages347.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1555 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages347.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2196 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input49_def]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages347.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1554 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages347.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2198 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input50_def]
  simp only [input49_eq, input48_eq]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages347.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1556 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output50_def]
  simp only [output49_eq, output48_eq]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages347.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2194 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages347.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1552 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages347.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2191 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages347.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1549 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages347.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2190 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages347.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1548 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages347.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2192 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input54_def]
  simp only [input53_eq, input52_eq]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages347.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1550 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output54_def]
  simp only [output53_eq, output52_eq]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages347.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2188 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input55_def]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages347.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1546 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages347.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2186 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input56_def]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages347.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1544 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output56_def]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages347.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2184 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages347.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1542 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages347.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2182 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input58_def]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages347.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1540 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages347.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2180 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages347.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1538 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages347.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2177 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages347.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1535 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages347.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2176 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages347.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1534 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages347.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2178 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input62_def]
  simp only [input61_eq, input60_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages347.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1536 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output62_def]
  simp only [output61_eq, output60_eq]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages347.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages347.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages347.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2170 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input64_def]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages347.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1528 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output64_def]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages347.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2136 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages347.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1503 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages347.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2171 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input66_def]
  simp only [input65_eq, input64_eq]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages347.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1529 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output66_def]
  simp only [output65_eq, output64_eq]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages347.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2135 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages347.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1502 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages347.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2172 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input68_def]
  simp only [input67_eq, input66_eq]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages347.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1530 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output68_def]
  simp only [output67_eq, output66_eq]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages347.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2134 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages347.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1501 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages347.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2173 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input70_def]
  simp only [input69_eq, input68_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages347.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1531 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output70_def]
  simp only [output69_eq, output68_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages347.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2132 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages347.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2129 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages347.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1498 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages347.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2128 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages347.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1497 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages347.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2130 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input74_def]
  simp only [input73_eq, input72_eq]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages347.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1499 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output74_def]
  simp only [output73_eq, output72_eq]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages347.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2126 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages347.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1495 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages347.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2123 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input76_def]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages347.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1492 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output76_def]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages347.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2122 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages347.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1491 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages347.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2124 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input78_def]
  simp only [input77_eq, input76_eq]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages347.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1493 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output78_def]
  simp only [output77_eq, output76_eq]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages347.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2120 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages347.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1489 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages347.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2117 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages347.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1486 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages347.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2116 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages347.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1485 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages347.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2118 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input82_def]
  simp only [input81_eq, input80_eq]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages347.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1487 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output82_def]
  simp only [output81_eq, output80_eq]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages347.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2114 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages347.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1483 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages347.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2111 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input84_def]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages347.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1480 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output84_def]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages347.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2110 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input85_def]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages347.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1479 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages347.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2112 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input86_def]
  simp only [input85_eq, input84_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages347.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1481 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output86_def]
  simp only [output85_eq, output84_eq]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages347.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2108 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input87_def]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages347.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1477 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages347.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2105 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input88_def]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages347.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1474 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages347.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2104 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages347.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1473 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages347.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2106 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input90_def]
  simp only [input89_eq, input88_eq]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages347.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1475 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output90_def]
  simp only [output89_eq, output88_eq]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages347.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2102 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages347.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1471 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages347.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2100 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages347.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1469 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages347.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2098 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages347.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1467 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages347.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2096 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages347.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1465 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages347.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2094 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages347.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1463 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages347.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2091 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages347.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1460 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages347.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2090 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages347.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1459 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages347.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2092 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input98_def]
  simp only [input97_eq, input96_eq]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages347.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1461 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output98_def]
  simp only [output97_eq, output96_eq]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages347.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input99_def]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages347.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output99_def]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages347.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2084 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages347.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1453 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages347.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2050 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages347.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1428 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages347.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2085 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input102_def]
  simp only [input101_eq, input100_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages347.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1454 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output102_def]
  simp only [output101_eq, output100_eq]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages347.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2049 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages347.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1427 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages347.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2086 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input104_def]
  simp only [input103_eq, input102_eq]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages347.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1455 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output104_def]
  simp only [output103_eq, output102_eq]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages347.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2048 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages347.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1426 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages347.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2087 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input106_def]
  simp only [input105_eq, input104_eq]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages347.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1456 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output106_def]
  simp only [output105_eq, output104_eq]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages347.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2046 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages347.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2044 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input108_def]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages347.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1424 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages347.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2042 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages347.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1422 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages347.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages347.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages347.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2018 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages347.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2016 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages347.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2014 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages347.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2012 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages347.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2010 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages347.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_22 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages347.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2011 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input117_def]
  simp only [input116_eq, input115_eq]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages347.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2013 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input118_def]
  simp only [input117_eq, input114_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages347.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2015 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input119_def]
  simp only [input118_eq, input113_eq]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages347.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2017 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input120_def]
  simp only [input119_eq, input112_eq]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages347.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2019 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input121_def]
  simp only [input120_eq, input111_eq]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages347.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2009 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages347.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1415 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages347.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2020 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input123_def]
  simp only [input122_eq, input121_eq]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages347.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1415 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output123_def]
  simp only [output122_eq]

theorem input124_eq : InitECandidate.Proofs.DeadStages347.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2007 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages347.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1413 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages347.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2004 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages347.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1410 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages347.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2003 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages347.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1409 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages347.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2005 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input127_def]
  simp only [input126_eq, input125_eq]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages347.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1411 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output127_def]
  simp only [output126_eq, output125_eq]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages347.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2000 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input128_def]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages347.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1406 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages347.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1999 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input129_def]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages347.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1405 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages347.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2001 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input130_def]
  simp only [input129_eq, input128_eq]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages347.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1407 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output130_def]
  simp only [output129_eq, output128_eq]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages347.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1997 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input131_def]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages347.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1403 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages347.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1995 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input132_def]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages347.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1401 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages347.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1992 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages347.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1398 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages347.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1991 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input134_def]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages347.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1397 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages347.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1993 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input135_def]
  simp only [input134_eq, input133_eq]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages347.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1399 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output135_def]
  simp only [output134_eq, output133_eq]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages347.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1988 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages347.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1394 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages347.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1987 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages347.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1393 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages347.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1989 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input138_def]
  simp only [input137_eq, input136_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages347.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1395 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output138_def]
  simp only [output137_eq, output136_eq]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages347.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1985 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages347.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1391 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages347.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1983 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input140_def]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages347.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1389 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages347.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1980 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages347.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1386 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages347.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1979 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages347.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1385 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages347.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1981 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input143_def]
  simp only [input142_eq, input141_eq]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages347.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1387 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output143_def]
  simp only [output142_eq, output141_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages347.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input144_def]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages347.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages347.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1974 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages347.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1380 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages347.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1948 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input146_def]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages347.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1363 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages347.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1975 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input147_def]
  simp only [input146_eq, input145_eq]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages347.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1381 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output147_def]
  simp only [output146_eq, output145_eq]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages347.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1947 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input148_def]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages347.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1362 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages347.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1976 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input149_def]
  simp only [input148_eq, input147_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages347.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1382 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output149_def]
  simp only [output148_eq, output147_eq]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages347.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1945 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input150_def]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages347.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1360 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages347.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1943 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input151_def]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages347.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1358 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages347.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input152_def]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages347.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages347.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1938 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input153_def]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages347.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1353 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages347.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1912 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input154_def]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages347.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1336 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages347.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1939 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input155_def]
  simp only [input154_eq, input153_eq]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages347.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1354 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output155_def]
  simp only [output154_eq, output153_eq]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages347.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1911 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input156_def]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages347.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1335 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages347.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1940 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input157_def]
  simp only [input156_eq, input155_eq]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages347.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1355 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output157_def]
  simp only [output156_eq, output155_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages347.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1909 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input158_def]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages347.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1333 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output158_def]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages347.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1907 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages347.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1331 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages347.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1905 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages347.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages347.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages347.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1903 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages347.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1904 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input163_def]
  simp only [input162_eq, input161_eq]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages347.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output163_def]
  simp only [output161_eq]

theorem input164_eq : InitECandidate.Proofs.DeadStages347.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1906 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input164_def]
  simp only [input163_eq, input160_eq]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages347.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output164_def]
  simp only [output163_eq]

theorem input165_eq : InitECandidate.Proofs.DeadStages347.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1908 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input165_def]
  simp only [input164_eq, input159_eq]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages347.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1332 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output165_def]
  simp only [output164_eq, output159_eq]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages347.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1910 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input166_def]
  simp only [input165_eq, input158_eq]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages347.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1334 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output166_def]
  simp only [output165_eq, output158_eq]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages347.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1941 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input167_def]
  simp only [input166_eq, input157_eq]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages347.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1356 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output167_def]
  simp only [output166_eq, output157_eq]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages347.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1942 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input168_def]
  simp only [input167_eq, input152_eq]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages347.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1357 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output168_def]
  simp only [output167_eq, output152_eq]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages347.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1944 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input169_def]
  simp only [input168_eq, input151_eq]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages347.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1359 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output169_def]
  simp only [output168_eq, output151_eq]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages347.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1946 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input170_def]
  simp only [input169_eq, input150_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages347.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1361 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output170_def]
  simp only [output169_eq, output150_eq]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages347.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1977 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input171_def]
  simp only [input170_eq, input149_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages347.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1383 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output171_def]
  simp only [output170_eq, output149_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages347.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1978 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input172_def]
  simp only [input171_eq, input144_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages347.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1384 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output172_def]
  simp only [output171_eq, output144_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages347.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1982 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input173_def]
  simp only [input172_eq, input143_eq]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages347.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1388 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output173_def]
  simp only [output172_eq, output143_eq]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages347.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1984 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input174_def]
  simp only [input173_eq, input140_eq]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages347.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1390 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output174_def]
  simp only [output173_eq, output140_eq]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages347.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1986 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input175_def]
  simp only [input174_eq, input139_eq]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages347.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1392 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output175_def]
  simp only [output174_eq, output139_eq]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages347.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1990 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input176_def]
  simp only [input175_eq, input138_eq]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages347.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1396 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output176_def]
  simp only [output175_eq, output138_eq]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages347.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1994 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input177_def]
  simp only [input176_eq, input135_eq]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages347.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1400 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output177_def]
  simp only [output176_eq, output135_eq]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages347.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1996 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input178_def]
  simp only [input177_eq, input132_eq]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages347.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1402 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output178_def]
  simp only [output177_eq, output132_eq]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages347.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1998 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input179_def]
  simp only [input178_eq, input131_eq]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages347.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1404 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output179_def]
  simp only [output178_eq, output131_eq]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages347.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2002 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input180_def]
  simp only [input179_eq, input130_eq]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages347.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1408 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output180_def]
  simp only [output179_eq, output130_eq]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages347.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2006 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input181_def]
  simp only [input180_eq, input127_eq]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages347.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1412 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output181_def]
  simp only [output180_eq, output127_eq]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages347.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2008 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input182_def]
  simp only [input181_eq, input124_eq]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages347.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1414 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output182_def]
  simp only [output181_eq, output124_eq]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages347.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2021 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input183_def]
  simp only [input182_eq, input123_eq]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages347.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1416 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output183_def]
  simp only [output182_eq, output123_eq]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages347.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2035 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input184_def]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages347.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2033 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages347.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2031 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages347.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2029 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages347.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2027 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages347.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_22 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages347.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2028 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input190_def]
  simp only [input189_eq, input188_eq]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages347.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2030 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input191_def]
  simp only [input190_eq, input187_eq]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages347.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2032 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input192_def]
  simp only [input191_eq, input186_eq]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages347.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2034 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input193_def]
  simp only [input192_eq, input185_eq]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages347.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2036 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input194_def]
  simp only [input193_eq, input184_eq]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages347.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2026 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages347.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1417 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages347.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2037 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input196_def]
  simp only [input195_eq, input194_eq]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages347.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1417 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output196_def]
  simp only [output195_eq]

theorem input197_eq : InitECandidate.Proofs.DeadStages347.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2024 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages347.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input198_def]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages347.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output198_def]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages347.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2022 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages347.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2023 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input200_def]
  simp only [input199_eq, input198_eq]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages347.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output200_def]
  simp only [output198_eq]

theorem input201_eq : InitECandidate.Proofs.DeadStages347.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2025 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input201_def]
  simp only [input200_eq, input197_eq]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages347.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output201_def]
  simp only [output200_eq]

theorem input202_eq : InitECandidate.Proofs.DeadStages347.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2038 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input202_def]
  simp only [input201_eq, input196_eq]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages347.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1418 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output202_def]
  simp only [output201_eq, output196_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages347.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_2039 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input203_def]
  simp only [input183_eq, input202_eq]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages347.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1419 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output203_def]
  simp only [output183_eq, output202_eq]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages347.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1901 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages347.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1329 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages347.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1899 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages347.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1327 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages347.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages347.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages347.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1877 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages347.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1875 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages347.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1873 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages347.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1871 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages347.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_22 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages347.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1872 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input212_def]
  simp only [input211_eq, input210_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages347.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1874 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input213_def]
  simp only [input212_eq, input209_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages347.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1876 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input214_def]
  simp only [input213_eq, input208_eq]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages347.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1878 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input215_def]
  simp only [input214_eq, input207_eq]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages347.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1870 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages347.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1320 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages347.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1879 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input217_def]
  simp only [input216_eq, input215_eq]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages347.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1320 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output217_def]
  simp only [output216_eq]

theorem input218_eq : InitECandidate.Proofs.DeadStages347.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1868 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages347.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1318 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages347.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1865 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input219_def]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages347.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1315 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages347.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1864 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages347.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1314 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages347.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1866 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input221_def]
  simp only [input220_eq, input219_eq]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages347.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1316 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output221_def]
  simp only [output220_eq, output219_eq]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages347.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1861 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages347.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1311 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages347.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1860 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages347.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1310 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages347.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1862 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input224_def]
  simp only [input223_eq, input222_eq]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages347.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1312 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output224_def]
  simp only [output223_eq, output222_eq]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages347.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1858 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input225_def]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages347.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1308 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages347.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1856 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages347.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1306 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages347.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1853 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input227_def]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages347.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1303 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages347.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1852 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages347.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1302 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages347.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1854 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input229_def]
  simp only [input228_eq, input227_eq]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages347.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1304 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output229_def]
  simp only [output228_eq, output227_eq]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages347.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1849 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages347.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1299 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages347.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1848 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages347.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1298 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages347.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1850 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input232_def]
  simp only [input231_eq, input230_eq]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages347.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1300 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output232_def]
  simp only [output231_eq, output230_eq]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages347.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1846 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages347.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1296 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages347.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1844 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input234_def]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages347.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1294 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages347.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1841 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages347.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1291 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages347.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1840 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages347.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1290 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages347.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1842 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input237_def]
  simp only [input236_eq, input235_eq]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages347.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1292 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output237_def]
  simp only [output236_eq, output235_eq]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages347.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input238_def]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages347.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages347.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1835 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages347.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1285 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages347.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1809 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input240_def]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages347.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1268 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output240_def]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages347.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1836 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input241_def]
  simp only [input240_eq, input239_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages347.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1286 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output241_def]
  simp only [output240_eq, output239_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages347.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1808 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input242_def]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages347.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1267 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages347.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1837 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input243_def]
  simp only [input242_eq, input241_eq]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages347.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1287 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output243_def]
  simp only [output242_eq, output241_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages347.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1806 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input244_def]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages347.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1265 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages347.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1804 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input245_def]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages347.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1263 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output245_def]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages347.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_5 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages347.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_4 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages347.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1799 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input247_def]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages347.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1258 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages347.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1773 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input248_def]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages347.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1241 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output248_def]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages347.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1800 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input249_def]
  simp only [input248_eq, input247_eq]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages347.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1259 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output249_def]
  simp only [output248_eq, output247_eq]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages347.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1772 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input250_def]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages347.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1240 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output250_def]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages347.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1801 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input251_def]
  simp only [input250_eq, input249_eq]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages347.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1260 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output251_def]
  simp only [output250_eq, output249_eq]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages347.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1769 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input252_def]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages347.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1237 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output252_def]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages347.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1768 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input253_def]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages347.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1236 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output253_def]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages347.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1770 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input254_def]
  simp only [input253_eq, input252_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages347.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1238 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output254_def]
  simp only [output253_eq, output252_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages347.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_2_1766 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages347.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel347.word347_3_1234 := by
  rw [InitECandidate.Proofs.DeadStages347.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel347.AgreementsParallel
