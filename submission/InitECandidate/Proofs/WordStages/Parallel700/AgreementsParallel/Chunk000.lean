import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel700.Data2
import InitECandidate.Proofs.WordStages.Parallel700.Data3
import InitECandidate.Proofs.DeadStages700.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel700.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages700.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1909 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages700.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1293 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages700.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1908 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages700.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1292 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages700.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1910 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages700.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1294 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages700.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1906 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages700.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1290 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages700.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages700.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages700.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1901 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages700.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1285 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages700.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1879 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages700.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1278 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages700.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1902 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input7_def]
  simp only [input6_eq, input5_eq]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages700.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1286 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output7_def]
  simp only [output6_eq, output5_eq]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages700.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1878 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages700.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1277 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages700.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1903 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input9_def]
  simp only [input8_eq, input7_eq]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages700.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1287 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output9_def]
  simp only [output8_eq, output7_eq]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages700.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1876 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages700.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1275 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages700.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages700.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages700.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1870 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages700.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1269 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages700.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages700.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages700.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1825 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input14_def]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages700.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1823 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages700.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1821 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages700.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1819 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages700.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1817 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages700.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1815 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages700.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1813 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages700.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1811 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages700.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1809 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages700.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1807 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages700.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1805 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages700.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1803 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages700.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1801 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input26_def]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages700.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1799 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages700.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1797 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages700.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_5 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages700.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1798 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input30_def]
  simp only [input29_eq, input28_eq]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages700.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1800 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input31_def]
  simp only [input30_eq, input27_eq]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages700.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1802 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input32_def]
  simp only [input31_eq, input26_eq]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages700.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1804 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input33_def]
  simp only [input32_eq, input25_eq]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages700.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1806 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input34_def]
  simp only [input33_eq, input24_eq]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages700.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1808 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input35_def]
  simp only [input34_eq, input23_eq]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages700.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1810 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input36_def]
  simp only [input35_eq, input22_eq]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages700.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1812 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input37_def]
  simp only [input36_eq, input21_eq]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages700.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1814 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input38_def]
  simp only [input37_eq, input20_eq]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages700.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1816 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input39_def]
  simp only [input38_eq, input19_eq]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages700.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1818 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input40_def]
  simp only [input39_eq, input18_eq]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages700.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1820 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input41_def]
  simp only [input40_eq, input17_eq]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages700.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1822 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input42_def]
  simp only [input41_eq, input16_eq]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages700.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1824 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input43_def]
  simp only [input42_eq, input15_eq]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages700.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1826 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input44_def]
  simp only [input43_eq, input14_eq]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages700.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1796 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages700.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1262 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages700.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1827 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input46_def]
  simp only [input45_eq, input44_eq]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages700.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1262 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output46_def]
  simp only [output45_eq]

theorem input47_eq : InitECandidate.Proofs.DeadStages700.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1045 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages700.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_734 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages700.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1793 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages700.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1259 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages700.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1794 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input49_def]
  simp only [input48_eq, input47_eq]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages700.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1260 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output49_def]
  simp only [output48_eq, output47_eq]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages700.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1791 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages700.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1257 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages700.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1788 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages700.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1254 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages700.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1787 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages700.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1253 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages700.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1789 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input53_def]
  simp only [input52_eq, input51_eq]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages700.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1255 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output53_def]
  simp only [output52_eq, output51_eq]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages700.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1784 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input54_def]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages700.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1250 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages700.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1783 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input55_def]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages700.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1249 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages700.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1785 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input56_def]
  simp only [input55_eq, input54_eq]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages700.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1251 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output56_def]
  simp only [output55_eq, output54_eq]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages700.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1781 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages700.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1247 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages700.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1778 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input58_def]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages700.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1244 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages700.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1777 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages700.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1243 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages700.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1779 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input60_def]
  simp only [input59_eq, input58_eq]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages700.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1245 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output60_def]
  simp only [output59_eq, output58_eq]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages700.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1775 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages700.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1241 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages700.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1772 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input62_def]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages700.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1238 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output62_def]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages700.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1771 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages700.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1237 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages700.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1773 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input64_def]
  simp only [input63_eq, input62_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages700.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1239 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output64_def]
  simp only [output63_eq, output62_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages700.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1769 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages700.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1235 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages700.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1766 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages700.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1232 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages700.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1765 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages700.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1231 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages700.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1767 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input68_def]
  simp only [input67_eq, input66_eq]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages700.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1233 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output68_def]
  simp only [output67_eq, output66_eq]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages700.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1763 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages700.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1229 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages700.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1761 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input70_def]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages700.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1227 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output70_def]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages700.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1759 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages700.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1225 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages700.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1757 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages700.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1223 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages700.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1755 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages700.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1221 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages700.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1751 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages700.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1217 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages700.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1750 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages700.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1216 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages700.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1752 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages700.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1218 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages700.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1748 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages700.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1214 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages700.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1747 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages700.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1213 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages700.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1749 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input79_def]
  simp only [input78_eq, input77_eq]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages700.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1215 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output79_def]
  simp only [output78_eq, output77_eq]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages700.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1753 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input80_def]
  simp only [input79_eq, input76_eq]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages700.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1219 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output80_def]
  simp only [output79_eq, output76_eq]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages700.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages700.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages700.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1742 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages700.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1208 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages700.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1708 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages700.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1183 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages700.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1743 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input84_def]
  simp only [input83_eq, input82_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages700.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1209 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output84_def]
  simp only [output83_eq, output82_eq]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages700.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1707 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input85_def]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages700.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1182 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages700.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1744 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input86_def]
  simp only [input85_eq, input84_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages700.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1210 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output86_def]
  simp only [output85_eq, output84_eq]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages700.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1705 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input87_def]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages700.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1180 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages700.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1703 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input88_def]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages700.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1178 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages700.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1701 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages700.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1176 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages700.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1699 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input90_def]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages700.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1174 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages700.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1697 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages700.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1172 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages700.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1695 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages700.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1170 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages700.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1693 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages700.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1168 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages700.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1691 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages700.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1166 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages700.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1688 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages700.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1163 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages700.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1685 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages700.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1160 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages700.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1683 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages700.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1158 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages700.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1682 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input98_def]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages700.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1157 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages700.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1684 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input99_def]
  simp only [input98_eq, input97_eq]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages700.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1159 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output99_def]
  simp only [output98_eq, output97_eq]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages700.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1686 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input100_def]
  simp only [input99_eq, input96_eq]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages700.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1161 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output100_def]
  simp only [output99_eq, output96_eq]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages700.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1681 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages700.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1156 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages700.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1687 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input102_def]
  simp only [input101_eq, input100_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages700.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1162 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output102_def]
  simp only [output101_eq, output100_eq]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages700.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1689 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input103_def]
  simp only [input102_eq, input95_eq]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages700.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1164 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output103_def]
  simp only [output102_eq, output95_eq]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages700.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1678 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input104_def]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages700.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1153 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages700.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1675 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages700.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1150 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages700.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1673 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input106_def]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages700.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1148 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages700.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1672 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input107_def]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages700.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1147 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages700.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1674 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input108_def]
  simp only [input107_eq, input106_eq]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages700.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1149 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output108_def]
  simp only [output107_eq, output106_eq]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages700.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1676 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input109_def]
  simp only [input108_eq, input105_eq]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages700.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1151 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output109_def]
  simp only [output108_eq, output105_eq]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages700.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1671 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages700.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1146 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages700.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1677 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input111_def]
  simp only [input110_eq, input109_eq]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages700.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1152 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output111_def]
  simp only [output110_eq, output109_eq]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages700.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1679 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input112_def]
  simp only [input111_eq, input104_eq]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages700.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1154 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output112_def]
  simp only [output111_eq, output104_eq]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages700.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1668 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages700.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1143 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages700.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1665 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input114_def]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages700.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1140 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages700.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1663 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages700.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1138 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages700.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1662 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages700.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1137 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages700.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1664 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input117_def]
  simp only [input116_eq, input115_eq]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages700.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1139 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output117_def]
  simp only [output116_eq, output115_eq]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages700.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1666 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input118_def]
  simp only [input117_eq, input114_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages700.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1141 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output118_def]
  simp only [output117_eq, output114_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages700.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1661 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages700.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1136 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages700.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1667 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input120_def]
  simp only [input119_eq, input118_eq]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages700.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1142 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output120_def]
  simp only [output119_eq, output118_eq]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages700.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1669 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input121_def]
  simp only [input120_eq, input113_eq]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages700.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1144 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output121_def]
  simp only [output120_eq, output113_eq]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages700.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1658 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages700.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1133 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages700.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1655 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages700.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1130 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages700.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1654 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages700.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1129 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages700.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1656 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input125_def]
  simp only [input124_eq, input123_eq]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages700.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1131 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output125_def]
  simp only [output124_eq, output123_eq]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages700.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1652 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages700.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1127 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages700.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1651 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input127_def]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages700.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1126 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages700.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1653 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input128_def]
  simp only [input127_eq, input126_eq]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages700.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1128 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output128_def]
  simp only [output127_eq, output126_eq]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages700.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1657 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input129_def]
  simp only [input128_eq, input125_eq]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages700.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1132 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output129_def]
  simp only [output128_eq, output125_eq]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages700.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1659 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input130_def]
  simp only [input129_eq, input122_eq]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages700.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1134 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output130_def]
  simp only [output129_eq, output122_eq]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages700.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1649 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages700.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input132_def]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages700.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages700.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1647 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages700.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1648 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input134_def]
  simp only [input133_eq, input132_eq]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages700.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output134_def]
  simp only [output132_eq]

theorem input135_eq : InitECandidate.Proofs.DeadStages700.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1650 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input135_def]
  simp only [input134_eq, input131_eq]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages700.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output135_def]
  simp only [output134_eq]

theorem input136_eq : InitECandidate.Proofs.DeadStages700.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1660 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input136_def]
  simp only [input135_eq, input130_eq]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages700.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1135 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output136_def]
  simp only [output135_eq, output130_eq]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages700.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1670 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input137_def]
  simp only [input136_eq, input121_eq]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages700.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1145 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output137_def]
  simp only [output136_eq, output121_eq]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages700.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1680 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input138_def]
  simp only [input137_eq, input112_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages700.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1155 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output138_def]
  simp only [output137_eq, output112_eq]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages700.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1690 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input139_def]
  simp only [input138_eq, input103_eq]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages700.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1165 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output139_def]
  simp only [output138_eq, output103_eq]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages700.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1692 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input140_def]
  simp only [input139_eq, input94_eq]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages700.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1167 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output140_def]
  simp only [output139_eq, output94_eq]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages700.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1694 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input141_def]
  simp only [input140_eq, input93_eq]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages700.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1169 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output141_def]
  simp only [output140_eq, output93_eq]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages700.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1696 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input142_def]
  simp only [input141_eq, input92_eq]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages700.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1171 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output142_def]
  simp only [output141_eq, output92_eq]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages700.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1698 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input143_def]
  simp only [input142_eq, input91_eq]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages700.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1173 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output143_def]
  simp only [output142_eq, output91_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages700.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1700 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input144_def]
  simp only [input143_eq, input90_eq]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages700.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1175 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output144_def]
  simp only [output143_eq, output90_eq]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages700.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1702 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input145_def]
  simp only [input144_eq, input89_eq]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages700.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1177 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output145_def]
  simp only [output144_eq, output89_eq]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages700.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1704 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input146_def]
  simp only [input145_eq, input88_eq]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages700.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1179 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output146_def]
  simp only [output145_eq, output88_eq]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages700.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1706 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input147_def]
  simp only [input146_eq, input87_eq]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages700.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1181 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output147_def]
  simp only [output146_eq, output87_eq]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages700.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1745 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input148_def]
  simp only [input147_eq, input86_eq]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages700.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1211 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output148_def]
  simp only [output147_eq, output86_eq]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages700.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1746 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input149_def]
  simp only [input148_eq, input81_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages700.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1212 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output149_def]
  simp only [output148_eq, output81_eq]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages700.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1754 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input150_def]
  simp only [input149_eq, input80_eq]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages700.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1220 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output150_def]
  simp only [output149_eq, output80_eq]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages700.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1756 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input151_def]
  simp only [input150_eq, input73_eq]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages700.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1222 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output151_def]
  simp only [output150_eq, output73_eq]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages700.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1758 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input152_def]
  simp only [input151_eq, input72_eq]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages700.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1224 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output152_def]
  simp only [output151_eq, output72_eq]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages700.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1760 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input153_def]
  simp only [input152_eq, input71_eq]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages700.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1226 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output153_def]
  simp only [output152_eq, output71_eq]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages700.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1762 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input154_def]
  simp only [input153_eq, input70_eq]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages700.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1228 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output154_def]
  simp only [output153_eq, output70_eq]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages700.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1764 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input155_def]
  simp only [input154_eq, input69_eq]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages700.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1230 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output155_def]
  simp only [output154_eq, output69_eq]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages700.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1768 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input156_def]
  simp only [input155_eq, input68_eq]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages700.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1234 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output156_def]
  simp only [output155_eq, output68_eq]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages700.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1770 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input157_def]
  simp only [input156_eq, input65_eq]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages700.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1236 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output157_def]
  simp only [output156_eq, output65_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages700.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1774 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input158_def]
  simp only [input157_eq, input64_eq]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages700.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1240 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output158_def]
  simp only [output157_eq, output64_eq]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages700.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1776 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input159_def]
  simp only [input158_eq, input61_eq]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages700.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1242 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output159_def]
  simp only [output158_eq, output61_eq]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages700.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1780 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input160_def]
  simp only [input159_eq, input60_eq]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages700.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1246 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output160_def]
  simp only [output159_eq, output60_eq]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages700.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1782 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input161_def]
  simp only [input160_eq, input57_eq]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages700.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1248 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output161_def]
  simp only [output160_eq, output57_eq]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages700.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1786 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input162_def]
  simp only [input161_eq, input56_eq]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages700.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1252 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output162_def]
  simp only [output161_eq, output56_eq]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages700.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1790 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input163_def]
  simp only [input162_eq, input53_eq]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages700.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1256 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output163_def]
  simp only [output162_eq, output53_eq]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages700.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1792 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input164_def]
  simp only [input163_eq, input50_eq]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages700.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1258 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output164_def]
  simp only [output163_eq, output50_eq]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages700.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1795 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input165_def]
  simp only [input164_eq, input49_eq]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages700.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1261 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output165_def]
  simp only [output164_eq, output49_eq]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages700.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1828 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input166_def]
  simp only [input165_eq, input46_eq]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages700.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1263 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output166_def]
  simp only [output165_eq, output46_eq]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages700.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1863 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages700.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1861 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages700.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1859 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages700.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1857 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input170_def]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages700.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1855 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input171_def]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages700.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1853 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input172_def]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages700.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1851 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages700.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1849 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages700.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1847 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages700.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1845 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages700.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1843 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages700.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1841 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages700.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1839 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages700.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1837 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages700.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1835 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages700.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_5 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages700.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1836 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input183_def]
  simp only [input182_eq, input181_eq]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages700.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1838 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input184_def]
  simp only [input183_eq, input180_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages700.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1840 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input185_def]
  simp only [input184_eq, input179_eq]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages700.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1842 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input186_def]
  simp only [input185_eq, input178_eq]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages700.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1844 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input187_def]
  simp only [input186_eq, input177_eq]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages700.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1846 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input188_def]
  simp only [input187_eq, input176_eq]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages700.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1848 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input189_def]
  simp only [input188_eq, input175_eq]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages700.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1850 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input190_def]
  simp only [input189_eq, input174_eq]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages700.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1852 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input191_def]
  simp only [input190_eq, input173_eq]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages700.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1854 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input192_def]
  simp only [input191_eq, input172_eq]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages700.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1856 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input193_def]
  simp only [input192_eq, input171_eq]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages700.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1858 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input194_def]
  simp only [input193_eq, input170_eq]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages700.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1860 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input195_def]
  simp only [input194_eq, input169_eq]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages700.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1862 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input196_def]
  simp only [input195_eq, input168_eq]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages700.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1864 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input197_def]
  simp only [input196_eq, input167_eq]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages700.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1834 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input198_def]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages700.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1264 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output198_def]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages700.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1865 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input199_def]
  simp only [input198_eq, input197_eq]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages700.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1264 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output199_def]
  simp only [output198_eq]

theorem input200_eq : InitECandidate.Proofs.DeadStages700.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_638 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages700.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_416 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages700.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1831 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages700.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input202_def]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages700.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output202_def]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages700.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1829 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages700.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1830 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input204_def]
  simp only [input203_eq, input202_eq]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages700.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output204_def]
  simp only [output202_eq]

theorem input205_eq : InitECandidate.Proofs.DeadStages700.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1832 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input205_def]
  simp only [input204_eq, input201_eq]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages700.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output205_def]
  simp only [output204_eq]

theorem input206_eq : InitECandidate.Proofs.DeadStages700.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1833 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input206_def]
  simp only [input205_eq, input200_eq]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages700.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_901 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output206_def]
  simp only [output205_eq, output200_eq]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages700.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1866 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input207_def]
  simp only [input206_eq, input199_eq]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages700.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1265 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output207_def]
  simp only [output206_eq, output199_eq]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages700.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1867 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input208_def]
  simp only [input166_eq, input207_eq]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages700.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1266 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output208_def]
  simp only [output166_eq, output207_eq]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages700.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1645 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages700.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1124 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages700.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1644 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input210_def]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages700.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1123 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages700.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1646 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input211_def]
  simp only [input210_eq, input209_eq]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages700.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1125 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output211_def]
  simp only [output210_eq, output209_eq]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages700.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1868 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input212_def]
  simp only [input211_eq, input208_eq]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages700.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1267 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output212_def]
  simp only [output211_eq, output208_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages700.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1869 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input213_def]
  simp only [input212_eq, input13_eq]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages700.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1268 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output213_def]
  simp only [output212_eq, output13_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages700.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1871 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input214_def]
  simp only [input213_eq, input12_eq]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages700.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1270 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output214_def]
  simp only [output213_eq, output12_eq]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages700.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1872 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input215_def]
  simp only [input214_eq]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages700.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1271 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output215_def]
  simp only [output214_eq]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages700.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1642 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages700.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1122 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages700.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_5 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages700.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1643 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input218_def]
  simp only [input217_eq, input216_eq]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages700.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1122 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output218_def]
  simp only [output216_eq]

theorem input219_eq : InitECandidate.Proofs.DeadStages700.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1873 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input219_def]
  simp only [input218_eq, input215_eq]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages700.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1272 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output219_def]
  simp only [output218_eq, output215_eq]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages700.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages700.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages700.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1639 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages700.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1119 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages700.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages700.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages700.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1634 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages700.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1114 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages700.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1600 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages700.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1089 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages700.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1635 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input225_def]
  simp only [input224_eq, input223_eq]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages700.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1115 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output225_def]
  simp only [output224_eq, output223_eq]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages700.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1599 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages700.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1088 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages700.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1636 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input227_def]
  simp only [input226_eq, input225_eq]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages700.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1116 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output227_def]
  simp only [output226_eq, output225_eq]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages700.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1597 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages700.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1086 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages700.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1595 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input229_def]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages700.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1084 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages700.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1593 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages700.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1082 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages700.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1591 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages700.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1080 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages700.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1588 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages700.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1077 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages700.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1587 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages700.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1076 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages700.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1589 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input234_def]
  simp only [input233_eq, input232_eq]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages700.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1078 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output234_def]
  simp only [output233_eq, output232_eq]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages700.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1584 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages700.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1073 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages700.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1583 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages700.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1072 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages700.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1585 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input237_def]
  simp only [input236_eq, input235_eq]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages700.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1074 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output237_def]
  simp only [output236_eq, output235_eq]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages700.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1580 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input238_def]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages700.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1069 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages700.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1579 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages700.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1068 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages700.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1581 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input240_def]
  simp only [input239_eq, input238_eq]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages700.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1070 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output240_def]
  simp only [output239_eq, output238_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages700.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1576 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input241_def]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages700.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1065 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output241_def]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages700.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1575 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input242_def]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages700.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1064 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages700.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1577 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input243_def]
  simp only [input242_eq, input241_eq]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages700.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1066 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output243_def]
  simp only [output242_eq, output241_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages700.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input244_def]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages700.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages700.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1570 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input245_def]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages700.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_29 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages700.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages700.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1568 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages700.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1569 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input248_def]
  simp only [input247_eq, input246_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages700.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output248_def]
  simp only [output246_eq]

theorem input249_eq : InitECandidate.Proofs.DeadStages700.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1571 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input249_def]
  simp only [input248_eq, input245_eq]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages700.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_17 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output249_def]
  simp only [output248_eq]

theorem input250_eq : InitECandidate.Proofs.DeadStages700.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1530 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input250_def]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages700.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1027 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output250_def]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages700.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1528 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input251_def]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages700.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1025 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output251_def]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages700.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1526 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input252_def]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages700.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1023 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output252_def]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages700.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input253_def]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages700.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1021 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output253_def]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages700.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input254_def]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages700.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1019 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output254_def]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages700.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_2_1520 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages700.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel700.word700_3_1017 := by
  rw [InitECandidate.Proofs.DeadStages700.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel700.AgreementsParallel
