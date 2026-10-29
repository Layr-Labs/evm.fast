import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel656.Data2
import InitECandidate.Proofs.WordStages.Parallel656.Data3
import InitECandidate.Proofs.DeadStages656.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel656.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages656.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1824 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages656.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1224 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages656.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1823 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages656.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1223 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages656.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1825 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages656.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1225 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages656.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1821 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages656.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1221 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages656.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1819 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages656.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1219 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages656.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1817 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages656.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1217 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages656.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1815 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages656.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1215 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages656.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1813 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages656.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1213 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages656.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1811 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages656.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1211 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages656.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1809 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input9_def]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages656.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1209 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages656.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1807 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages656.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1207 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages656.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages656.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages656.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1802 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages656.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1202 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages656.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1768 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages656.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1177 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages656.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1803 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages656.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1203 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages656.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1767 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages656.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1176 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages656.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1804 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input16_def]
  simp only [input15_eq, input14_eq]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages656.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1204 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output16_def]
  simp only [output15_eq, output14_eq]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages656.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1765 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages656.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1174 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages656.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1763 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages656.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1172 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages656.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1761 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages656.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1170 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages656.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1759 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages656.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1168 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages656.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1757 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages656.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1166 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages656.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1755 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages656.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1164 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages656.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1753 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages656.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1162 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages656.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1751 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages656.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1160 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages656.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages656.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages656.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1746 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input26_def]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages656.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages656.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages656.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1744 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages656.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1745 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input29_def]
  simp only [input28_eq, input27_eq]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages656.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output29_def]
  simp only [output27_eq]

theorem input30_eq : InitECandidate.Proofs.DeadStages656.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1747 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input30_def]
  simp only [input29_eq, input26_eq]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages656.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output30_def]
  simp only [output29_eq]

theorem input31_eq : InitECandidate.Proofs.DeadStages656.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1734 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages656.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages656.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1735 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input33_def]
  simp only [input32_eq, input31_eq]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages656.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1733 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages656.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1736 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input35_def]
  simp only [input34_eq, input33_eq]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages656.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1730 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages656.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1153 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages656.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1729 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages656.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1152 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages656.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1731 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input38_def]
  simp only [input37_eq, input36_eq]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages656.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1154 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output38_def]
  simp only [output37_eq, output36_eq]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages656.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1727 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages656.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1150 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages656.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1725 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages656.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages656.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages656.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1723 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages656.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1724 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input43_def]
  simp only [input42_eq, input41_eq]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages656.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output43_def]
  simp only [output41_eq]

theorem input44_eq : InitECandidate.Proofs.DeadStages656.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1726 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input44_def]
  simp only [input43_eq, input40_eq]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages656.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output44_def]
  simp only [output43_eq]

theorem input45_eq : InitECandidate.Proofs.DeadStages656.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1728 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input45_def]
  simp only [input44_eq, input39_eq]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages656.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1151 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output45_def]
  simp only [output44_eq, output39_eq]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages656.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1732 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input46_def]
  simp only [input45_eq, input38_eq]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages656.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1155 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output46_def]
  simp only [output45_eq, output38_eq]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages656.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1737 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input47_def]
  simp only [input46_eq, input35_eq]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages656.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1155 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output47_def]
  simp only [output46_eq]

theorem input48_eq : InitECandidate.Proofs.DeadStages656.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1739 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages656.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages656.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages656.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1740 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input50_def]
  simp only [input49_eq, input48_eq]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages656.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output50_def]
  simp only [output48_eq]

theorem input51_eq : InitECandidate.Proofs.DeadStages656.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1738 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages656.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1741 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input52_def]
  simp only [input51_eq, input50_eq]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages656.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output52_def]
  simp only [output50_eq]

theorem input53_eq : InitECandidate.Proofs.DeadStages656.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages656.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1742 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input54_def]
  simp only [input53_eq, input52_eq]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages656.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output54_def]
  simp only [output52_eq]

theorem input55_eq : InitECandidate.Proofs.DeadStages656.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1743 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input55_def]
  simp only [input47_eq, input54_eq]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages656.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1156 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output55_def]
  simp only [output47_eq, output54_eq]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages656.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1748 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input56_def]
  simp only [input55_eq, input30_eq]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages656.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1157 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output56_def]
  simp only [output55_eq, output30_eq]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages656.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1721 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages656.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1148 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages656.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1719 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input58_def]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages656.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1146 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages656.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages656.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages656.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1714 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages656.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1141 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages656.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1692 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages656.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1128 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages656.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1715 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input62_def]
  simp only [input61_eq, input60_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages656.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1142 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output62_def]
  simp only [output61_eq, output60_eq]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages656.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1691 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages656.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1127 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages656.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1716 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input64_def]
  simp only [input63_eq, input62_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages656.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1143 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output64_def]
  simp only [output63_eq, output62_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages656.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1689 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages656.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1125 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages656.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1687 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages656.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1123 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages656.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1685 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages656.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1121 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages656.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1683 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages656.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1119 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages656.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1681 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages656.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1679 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input70_def]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages656.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1677 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages656.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1675 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages656.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1673 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages656.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1117 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages656.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1671 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages656.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1115 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages656.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1669 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages656.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1113 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages656.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1667 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input76_def]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages656.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1111 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output76_def]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages656.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1665 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages656.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1109 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages656.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1663 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages656.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1107 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages656.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1661 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages656.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1105 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages656.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1659 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages656.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1103 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages656.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages656.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages656.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1654 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages656.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages656.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages656.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1652 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input84_def]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages656.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1653 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input85_def]
  simp only [input84_eq, input83_eq]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages656.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output85_def]
  simp only [output83_eq]

theorem input86_eq : InitECandidate.Proofs.DeadStages656.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1655 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input86_def]
  simp only [input85_eq, input82_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages656.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output86_def]
  simp only [output85_eq]

theorem input87_eq : InitECandidate.Proofs.DeadStages656.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1642 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages656.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages656.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1643 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input89_def]
  simp only [input88_eq, input87_eq]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages656.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1641 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages656.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1644 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input91_def]
  simp only [input90_eq, input89_eq]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages656.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1638 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages656.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1096 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages656.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1637 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages656.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1095 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages656.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1639 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input94_def]
  simp only [input93_eq, input92_eq]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages656.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1097 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output94_def]
  simp only [output93_eq, output92_eq]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages656.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1635 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages656.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1093 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages656.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1633 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages656.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages656.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages656.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1631 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages656.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1632 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input99_def]
  simp only [input98_eq, input97_eq]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages656.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output99_def]
  simp only [output97_eq]

theorem input100_eq : InitECandidate.Proofs.DeadStages656.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1634 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input100_def]
  simp only [input99_eq, input96_eq]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages656.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output100_def]
  simp only [output99_eq]

theorem input101_eq : InitECandidate.Proofs.DeadStages656.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1636 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input101_def]
  simp only [input100_eq, input95_eq]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages656.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1094 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output101_def]
  simp only [output100_eq, output95_eq]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages656.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1640 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input102_def]
  simp only [input101_eq, input94_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages656.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1098 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output102_def]
  simp only [output101_eq, output94_eq]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages656.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1645 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input103_def]
  simp only [input102_eq, input91_eq]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages656.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1098 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output103_def]
  simp only [output102_eq]

theorem input104_eq : InitECandidate.Proofs.DeadStages656.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1647 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input104_def]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages656.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages656.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages656.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1648 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input106_def]
  simp only [input105_eq, input104_eq]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages656.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output106_def]
  simp only [output104_eq]

theorem input107_eq : InitECandidate.Proofs.DeadStages656.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1646 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages656.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1649 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input108_def]
  simp only [input107_eq, input106_eq]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages656.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output108_def]
  simp only [output106_eq]

theorem input109_eq : InitECandidate.Proofs.DeadStages656.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages656.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1650 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input110_def]
  simp only [input109_eq, input108_eq]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages656.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output110_def]
  simp only [output108_eq]

theorem input111_eq : InitECandidate.Proofs.DeadStages656.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1651 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input111_def]
  simp only [input103_eq, input110_eq]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages656.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1099 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output111_def]
  simp only [output103_eq, output110_eq]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages656.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1656 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input112_def]
  simp only [input111_eq, input86_eq]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages656.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1100 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output112_def]
  simp only [output111_eq, output86_eq]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages656.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1629 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages656.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1091 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages656.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1627 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input114_def]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages656.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1089 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages656.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages656.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages656.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1622 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages656.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1084 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages656.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1584 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages656.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1055 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages656.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1623 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input118_def]
  simp only [input117_eq, input116_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages656.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1085 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output118_def]
  simp only [output117_eq, output116_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages656.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1583 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages656.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1054 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages656.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1624 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input120_def]
  simp only [input119_eq, input118_eq]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages656.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1086 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output120_def]
  simp only [output119_eq, output118_eq]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages656.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1581 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input121_def]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages656.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1052 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages656.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1579 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages656.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1050 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages656.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1577 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages656.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1048 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages656.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1575 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages656.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1046 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages656.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1573 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages656.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1571 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages656.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1569 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages656.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1567 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages656.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1565 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input129_def]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages656.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1044 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages656.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1563 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input130_def]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages656.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1042 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages656.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1561 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input131_def]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages656.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1040 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages656.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1559 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input132_def]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages656.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1038 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages656.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages656.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages656.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1554 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages656.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages656.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages656.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1552 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages656.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1553 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input137_def]
  simp only [input136_eq, input135_eq]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages656.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output137_def]
  simp only [output135_eq]

theorem input138_eq : InitECandidate.Proofs.DeadStages656.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1555 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input138_def]
  simp only [input137_eq, input134_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages656.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output138_def]
  simp only [output137_eq]

theorem input139_eq : InitECandidate.Proofs.DeadStages656.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1542 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages656.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages656.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1543 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input141_def]
  simp only [input140_eq, input139_eq]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages656.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1541 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages656.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1544 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input143_def]
  simp only [input142_eq, input141_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages656.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1538 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input144_def]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages656.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1031 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages656.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1537 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages656.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1030 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages656.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1539 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input146_def]
  simp only [input145_eq, input144_eq]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages656.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1032 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output146_def]
  simp only [output145_eq, output144_eq]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages656.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1535 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input147_def]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages656.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1028 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages656.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1533 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages656.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input149_def]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages656.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output149_def]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages656.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1531 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages656.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1532 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input151_def]
  simp only [input150_eq, input149_eq]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages656.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output151_def]
  simp only [output149_eq]

theorem input152_eq : InitECandidate.Proofs.DeadStages656.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1534 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input152_def]
  simp only [input151_eq, input148_eq]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages656.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output152_def]
  simp only [output151_eq]

theorem input153_eq : InitECandidate.Proofs.DeadStages656.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1536 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input153_def]
  simp only [input152_eq, input147_eq]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages656.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1029 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output153_def]
  simp only [output152_eq, output147_eq]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages656.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1540 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input154_def]
  simp only [input153_eq, input146_eq]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages656.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1033 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output154_def]
  simp only [output153_eq, output146_eq]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages656.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1545 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input155_def]
  simp only [input154_eq, input143_eq]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages656.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1033 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output155_def]
  simp only [output154_eq]

theorem input156_eq : InitECandidate.Proofs.DeadStages656.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1547 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input156_def]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages656.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages656.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input157_def]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages656.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1548 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input158_def]
  simp only [input157_eq, input156_eq]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages656.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output158_def]
  simp only [output156_eq]

theorem input159_eq : InitECandidate.Proofs.DeadStages656.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1546 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages656.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1549 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input160_def]
  simp only [input159_eq, input158_eq]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages656.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output160_def]
  simp only [output158_eq]

theorem input161_eq : InitECandidate.Proofs.DeadStages656.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages656.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1550 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input162_def]
  simp only [input161_eq, input160_eq]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages656.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_39 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output162_def]
  simp only [output160_eq]

theorem input163_eq : InitECandidate.Proofs.DeadStages656.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1551 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input163_def]
  simp only [input155_eq, input162_eq]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages656.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1034 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output163_def]
  simp only [output155_eq, output162_eq]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages656.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1556 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input164_def]
  simp only [input163_eq, input138_eq]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages656.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1035 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output164_def]
  simp only [output163_eq, output138_eq]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages656.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1529 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input165_def]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages656.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1026 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output165_def]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages656.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1527 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input166_def]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages656.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1024 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages656.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input167_def]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages656.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages656.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input168_def]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages656.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1019 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages656.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1500 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input169_def]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages656.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages656.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1523 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input170_def]
  simp only [input169_eq, input168_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages656.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1020 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output170_def]
  simp only [output169_eq, output168_eq]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages656.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1499 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input171_def]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages656.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1005 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output171_def]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages656.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input172_def]
  simp only [input171_eq, input170_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages656.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1021 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output172_def]
  simp only [output171_eq, output170_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages656.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1497 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages656.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1003 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages656.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1495 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input174_def]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages656.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_1001 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages656.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1493 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages656.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_999 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages656.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1491 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages656.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_997 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages656.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1489 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages656.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_995 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages656.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1487 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages656.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_993 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages656.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1485 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input179_def]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages656.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_991 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages656.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1483 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages656.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_989 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages656.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages656.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages656.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1478 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input182_def]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages656.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_984 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages656.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1444 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input183_def]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages656.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_959 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output183_def]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages656.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1479 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input184_def]
  simp only [input183_eq, input182_eq]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages656.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_985 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output184_def]
  simp only [output183_eq, output182_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages656.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1443 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages656.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_958 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages656.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1480 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input186_def]
  simp only [input185_eq, input184_eq]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages656.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_986 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output186_def]
  simp only [output185_eq, output184_eq]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages656.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1441 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages656.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_956 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages656.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1439 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages656.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_954 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages656.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1437 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input189_def]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages656.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_952 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages656.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1435 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages656.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_950 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages656.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1433 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages656.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_948 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages656.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1431 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages656.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_946 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages656.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1429 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages656.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_944 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages656.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1427 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages656.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_942 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages656.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages656.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages656.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1422 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input196_def]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages656.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_937 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output196_def]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages656.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1400 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input197_def]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages656.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_930 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages656.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1423 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input198_def]
  simp only [input197_eq, input196_eq]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages656.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_938 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output198_def]
  simp only [output197_eq, output196_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages656.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1399 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages656.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_929 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages656.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1424 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input200_def]
  simp only [input199_eq, input198_eq]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages656.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_939 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output200_def]
  simp only [output199_eq, output198_eq]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages656.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1397 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages656.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_927 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages656.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1394 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input202_def]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages656.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_924 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output202_def]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages656.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1393 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages656.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_923 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages656.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1395 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input204_def]
  simp only [input203_eq, input202_eq]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages656.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_925 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output204_def]
  simp only [output203_eq, output202_eq]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages656.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1390 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages656.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_920 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages656.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1389 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages656.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_919 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages656.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1391 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input207_def]
  simp only [input206_eq, input205_eq]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages656.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_921 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output207_def]
  simp only [output206_eq, output205_eq]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages656.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1386 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input208_def]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages656.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_916 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages656.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1385 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages656.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_915 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages656.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1387 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input210_def]
  simp only [input209_eq, input208_eq]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages656.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_917 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output210_def]
  simp only [output209_eq, output208_eq]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages656.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1382 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input211_def]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages656.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_912 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages656.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1381 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input212_def]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages656.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_911 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output212_def]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages656.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1383 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input213_def]
  simp only [input212_eq, input211_eq]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages656.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_913 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output213_def]
  simp only [output212_eq, output211_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages656.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input214_def]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages656.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages656.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1376 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages656.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_906 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages656.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1342 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input216_def]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages656.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_881 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages656.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1377 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input217_def]
  simp only [input216_eq, input215_eq]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages656.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_907 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output217_def]
  simp only [output216_eq, output215_eq]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages656.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1341 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages656.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_880 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages656.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1378 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input219_def]
  simp only [input218_eq, input217_eq]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages656.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_908 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output219_def]
  simp only [output218_eq, output217_eq]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages656.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1339 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages656.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_878 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages656.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1337 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages656.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_876 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages656.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1335 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages656.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_874 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages656.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1333 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages656.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_872 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages656.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages656.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages656.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1328 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages656.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_38 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages656.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages656.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1326 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages656.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1327 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input228_def]
  simp only [input227_eq, input226_eq]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages656.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output228_def]
  simp only [output226_eq]

theorem input229_eq : InitECandidate.Proofs.DeadStages656.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1329 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input229_def]
  simp only [input228_eq, input225_eq]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages656.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_27 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output229_def]
  simp only [output228_eq]

theorem input230_eq : InitECandidate.Proofs.DeadStages656.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1294 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages656.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_843 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages656.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1292 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages656.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1290 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages656.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_841 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages656.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1288 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages656.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_839 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages656.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1286 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input234_def]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages656.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_837 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages656.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1284 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages656.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_835 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages656.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1282 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages656.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_833 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages656.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1280 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input237_def]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages656.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_831 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages656.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1278 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input238_def]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages656.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_829 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages656.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1276 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages656.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_827 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages656.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1274 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input240_def]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages656.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_826 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output240_def]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages656.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1272 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input241_def]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages656.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_12 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages656.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1273 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input243_def]
  simp only [input242_eq, input241_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages656.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1275 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input244_def]
  simp only [input243_eq, input240_eq]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages656.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_826 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output244_def]
  simp only [output240_eq]

theorem input245_eq : InitECandidate.Proofs.DeadStages656.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1277 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input245_def]
  simp only [input244_eq, input239_eq]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages656.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_828 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output245_def]
  simp only [output244_eq, output239_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages656.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1279 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input246_def]
  simp only [input245_eq, input238_eq]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages656.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_830 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output246_def]
  simp only [output245_eq, output238_eq]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages656.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1281 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input247_def]
  simp only [input246_eq, input237_eq]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages656.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_832 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output247_def]
  simp only [output246_eq, output237_eq]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages656.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1283 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input248_def]
  simp only [input247_eq, input236_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages656.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_834 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output248_def]
  simp only [output247_eq, output236_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages656.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1285 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input249_def]
  simp only [input248_eq, input235_eq]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages656.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_836 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output249_def]
  simp only [output248_eq, output235_eq]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages656.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1287 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input250_def]
  simp only [input249_eq, input234_eq]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages656.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_838 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output250_def]
  simp only [output249_eq, output234_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages656.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1289 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input251_def]
  simp only [input250_eq, input233_eq]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages656.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_840 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output251_def]
  simp only [output250_eq, output233_eq]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages656.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1291 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input252_def]
  simp only [input251_eq, input232_eq]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages656.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_842 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output252_def]
  simp only [output251_eq, output232_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages656.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1293 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input253_def]
  simp only [input252_eq, input231_eq]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages656.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_842 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output253_def]
  simp only [output252_eq]

theorem input254_eq : InitECandidate.Proofs.DeadStages656.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1295 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input254_def]
  simp only [input253_eq, input230_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages656.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_844 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output254_def]
  simp only [output253_eq, output230_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages656.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_2_1271 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages656.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel656.word656_3_825 := by
  rw [InitECandidate.Proofs.DeadStages656.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel656.AgreementsParallel
