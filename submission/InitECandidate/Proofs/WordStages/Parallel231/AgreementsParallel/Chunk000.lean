import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel231.Data2
import InitECandidate.Proofs.WordStages.Parallel231.Data3
import InitECandidate.Proofs.DeadStages231.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel231.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages231.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2131 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages231.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1749 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages231.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2130 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages231.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1748 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages231.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2132 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages231.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1750 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages231.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2128 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages231.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1746 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages231.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2125 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages231.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1743 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages231.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2124 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages231.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1742 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages231.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2126 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input6_def]
  simp only [input5_eq, input4_eq]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages231.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1744 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output6_def]
  simp only [output5_eq, output4_eq]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages231.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2122 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages231.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1740 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages231.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2119 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages231.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1737 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages231.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2118 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input9_def]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages231.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1736 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages231.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2120 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input10_def]
  simp only [input9_eq, input8_eq]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages231.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1738 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output10_def]
  simp only [output9_eq, output8_eq]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages231.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2116 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages231.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1734 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages231.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2113 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages231.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1731 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages231.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2112 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages231.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1730 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages231.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2114 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages231.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1732 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages231.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2110 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages231.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1728 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages231.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2107 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input16_def]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages231.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1725 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages231.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2106 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages231.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1724 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages231.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2108 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input18_def]
  simp only [input17_eq, input16_eq]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages231.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1726 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output18_def]
  simp only [output17_eq, output16_eq]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages231.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2104 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages231.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1722 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages231.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2102 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages231.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1720 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages231.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2100 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages231.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1718 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages231.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2098 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages231.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1716 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages231.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2096 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages231.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1714 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages231.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2093 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages231.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1711 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages231.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2092 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages231.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1710 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages231.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2094 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input26_def]
  simp only [input25_eq, input24_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages231.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1712 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output26_def]
  simp only [output25_eq, output24_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages231.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2089 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages231.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1707 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages231.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2088 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages231.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1706 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages231.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2090 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input29_def]
  simp only [input28_eq, input27_eq]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages231.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1708 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output29_def]
  simp only [output28_eq, output27_eq]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages231.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2086 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input30_def]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages231.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1704 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages231.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2083 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input31_def]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages231.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1701 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages231.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2082 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input32_def]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages231.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1700 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages231.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2084 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input33_def]
  simp only [input32_eq, input31_eq]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages231.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1702 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output33_def]
  simp only [output32_eq, output31_eq]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages231.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2080 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input34_def]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages231.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1698 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages231.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2077 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages231.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1695 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages231.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2076 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages231.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1694 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages231.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2078 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input37_def]
  simp only [input36_eq, input35_eq]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages231.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1696 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output37_def]
  simp only [output36_eq, output35_eq]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages231.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2074 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input38_def]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages231.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1692 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output38_def]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages231.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2071 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages231.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1689 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages231.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2070 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages231.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1688 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages231.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2072 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input41_def]
  simp only [input40_eq, input39_eq]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages231.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1690 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output41_def]
  simp only [output40_eq, output39_eq]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages231.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2068 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input42_def]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages231.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1686 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages231.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2066 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input43_def]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages231.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1684 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output43_def]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages231.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2064 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages231.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1682 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages231.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2062 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages231.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1680 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages231.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2060 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input46_def]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages231.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1678 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages231.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2057 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages231.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1675 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages231.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2056 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages231.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1674 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages231.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2058 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input49_def]
  simp only [input48_eq, input47_eq]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages231.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1676 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output49_def]
  simp only [output48_eq, output47_eq]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages231.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2053 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages231.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1671 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages231.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2052 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages231.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1670 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages231.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2054 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input52_def]
  simp only [input51_eq, input50_eq]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages231.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1672 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output52_def]
  simp only [output51_eq, output50_eq]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages231.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2050 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages231.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1668 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages231.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2047 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input54_def]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages231.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1665 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages231.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2046 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input55_def]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages231.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1664 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages231.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2048 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input56_def]
  simp only [input55_eq, input54_eq]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages231.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1666 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output56_def]
  simp only [output55_eq, output54_eq]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages231.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2044 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages231.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1662 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages231.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2041 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input58_def]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages231.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1659 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages231.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2040 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages231.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1658 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages231.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2042 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input60_def]
  simp only [input59_eq, input58_eq]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages231.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1660 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output60_def]
  simp only [output59_eq, output58_eq]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages231.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2038 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages231.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1656 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages231.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2035 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input62_def]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages231.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1653 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output62_def]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages231.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2034 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages231.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1652 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages231.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2036 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input64_def]
  simp only [input63_eq, input62_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages231.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1654 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output64_def]
  simp only [output63_eq, output62_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages231.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2032 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages231.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1650 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages231.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2030 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages231.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1648 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages231.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2028 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages231.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1646 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages231.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2026 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages231.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1644 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages231.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2024 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages231.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1642 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages231.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2022 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input70_def]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages231.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1640 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output70_def]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages231.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages231.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages231.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2017 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages231.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1635 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages231.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1983 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages231.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1610 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages231.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2018 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input74_def]
  simp only [input73_eq, input72_eq]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages231.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1636 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output74_def]
  simp only [output73_eq, output72_eq]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages231.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1982 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages231.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1609 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages231.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_2019 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages231.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1637 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages231.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1980 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages231.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1607 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages231.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1978 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages231.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1605 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages231.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1976 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages231.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1603 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages231.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1974 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages231.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1601 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages231.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1972 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages231.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1599 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages231.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1970 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages231.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1597 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages231.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1968 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages231.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1595 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages231.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1966 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input84_def]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages231.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1593 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output84_def]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages231.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input85_def]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages231.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages231.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1961 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input86_def]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages231.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1588 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output86_def]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages231.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1927 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input87_def]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages231.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1563 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages231.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1962 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input88_def]
  simp only [input87_eq, input86_eq]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages231.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1589 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output88_def]
  simp only [output87_eq, output86_eq]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages231.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1926 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages231.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1562 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages231.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1963 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input90_def]
  simp only [input89_eq, input88_eq]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages231.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1590 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output90_def]
  simp only [output89_eq, output88_eq]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages231.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1924 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages231.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1560 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages231.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1922 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages231.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1558 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages231.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1920 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages231.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1556 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages231.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1918 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages231.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1554 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages231.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1916 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages231.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1552 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages231.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1914 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages231.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1550 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages231.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1912 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages231.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1548 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages231.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1910 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input98_def]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages231.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1546 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages231.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input99_def]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages231.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output99_def]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages231.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1905 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages231.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1541 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages231.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1871 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages231.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1516 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages231.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1906 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input102_def]
  simp only [input101_eq, input100_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages231.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1542 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output102_def]
  simp only [output101_eq, output100_eq]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages231.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1870 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages231.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1515 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages231.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1907 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input104_def]
  simp only [input103_eq, input102_eq]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages231.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1543 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output104_def]
  simp only [output103_eq, output102_eq]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages231.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1868 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages231.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1513 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages231.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1866 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input106_def]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages231.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1511 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages231.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1864 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input107_def]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages231.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1509 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages231.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1862 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input108_def]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages231.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1507 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages231.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1860 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages231.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1505 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages231.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1858 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages231.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1503 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages231.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1856 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input111_def]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages231.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1501 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages231.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1854 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input112_def]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages231.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1499 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages231.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages231.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages231.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1849 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input114_def]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages231.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1494 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages231.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1815 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages231.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1469 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages231.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1850 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input116_def]
  simp only [input115_eq, input114_eq]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages231.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1495 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output116_def]
  simp only [output115_eq, output114_eq]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages231.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1814 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages231.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1468 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages231.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1851 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input118_def]
  simp only [input117_eq, input116_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages231.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1496 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output118_def]
  simp only [output117_eq, output116_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages231.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1812 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages231.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1466 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages231.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1810 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input120_def]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages231.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1464 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages231.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1808 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input121_def]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages231.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1462 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages231.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1806 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages231.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1460 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages231.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1804 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages231.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1458 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages231.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1802 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages231.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1456 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages231.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1800 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages231.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1454 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages231.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1798 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages231.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1452 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages231.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input127_def]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages231.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages231.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1793 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input128_def]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages231.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1447 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages231.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1759 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input129_def]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages231.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1422 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages231.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1794 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input130_def]
  simp only [input129_eq, input128_eq]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages231.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1448 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output130_def]
  simp only [output129_eq, output128_eq]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages231.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1758 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input131_def]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages231.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1421 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages231.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1795 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input132_def]
  simp only [input131_eq, input130_eq]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages231.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1449 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output132_def]
  simp only [output131_eq, output130_eq]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages231.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1756 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages231.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1419 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages231.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1754 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input134_def]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages231.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1417 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages231.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1752 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages231.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1415 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages231.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1750 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages231.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1413 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages231.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1748 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages231.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1411 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages231.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1746 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input138_def]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages231.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1409 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output138_def]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages231.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1744 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages231.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1407 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages231.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1742 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input140_def]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages231.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1405 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages231.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages231.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages231.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1737 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages231.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1400 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages231.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1703 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input143_def]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages231.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1375 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output143_def]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages231.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1738 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input144_def]
  simp only [input143_eq, input142_eq]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages231.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1401 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output144_def]
  simp only [output143_eq, output142_eq]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages231.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1702 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages231.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1374 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages231.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1739 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input146_def]
  simp only [input145_eq, input144_eq]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages231.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1402 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output146_def]
  simp only [output145_eq, output144_eq]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages231.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1700 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input147_def]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages231.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1372 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages231.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1698 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input148_def]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages231.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1370 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages231.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1696 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input149_def]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages231.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1368 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output149_def]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages231.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1694 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input150_def]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages231.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1366 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages231.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1692 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input151_def]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages231.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1364 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages231.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1690 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input152_def]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages231.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1362 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages231.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1688 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input153_def]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages231.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1360 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages231.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1686 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input154_def]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages231.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1358 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages231.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input155_def]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages231.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages231.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1681 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input156_def]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages231.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1353 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages231.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1647 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input157_def]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages231.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1328 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output157_def]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages231.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1682 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input158_def]
  simp only [input157_eq, input156_eq]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages231.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1354 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output158_def]
  simp only [output157_eq, output156_eq]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages231.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1646 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages231.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1327 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages231.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1683 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input160_def]
  simp only [input159_eq, input158_eq]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages231.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1355 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output160_def]
  simp only [output159_eq, output158_eq]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages231.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1644 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages231.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1325 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages231.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1642 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input162_def]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages231.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1323 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages231.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1640 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input163_def]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages231.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1321 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages231.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1638 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input164_def]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages231.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1319 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages231.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1636 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input165_def]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages231.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1317 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output165_def]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages231.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1634 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input166_def]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages231.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1315 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages231.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1632 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input167_def]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages231.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1313 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages231.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1630 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input168_def]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages231.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1311 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages231.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input169_def]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages231.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages231.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1625 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input170_def]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages231.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1306 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output170_def]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages231.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1591 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input171_def]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages231.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1281 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output171_def]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages231.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1626 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input172_def]
  simp only [input171_eq, input170_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages231.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1307 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output172_def]
  simp only [output171_eq, output170_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages231.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1590 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages231.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1280 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages231.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1627 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input174_def]
  simp only [input173_eq, input172_eq]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages231.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1308 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output174_def]
  simp only [output173_eq, output172_eq]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages231.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1588 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages231.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1278 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages231.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1586 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages231.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1276 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages231.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1584 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages231.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1274 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages231.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1582 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages231.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1272 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages231.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1580 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input179_def]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages231.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1270 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages231.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1578 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages231.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1268 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages231.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1576 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages231.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1266 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages231.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1574 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input182_def]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages231.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1264 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages231.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input183_def]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages231.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output183_def]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages231.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1569 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input184_def]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages231.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1259 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output184_def]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages231.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1535 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages231.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1234 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages231.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1570 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input186_def]
  simp only [input185_eq, input184_eq]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages231.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1260 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output186_def]
  simp only [output185_eq, output184_eq]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages231.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1534 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages231.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1233 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages231.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1571 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input188_def]
  simp only [input187_eq, input186_eq]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages231.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1261 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output188_def]
  simp only [output187_eq, output186_eq]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages231.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1532 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input189_def]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages231.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1231 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages231.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1530 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages231.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1229 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages231.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1528 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages231.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1227 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages231.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1526 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages231.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1225 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages231.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages231.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1223 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages231.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages231.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1221 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages231.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1520 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages231.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1219 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages231.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1518 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input196_def]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages231.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1217 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output196_def]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages231.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input197_def]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages231.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages231.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1513 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input198_def]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages231.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1212 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output198_def]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages231.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1479 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages231.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1187 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages231.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1514 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input200_def]
  simp only [input199_eq, input198_eq]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages231.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1213 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output200_def]
  simp only [output199_eq, output198_eq]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages231.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1478 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages231.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1186 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages231.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1515 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input202_def]
  simp only [input201_eq, input200_eq]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages231.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1214 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output202_def]
  simp only [output201_eq, output200_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages231.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1476 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages231.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1184 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages231.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1474 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages231.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1182 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages231.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1472 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages231.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1180 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages231.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1470 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages231.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1178 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages231.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input207_def]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages231.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages231.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1465 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input208_def]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages231.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1173 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages231.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1431 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages231.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1148 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages231.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1466 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input210_def]
  simp only [input209_eq, input208_eq]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages231.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1174 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output210_def]
  simp only [output209_eq, output208_eq]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages231.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1430 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input211_def]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages231.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1147 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages231.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1467 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input212_def]
  simp only [input211_eq, input210_eq]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages231.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1175 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output212_def]
  simp only [output211_eq, output210_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages231.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1428 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input213_def]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages231.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1145 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output213_def]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages231.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1426 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input214_def]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages231.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1143 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages231.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1424 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages231.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1141 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages231.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1422 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages231.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1139 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages231.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1420 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input217_def]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages231.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1137 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages231.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1418 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages231.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1135 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages231.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1416 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input219_def]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages231.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1133 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages231.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1414 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages231.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1131 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages231.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages231.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages231.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1409 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages231.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1126 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages231.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1375 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages231.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1101 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages231.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1410 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input224_def]
  simp only [input223_eq, input222_eq]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages231.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1127 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output224_def]
  simp only [output223_eq, output222_eq]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages231.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1374 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input225_def]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages231.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1100 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages231.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1411 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input226_def]
  simp only [input225_eq, input224_eq]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages231.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1128 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output226_def]
  simp only [output225_eq, output224_eq]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages231.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1372 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input227_def]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages231.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1098 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages231.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1370 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages231.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1096 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages231.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1368 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input229_def]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages231.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1094 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages231.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1366 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages231.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1092 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages231.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1364 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages231.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1090 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages231.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1362 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages231.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1088 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages231.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1360 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages231.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1086 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages231.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1358 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input234_def]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages231.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1084 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages231.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages231.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages231.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1353 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages231.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1079 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages231.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1319 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input237_def]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages231.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1054 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages231.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1354 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input238_def]
  simp only [input237_eq, input236_eq]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages231.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1080 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output238_def]
  simp only [output237_eq, output236_eq]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages231.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1318 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages231.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1053 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages231.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1355 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input240_def]
  simp only [input239_eq, input238_eq]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages231.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1081 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output240_def]
  simp only [output239_eq, output238_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages231.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1316 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input241_def]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages231.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1051 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output241_def]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages231.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1314 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input242_def]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages231.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1049 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages231.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1312 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input243_def]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages231.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1047 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output243_def]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages231.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1310 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input244_def]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages231.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1045 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages231.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_54 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input245_def]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages231.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_43 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output245_def]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages231.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1305 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages231.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1040 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages231.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1271 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input247_def]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages231.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1015 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages231.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1306 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input248_def]
  simp only [input247_eq, input246_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages231.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1041 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output248_def]
  simp only [output247_eq, output246_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages231.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1270 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input249_def]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages231.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1014 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output249_def]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages231.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1307 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input250_def]
  simp only [input249_eq, input248_eq]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages231.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1042 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output250_def]
  simp only [output249_eq, output248_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages231.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1268 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input251_def]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages231.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1012 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output251_def]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages231.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1266 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input252_def]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages231.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1010 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output252_def]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages231.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1264 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input253_def]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages231.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1008 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output253_def]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages231.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1262 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input254_def]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages231.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output254_def]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages231.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_2_1260 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages231.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel231.word231_3_1004 := by
  rw [InitECandidate.Proofs.DeadStages231.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel231.AgreementsParallel
