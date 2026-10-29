import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel184.Data2
import InitECandidate.Proofs.WordStages.Parallel184.Data3
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel184.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages184.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2261 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages184.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2078 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages184.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2260 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages184.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2077 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages184.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2262 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages184.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2079 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages184.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2256 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages184.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2073 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages184.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2255 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages184.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2072 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages184.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2257 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input5_def]
  simp only [input4_eq, input3_eq]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages184.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2074 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output5_def]
  simp only [output4_eq, output3_eq]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages184.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2253 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages184.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2070 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages184.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2252 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages184.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2069 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages184.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2254 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input8_def]
  simp only [input7_eq, input6_eq]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages184.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2071 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output8_def]
  simp only [output7_eq, output6_eq]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages184.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2258 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input9_def]
  simp only [input8_eq, input5_eq]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages184.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2075 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output9_def]
  simp only [output8_eq, output5_eq]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages184.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2250 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages184.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2067 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages184.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2248 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages184.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2065 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages184.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2244 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages184.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2061 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages184.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_114 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages184.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_106 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages184.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2245 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages184.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2062 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages184.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2243 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages184.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2060 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages184.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2246 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input16_def]
  simp only [input15_eq, input14_eq]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages184.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2063 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output16_def]
  simp only [output15_eq, output14_eq]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages184.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2241 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages184.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2058 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages184.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2239 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages184.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2056 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages184.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2237 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages184.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2054 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages184.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2233 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages184.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2050 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages184.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2232 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages184.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2049 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages184.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2234 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input22_def]
  simp only [input21_eq, input20_eq]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages184.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2051 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output22_def]
  simp only [output21_eq, output20_eq]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages184.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2230 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages184.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2047 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages184.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2229 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages184.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2046 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages184.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2231 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input25_def]
  simp only [input24_eq, input23_eq]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages184.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2048 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output25_def]
  simp only [output24_eq, output23_eq]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages184.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2235 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input26_def]
  simp only [input25_eq, input22_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages184.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2052 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output26_def]
  simp only [output25_eq, output22_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages184.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages184.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages184.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2223 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages184.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2040 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages184.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input29_def]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages184.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages184.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2202 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages184.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2200 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages184.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2198 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages184.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_136 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages184.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2199 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input34_def]
  simp only [input33_eq, input32_eq]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages184.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2201 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input35_def]
  simp only [input34_eq, input31_eq]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages184.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2203 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input36_def]
  simp only [input35_eq, input30_eq]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages184.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2197 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages184.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2032 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages184.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2204 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input38_def]
  simp only [input37_eq, input36_eq]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages184.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2032 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output38_def]
  simp only [output37_eq]

theorem input39_eq : InitECandidate.Proofs.DeadStages184.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2112 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages184.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1982 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages184.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2194 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages184.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2029 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages184.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2195 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input41_def]
  simp only [input40_eq, input39_eq]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages184.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2030 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output41_def]
  simp only [output40_eq, output39_eq]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages184.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2192 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input42_def]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages184.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2027 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages184.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2189 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input43_def]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages184.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2024 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output43_def]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages184.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2188 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages184.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2023 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages184.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2190 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input45_def]
  simp only [input44_eq, input43_eq]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages184.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2025 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output45_def]
  simp only [output44_eq, output43_eq]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages184.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2186 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input46_def]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages184.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2021 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages184.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2182 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages184.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2017 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages184.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2181 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages184.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2016 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages184.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2183 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input49_def]
  simp only [input48_eq, input47_eq]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages184.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2018 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output49_def]
  simp only [output48_eq, output47_eq]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages184.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2180 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages184.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2015 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages184.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2184 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input51_def]
  simp only [input50_eq, input49_eq]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages184.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2019 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output51_def]
  simp only [output50_eq, output49_eq]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages184.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2178 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages184.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2013 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages184.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2174 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages184.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2009 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages184.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2173 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input54_def]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages184.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2008 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages184.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2175 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input55_def]
  simp only [input54_eq, input53_eq]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages184.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2010 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output55_def]
  simp only [output54_eq, output53_eq]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages184.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2172 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input56_def]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages184.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2007 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output56_def]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages184.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2176 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input57_def]
  simp only [input56_eq, input55_eq]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages184.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2011 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output57_def]
  simp only [output56_eq, output55_eq]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages184.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2170 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages184.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages184.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages184.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2168 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages184.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2169 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input61_def]
  simp only [input60_eq, input59_eq]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages184.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output61_def]
  simp only [output59_eq]

theorem input62_eq : InitECandidate.Proofs.DeadStages184.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2171 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input62_def]
  simp only [input61_eq, input58_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages184.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output62_def]
  simp only [output61_eq]

theorem input63_eq : InitECandidate.Proofs.DeadStages184.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2177 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input63_def]
  simp only [input62_eq, input57_eq]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages184.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2012 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output63_def]
  simp only [output62_eq, output57_eq]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages184.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2179 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input64_def]
  simp only [input63_eq, input52_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages184.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2014 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output64_def]
  simp only [output63_eq, output52_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages184.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2185 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input65_def]
  simp only [input64_eq, input51_eq]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages184.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2020 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output65_def]
  simp only [output64_eq, output51_eq]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages184.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2187 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input66_def]
  simp only [input65_eq, input46_eq]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages184.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2022 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output66_def]
  simp only [output65_eq, output46_eq]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages184.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2191 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input67_def]
  simp only [input66_eq, input45_eq]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages184.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2026 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output67_def]
  simp only [output66_eq, output45_eq]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages184.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2193 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input68_def]
  simp only [input67_eq, input42_eq]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages184.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2028 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output68_def]
  simp only [output67_eq, output42_eq]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages184.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2196 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input69_def]
  simp only [input68_eq, input41_eq]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages184.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2031 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output69_def]
  simp only [output68_eq, output41_eq]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages184.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2205 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input70_def]
  simp only [input69_eq, input38_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages184.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2033 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output70_def]
  simp only [output69_eq, output38_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages184.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2216 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages184.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2214 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages184.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2212 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages184.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_136 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages184.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2213 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input75_def]
  simp only [input74_eq, input73_eq]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages184.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2215 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input76_def]
  simp only [input75_eq, input72_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages184.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2217 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input77_def]
  simp only [input76_eq, input71_eq]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages184.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2211 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages184.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2035 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages184.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2218 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input79_def]
  simp only [input78_eq, input77_eq]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages184.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2035 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output79_def]
  simp only [output78_eq]

theorem input80_eq : InitECandidate.Proofs.DeadStages184.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2135 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages184.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1988 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages184.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2208 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages184.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages184.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages184.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2206 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages184.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2207 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input84_def]
  simp only [input83_eq, input82_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages184.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output84_def]
  simp only [output82_eq]

theorem input85_eq : InitECandidate.Proofs.DeadStages184.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2209 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input85_def]
  simp only [input84_eq, input81_eq]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages184.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output85_def]
  simp only [output84_eq]

theorem input86_eq : InitECandidate.Proofs.DeadStages184.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2210 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input86_def]
  simp only [input85_eq, input80_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages184.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2034 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output86_def]
  simp only [output85_eq, output80_eq]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages184.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2219 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input87_def]
  simp only [input86_eq, input79_eq]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages184.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2036 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output87_def]
  simp only [output86_eq, output79_eq]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages184.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2220 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input88_def]
  simp only [input70_eq, input87_eq]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages184.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2037 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output88_def]
  simp only [output70_eq, output87_eq]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages184.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2166 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages184.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2005 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages184.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2165 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input90_def]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages184.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2004 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages184.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2167 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input91_def]
  simp only [input90_eq, input89_eq]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages184.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2006 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output91_def]
  simp only [output90_eq, output89_eq]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages184.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2221 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input92_def]
  simp only [input91_eq, input88_eq]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages184.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2038 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output92_def]
  simp only [output91_eq, output88_eq]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages184.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2222 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input93_def]
  simp only [input92_eq, input29_eq]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages184.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2039 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output93_def]
  simp only [output92_eq, output29_eq]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages184.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2224 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input94_def]
  simp only [input93_eq, input28_eq]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages184.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2041 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output94_def]
  simp only [output93_eq, output28_eq]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages184.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2225 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input95_def]
  simp only [input94_eq]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages184.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2042 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output95_def]
  simp only [output94_eq]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages184.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2163 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages184.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2003 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages184.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_136 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages184.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2164 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input98_def]
  simp only [input97_eq, input96_eq]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages184.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2003 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output98_def]
  simp only [output96_eq]

theorem input99_eq : InitECandidate.Proofs.DeadStages184.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2226 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input99_def]
  simp only [input98_eq, input95_eq]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages184.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_2043 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output99_def]
  simp only [output98_eq, output95_eq]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages184.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages184.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages184.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages184.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages184.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2156 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input102_def]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages184.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1996 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output102_def]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages184.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages184.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages184.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2126 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages184.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2124 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages184.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2122 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages184.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2120 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages184.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2118 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages184.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2116 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages184.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_136 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages184.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2117 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input111_def]
  simp only [input110_eq, input109_eq]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages184.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2119 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input112_def]
  simp only [input111_eq, input108_eq]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages184.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2121 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input113_def]
  simp only [input112_eq, input107_eq]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages184.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2123 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input114_def]
  simp only [input113_eq, input106_eq]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages184.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2125 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input115_def]
  simp only [input114_eq, input105_eq]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages184.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2127 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input116_def]
  simp only [input115_eq, input104_eq]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages184.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2115 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages184.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1985 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages184.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2128 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input118_def]
  simp only [input117_eq, input116_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages184.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1985 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output118_def]
  simp only [output117_eq]

theorem input119_eq : InitECandidate.Proofs.DeadStages184.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2112 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages184.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1982 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages184.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2111 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input120_def]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages184.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1981 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages184.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2113 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input121_def]
  simp only [input120_eq, input119_eq]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages184.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1983 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output121_def]
  simp only [output120_eq, output119_eq]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages184.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2109 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages184.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1979 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages184.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2106 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages184.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1976 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages184.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2105 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages184.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1975 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages184.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2107 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input125_def]
  simp only [input124_eq, input123_eq]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages184.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1977 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output125_def]
  simp only [output124_eq, output123_eq]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages184.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2103 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages184.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1973 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages184.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2099 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input127_def]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages184.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1969 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages184.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2098 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input128_def]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages184.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1968 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages184.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2100 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input129_def]
  simp only [input128_eq, input127_eq]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages184.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1970 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output129_def]
  simp only [output128_eq, output127_eq]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages184.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2097 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input130_def]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages184.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1967 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages184.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2101 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input131_def]
  simp only [input130_eq, input129_eq]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages184.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1971 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output131_def]
  simp only [output130_eq, output129_eq]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages184.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2093 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input132_def]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages184.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1963 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages184.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2092 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages184.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1962 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages184.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2094 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input134_def]
  simp only [input133_eq, input132_eq]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages184.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1964 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output134_def]
  simp only [output133_eq, output132_eq]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages184.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2089 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages184.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1959 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages184.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2087 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages184.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1957 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages184.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2086 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages184.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1956 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages184.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2088 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input138_def]
  simp only [input137_eq, input136_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages184.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1958 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output138_def]
  simp only [output137_eq, output136_eq]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages184.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2090 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input139_def]
  simp only [input138_eq, input135_eq]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages184.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1960 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output139_def]
  simp only [output138_eq, output135_eq]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages184.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2083 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input140_def]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages184.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1953 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages184.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2081 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages184.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1951 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages184.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2080 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages184.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1950 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages184.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2082 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input143_def]
  simp only [input142_eq, input141_eq]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages184.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1952 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output143_def]
  simp only [output142_eq, output141_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages184.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2084 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input144_def]
  simp only [input143_eq, input140_eq]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages184.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1954 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output144_def]
  simp only [output143_eq, output140_eq]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages184.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2077 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages184.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1947 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages184.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2075 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input146_def]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages184.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1945 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages184.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2074 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input147_def]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages184.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1944 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages184.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2076 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input148_def]
  simp only [input147_eq, input146_eq]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages184.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1946 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output148_def]
  simp only [output147_eq, output146_eq]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages184.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2078 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input149_def]
  simp only [input148_eq, input145_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages184.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1948 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output149_def]
  simp only [output148_eq, output145_eq]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages184.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2072 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input150_def]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages184.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1942 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages184.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2069 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input151_def]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages184.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1939 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages184.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2068 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input152_def]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages184.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1938 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages184.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2070 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input153_def]
  simp only [input152_eq, input151_eq]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages184.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1940 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output153_def]
  simp only [output152_eq, output151_eq]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages184.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2065 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input154_def]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages184.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1935 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages184.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2063 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input155_def]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages184.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1933 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages184.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2062 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input156_def]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages184.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1932 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages184.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2064 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input157_def]
  simp only [input156_eq, input155_eq]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages184.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1934 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output157_def]
  simp only [output156_eq, output155_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages184.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2066 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input158_def]
  simp only [input157_eq, input154_eq]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages184.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1936 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output158_def]
  simp only [output157_eq, output154_eq]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages184.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2059 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages184.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1929 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages184.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2057 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input160_def]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages184.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1927 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages184.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2056 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages184.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1926 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages184.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2058 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input162_def]
  simp only [input161_eq, input160_eq]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages184.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1928 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output162_def]
  simp only [output161_eq, output160_eq]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages184.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2060 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input163_def]
  simp only [input162_eq, input159_eq]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages184.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1930 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output163_def]
  simp only [output162_eq, output159_eq]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages184.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2054 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input164_def]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages184.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1924 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages184.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2053 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input165_def]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages184.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1923 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output165_def]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages184.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2055 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input166_def]
  simp only [input165_eq, input164_eq]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages184.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1925 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output166_def]
  simp only [output165_eq, output164_eq]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages184.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2061 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input167_def]
  simp only [input166_eq, input163_eq]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages184.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1931 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output167_def]
  simp only [output166_eq, output163_eq]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages184.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2067 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input168_def]
  simp only [input167_eq, input158_eq]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages184.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1937 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output168_def]
  simp only [output167_eq, output158_eq]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages184.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2071 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input169_def]
  simp only [input168_eq, input153_eq]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages184.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1941 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output169_def]
  simp only [output168_eq, output153_eq]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages184.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2073 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input170_def]
  simp only [input169_eq, input150_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages184.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1943 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output170_def]
  simp only [output169_eq, output150_eq]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages184.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2079 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input171_def]
  simp only [input170_eq, input149_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages184.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1949 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output171_def]
  simp only [output170_eq, output149_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages184.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2085 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input172_def]
  simp only [input171_eq, input144_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages184.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1955 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output172_def]
  simp only [output171_eq, output144_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages184.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2091 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input173_def]
  simp only [input172_eq, input139_eq]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages184.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1961 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output173_def]
  simp only [output172_eq, output139_eq]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages184.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2095 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input174_def]
  simp only [input173_eq, input134_eq]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages184.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1965 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output174_def]
  simp only [output173_eq, output134_eq]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages184.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2051 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages184.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1921 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages184.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2048 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages184.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1918 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages184.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2045 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages184.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1915 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages184.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2044 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages184.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1914 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages184.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2046 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input179_def]
  simp only [input178_eq, input177_eq]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages184.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1916 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output179_def]
  simp only [output178_eq, output177_eq]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages184.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2043 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages184.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1913 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages184.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2047 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input181_def]
  simp only [input180_eq, input179_eq]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages184.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1917 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output181_def]
  simp only [output180_eq, output179_eq]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages184.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2049 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input182_def]
  simp only [input181_eq, input176_eq]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages184.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1919 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output182_def]
  simp only [output181_eq, output176_eq]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages184.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2041 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input183_def]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages184.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1911 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output183_def]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages184.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2038 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input184_def]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages184.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1908 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output184_def]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages184.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2035 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages184.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1905 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages184.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2034 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input186_def]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages184.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1904 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages184.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2036 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input187_def]
  simp only [input186_eq, input185_eq]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages184.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1906 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output187_def]
  simp only [output186_eq, output185_eq]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages184.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2033 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages184.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1903 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages184.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2037 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input189_def]
  simp only [input188_eq, input187_eq]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages184.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1907 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output189_def]
  simp only [output188_eq, output187_eq]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages184.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2039 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input190_def]
  simp only [input189_eq, input184_eq]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages184.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1909 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output190_def]
  simp only [output189_eq, output184_eq]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages184.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2031 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages184.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1901 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages184.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2028 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages184.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1898 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages184.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2025 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages184.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1895 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages184.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2024 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages184.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1894 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages184.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2026 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input195_def]
  simp only [input194_eq, input193_eq]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages184.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1896 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output195_def]
  simp only [output194_eq, output193_eq]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages184.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2023 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input196_def]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages184.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1893 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output196_def]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages184.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2027 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input197_def]
  simp only [input196_eq, input195_eq]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages184.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1897 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output197_def]
  simp only [output196_eq, output195_eq]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages184.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2029 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input198_def]
  simp only [input197_eq, input192_eq]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages184.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1899 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output198_def]
  simp only [output197_eq, output192_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages184.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2021 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages184.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1891 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages184.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2018 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages184.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1888 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages184.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2015 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages184.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1885 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages184.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2014 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input202_def]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages184.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1884 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output202_def]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages184.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2016 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input203_def]
  simp only [input202_eq, input201_eq]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages184.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1886 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output203_def]
  simp only [output202_eq, output201_eq]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages184.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2013 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages184.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1883 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages184.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2017 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input205_def]
  simp only [input204_eq, input203_eq]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages184.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1887 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output205_def]
  simp only [output204_eq, output203_eq]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages184.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2019 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input206_def]
  simp only [input205_eq, input200_eq]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages184.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1889 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output206_def]
  simp only [output205_eq, output200_eq]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages184.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2011 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input207_def]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages184.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1881 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages184.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2008 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input208_def]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages184.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1878 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages184.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2005 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages184.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1875 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages184.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2004 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input210_def]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages184.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1874 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages184.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2006 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input211_def]
  simp only [input210_eq, input209_eq]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages184.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1876 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output211_def]
  simp only [output210_eq, output209_eq]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages184.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2003 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input212_def]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages184.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1873 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output212_def]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages184.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2007 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input213_def]
  simp only [input212_eq, input211_eq]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages184.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1877 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output213_def]
  simp only [output212_eq, output211_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages184.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2009 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input214_def]
  simp only [input213_eq, input208_eq]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages184.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1879 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output214_def]
  simp only [output213_eq, output208_eq]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages184.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2001 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages184.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1871 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages184.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1998 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages184.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1868 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages184.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1995 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input217_def]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages184.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1865 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages184.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1994 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages184.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1864 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages184.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1996 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input219_def]
  simp only [input218_eq, input217_eq]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages184.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1866 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output219_def]
  simp only [output218_eq, output217_eq]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages184.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1993 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages184.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1863 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages184.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1997 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input221_def]
  simp only [input220_eq, input219_eq]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages184.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1867 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output221_def]
  simp only [output220_eq, output219_eq]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages184.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1999 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input222_def]
  simp only [input221_eq, input216_eq]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages184.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1869 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output222_def]
  simp only [output221_eq, output216_eq]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages184.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1991 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages184.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1861 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages184.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1988 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages184.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1858 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages184.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1985 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input225_def]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages184.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1855 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages184.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1984 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages184.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1854 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages184.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1986 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input227_def]
  simp only [input226_eq, input225_eq]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages184.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1856 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output227_def]
  simp only [output226_eq, output225_eq]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages184.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1983 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages184.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1853 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages184.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1987 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input229_def]
  simp only [input228_eq, input227_eq]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages184.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1857 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output229_def]
  simp only [output228_eq, output227_eq]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages184.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1989 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input230_def]
  simp only [input229_eq, input224_eq]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages184.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1859 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output230_def]
  simp only [output229_eq, output224_eq]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages184.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1981 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages184.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1851 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages184.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1977 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages184.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1847 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages184.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1976 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages184.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1846 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages184.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1978 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input234_def]
  simp only [input233_eq, input232_eq]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages184.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1848 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output234_def]
  simp only [output233_eq, output232_eq]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages184.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1975 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages184.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1845 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages184.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1979 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input236_def]
  simp only [input235_eq, input234_eq]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages184.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1849 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output236_def]
  simp only [output235_eq, output234_eq]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages184.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1973 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages184.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_11 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input238_def]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages184.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages184.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1971 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages184.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1972 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input240_def]
  simp only [input239_eq, input238_eq]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages184.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output240_def]
  simp only [output238_eq]

theorem input241_eq : InitECandidate.Proofs.DeadStages184.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1974 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input241_def]
  simp only [input240_eq, input237_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages184.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_10 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output241_def]
  simp only [output240_eq]

theorem input242_eq : InitECandidate.Proofs.DeadStages184.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1980 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input242_def]
  simp only [input241_eq, input236_eq]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages184.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1850 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output242_def]
  simp only [output241_eq, output236_eq]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages184.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1982 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input243_def]
  simp only [input242_eq, input231_eq]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages184.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1852 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output243_def]
  simp only [output242_eq, output231_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages184.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1990 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input244_def]
  simp only [input243_eq, input230_eq]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages184.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1860 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output244_def]
  simp only [output243_eq, output230_eq]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages184.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_1992 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input245_def]
  simp only [input244_eq, input223_eq]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages184.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1862 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output245_def]
  simp only [output244_eq, output223_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages184.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2000 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input246_def]
  simp only [input245_eq, input222_eq]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages184.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1870 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output246_def]
  simp only [output245_eq, output222_eq]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages184.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2002 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input247_def]
  simp only [input246_eq, input215_eq]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages184.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1872 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output247_def]
  simp only [output246_eq, output215_eq]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages184.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2010 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input248_def]
  simp only [input247_eq, input214_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages184.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1880 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output248_def]
  simp only [output247_eq, output214_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages184.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2012 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input249_def]
  simp only [input248_eq, input207_eq]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages184.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1882 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output249_def]
  simp only [output248_eq, output207_eq]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages184.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2020 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input250_def]
  simp only [input249_eq, input206_eq]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages184.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1890 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output250_def]
  simp only [output249_eq, output206_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages184.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2022 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input251_def]
  simp only [input250_eq, input199_eq]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages184.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1892 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output251_def]
  simp only [output250_eq, output199_eq]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages184.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2030 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input252_def]
  simp only [input251_eq, input198_eq]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages184.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1900 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output252_def]
  simp only [output251_eq, output198_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages184.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2032 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input253_def]
  simp only [input252_eq, input191_eq]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages184.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1902 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output253_def]
  simp only [output252_eq, output191_eq]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages184.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2040 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input254_def]
  simp only [input253_eq, input190_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages184.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1910 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output254_def]
  simp only [output253_eq, output190_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages184.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_2_2042 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.input255_def]
  simp only [input254_eq, input183_eq]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages184.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel184.word184_3_1912 := by
  rw [InitECandidate.Proofs.DeadStages184.Parallel.output255_def]
  simp only [output254_eq, output183_eq]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel184.AgreementsParallel
