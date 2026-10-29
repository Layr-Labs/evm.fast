import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel875.Data2
import InitECandidate.Proofs.WordStages.Parallel875.Data3
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel875.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages875.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4830 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages875.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3219 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages875.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4829 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages875.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3218 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages875.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4831 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages875.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3220 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages875.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4827 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages875.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3216 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages875.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages875.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages875.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4803 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages875.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4801 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages875.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4799 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages875.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4797 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages875.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4795 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages875.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_5 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages875.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4796 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input11_def]
  simp only [input10_eq, input9_eq]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages875.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4798 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input12_def]
  simp only [input11_eq, input8_eq]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages875.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4800 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input13_def]
  simp only [input12_eq, input7_eq]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages875.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4802 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input14_def]
  simp only [input13_eq, input6_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages875.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4804 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input15_def]
  simp only [input14_eq, input5_eq]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages875.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4794 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input16_def]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages875.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3209 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages875.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4805 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input17_def]
  simp only [input16_eq, input15_eq]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages875.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3209 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output17_def]
  simp only [output16_eq]

theorem input18_eq : InitECandidate.Proofs.DeadStages875.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages875.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages875.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4789 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages875.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3204 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages875.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4767 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages875.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3197 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages875.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4790 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input21_def]
  simp only [input20_eq, input19_eq]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages875.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3205 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output21_def]
  simp only [output20_eq, output19_eq]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages875.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4766 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages875.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3196 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages875.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4791 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input23_def]
  simp only [input22_eq, input21_eq]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages875.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3206 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output23_def]
  simp only [output22_eq, output21_eq]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages875.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4763 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages875.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3193 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages875.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4762 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages875.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3192 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages875.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4764 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input26_def]
  simp only [input25_eq, input24_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages875.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3194 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output26_def]
  simp only [output25_eq, output24_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages875.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages875.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages875.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4757 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages875.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3187 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages875.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4735 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input29_def]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages875.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3180 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages875.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4758 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input30_def]
  simp only [input29_eq, input28_eq]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages875.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3188 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output30_def]
  simp only [output29_eq, output28_eq]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages875.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4734 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input31_def]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages875.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3179 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages875.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4759 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input32_def]
  simp only [input31_eq, input30_eq]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages875.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3189 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output32_def]
  simp only [output31_eq, output30_eq]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages875.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4732 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input33_def]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages875.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3177 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages875.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4730 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages875.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages875.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages875.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4728 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages875.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4729 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input37_def]
  simp only [input36_eq, input35_eq]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages875.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output37_def]
  simp only [output35_eq]

theorem input38_eq : InitECandidate.Proofs.DeadStages875.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4731 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input38_def]
  simp only [input37_eq, input34_eq]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages875.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output38_def]
  simp only [output37_eq]

theorem input39_eq : InitECandidate.Proofs.DeadStages875.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4733 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input39_def]
  simp only [input38_eq, input33_eq]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages875.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3178 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output39_def]
  simp only [output38_eq, output33_eq]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages875.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4760 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input40_def]
  simp only [input39_eq, input32_eq]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages875.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3190 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output40_def]
  simp only [output39_eq, output32_eq]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages875.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4761 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input41_def]
  simp only [input40_eq, input27_eq]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages875.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3191 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output41_def]
  simp only [output40_eq, output27_eq]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages875.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4765 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input42_def]
  simp only [input41_eq, input26_eq]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages875.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3195 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output42_def]
  simp only [output41_eq, output26_eq]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages875.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4792 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input43_def]
  simp only [input42_eq, input23_eq]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages875.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3207 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output43_def]
  simp only [output42_eq, output23_eq]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages875.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4793 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input44_def]
  simp only [input43_eq, input18_eq]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages875.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3208 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output44_def]
  simp only [output43_eq, output18_eq]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages875.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4806 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input45_def]
  simp only [input44_eq, input17_eq]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages875.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3210 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output45_def]
  simp only [output44_eq, output17_eq]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages875.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4820 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages875.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4818 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages875.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4816 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages875.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4814 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages875.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4812 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages875.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_5 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages875.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4813 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input52_def]
  simp only [input51_eq, input50_eq]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages875.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4815 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input53_def]
  simp only [input52_eq, input49_eq]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages875.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4817 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input54_def]
  simp only [input53_eq, input48_eq]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages875.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4819 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input55_def]
  simp only [input54_eq, input47_eq]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages875.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4821 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input56_def]
  simp only [input55_eq, input46_eq]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages875.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4811 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages875.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3211 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages875.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4822 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input58_def]
  simp only [input57_eq, input56_eq]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages875.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3211 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output58_def]
  simp only [output57_eq]

theorem input59_eq : InitECandidate.Proofs.DeadStages875.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4809 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages875.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages875.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages875.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4807 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages875.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4808 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input62_def]
  simp only [input61_eq, input60_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages875.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output62_def]
  simp only [output60_eq]

theorem input63_eq : InitECandidate.Proofs.DeadStages875.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4810 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input63_def]
  simp only [input62_eq, input59_eq]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages875.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output63_def]
  simp only [output62_eq]

theorem input64_eq : InitECandidate.Proofs.DeadStages875.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4823 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input64_def]
  simp only [input63_eq, input58_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages875.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3212 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output64_def]
  simp only [output63_eq, output58_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages875.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4824 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input65_def]
  simp only [input45_eq, input64_eq]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages875.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3213 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output65_def]
  simp only [output45_eq, output64_eq]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages875.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4726 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages875.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3175 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages875.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4724 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages875.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3173 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages875.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4721 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages875.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3170 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages875.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4720 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages875.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3169 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages875.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4722 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input70_def]
  simp only [input69_eq, input68_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages875.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3171 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output70_def]
  simp only [output69_eq, output68_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages875.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages875.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages875.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4715 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input72_def]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages875.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3165 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output72_def]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages875.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_2 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages875.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4716 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input74_def]
  simp only [input73_eq, input72_eq]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages875.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3165 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output74_def]
  simp only [output72_eq]

theorem input75_eq : InitECandidate.Proofs.DeadStages875.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4693 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages875.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3158 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages875.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4717 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages875.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_3166 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages875.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_29 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages875.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_3_11 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages875.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4495 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages875.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4493 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages875.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4491 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages875.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4489 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages875.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4487 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages875.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4485 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages875.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4483 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input84_def]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages875.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4481 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages875.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4479 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input86_def]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages875.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4477 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages875.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4475 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages875.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4473 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages875.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4471 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages875.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4469 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages875.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4467 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages875.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4465 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages875.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4463 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages875.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4461 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages875.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4459 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages875.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4457 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages875.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4455 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages875.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4453 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input99_def]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages875.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4451 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages875.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4449 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages875.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4447 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input102_def]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages875.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4445 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages875.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4443 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages875.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4441 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages875.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4439 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages875.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4437 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages875.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4435 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages875.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4433 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages875.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4431 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages875.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4429 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages875.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4427 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages875.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4425 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages875.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4423 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages875.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4421 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages875.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4419 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages875.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4417 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages875.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4415 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input118_def]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages875.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4413 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages875.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4411 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages875.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4409 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages875.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4407 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages875.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4405 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages875.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4403 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages875.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4401 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages875.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4399 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages875.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4397 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages875.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4395 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages875.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4393 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages875.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4391 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages875.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4389 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages875.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4387 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input132_def]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages875.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4385 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages875.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4383 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages875.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4381 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages875.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4379 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages875.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4377 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages875.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4375 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input138_def]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages875.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4373 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages875.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4371 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages875.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4369 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages875.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4367 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages875.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4365 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input143_def]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages875.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4363 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages875.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4361 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages875.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4359 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages875.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4357 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages875.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4355 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages875.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4353 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input149_def]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages875.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4351 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages875.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4349 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages875.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4347 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages875.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4345 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages875.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4343 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages875.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4341 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages875.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4339 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input156_def]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages875.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4337 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input157_def]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages875.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4335 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input158_def]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages875.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4333 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages875.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4331 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages875.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4329 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages875.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4327 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages875.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4325 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages875.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4323 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages875.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4321 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input165_def]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages875.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4319 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages875.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4317 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages875.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4315 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input168_def]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages875.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4313 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages875.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_5 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input170_def]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages875.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4314 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input171_def]
  simp only [input170_eq, input169_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages875.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4316 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input172_def]
  simp only [input171_eq, input168_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages875.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4318 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input173_def]
  simp only [input172_eq, input167_eq]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages875.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4320 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input174_def]
  simp only [input173_eq, input166_eq]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages875.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4322 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input175_def]
  simp only [input174_eq, input165_eq]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages875.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4324 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input176_def]
  simp only [input175_eq, input164_eq]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages875.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4326 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input177_def]
  simp only [input176_eq, input163_eq]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages875.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4328 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input178_def]
  simp only [input177_eq, input162_eq]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages875.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4330 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input179_def]
  simp only [input178_eq, input161_eq]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages875.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4332 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input180_def]
  simp only [input179_eq, input160_eq]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages875.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4334 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input181_def]
  simp only [input180_eq, input159_eq]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages875.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4336 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input182_def]
  simp only [input181_eq, input158_eq]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages875.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4338 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input183_def]
  simp only [input182_eq, input157_eq]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages875.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4340 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input184_def]
  simp only [input183_eq, input156_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages875.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4342 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input185_def]
  simp only [input184_eq, input155_eq]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages875.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4344 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input186_def]
  simp only [input185_eq, input154_eq]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages875.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4346 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input187_def]
  simp only [input186_eq, input153_eq]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages875.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4348 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input188_def]
  simp only [input187_eq, input152_eq]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages875.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4350 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input189_def]
  simp only [input188_eq, input151_eq]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages875.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4352 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input190_def]
  simp only [input189_eq, input150_eq]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages875.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4354 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input191_def]
  simp only [input190_eq, input149_eq]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages875.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4356 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input192_def]
  simp only [input191_eq, input148_eq]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages875.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4358 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input193_def]
  simp only [input192_eq, input147_eq]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages875.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4360 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input194_def]
  simp only [input193_eq, input146_eq]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages875.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4362 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input195_def]
  simp only [input194_eq, input145_eq]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages875.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4364 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input196_def]
  simp only [input195_eq, input144_eq]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages875.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4366 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input197_def]
  simp only [input196_eq, input143_eq]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages875.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4368 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input198_def]
  simp only [input197_eq, input142_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages875.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4370 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input199_def]
  simp only [input198_eq, input141_eq]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages875.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4372 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input200_def]
  simp only [input199_eq, input140_eq]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages875.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4374 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input201_def]
  simp only [input200_eq, input139_eq]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages875.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4376 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input202_def]
  simp only [input201_eq, input138_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages875.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4378 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input203_def]
  simp only [input202_eq, input137_eq]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages875.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4380 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input204_def]
  simp only [input203_eq, input136_eq]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages875.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4382 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input205_def]
  simp only [input204_eq, input135_eq]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages875.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4384 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input206_def]
  simp only [input205_eq, input134_eq]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages875.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4386 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input207_def]
  simp only [input206_eq, input133_eq]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages875.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4388 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input208_def]
  simp only [input207_eq, input132_eq]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages875.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4390 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input209_def]
  simp only [input208_eq, input131_eq]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages875.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4392 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input210_def]
  simp only [input209_eq, input130_eq]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages875.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4394 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input211_def]
  simp only [input210_eq, input129_eq]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages875.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4396 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input212_def]
  simp only [input211_eq, input128_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages875.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4398 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input213_def]
  simp only [input212_eq, input127_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages875.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4400 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input214_def]
  simp only [input213_eq, input126_eq]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages875.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4402 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input215_def]
  simp only [input214_eq, input125_eq]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages875.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4404 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input216_def]
  simp only [input215_eq, input124_eq]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages875.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4406 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input217_def]
  simp only [input216_eq, input123_eq]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages875.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4408 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input218_def]
  simp only [input217_eq, input122_eq]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages875.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4410 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input219_def]
  simp only [input218_eq, input121_eq]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages875.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4412 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input220_def]
  simp only [input219_eq, input120_eq]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages875.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4414 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input221_def]
  simp only [input220_eq, input119_eq]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages875.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4416 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input222_def]
  simp only [input221_eq, input118_eq]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages875.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4418 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input223_def]
  simp only [input222_eq, input117_eq]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages875.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4420 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input224_def]
  simp only [input223_eq, input116_eq]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages875.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4422 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input225_def]
  simp only [input224_eq, input115_eq]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages875.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4424 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input226_def]
  simp only [input225_eq, input114_eq]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages875.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4426 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input227_def]
  simp only [input226_eq, input113_eq]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages875.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4428 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input228_def]
  simp only [input227_eq, input112_eq]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages875.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4430 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input229_def]
  simp only [input228_eq, input111_eq]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages875.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4432 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input230_def]
  simp only [input229_eq, input110_eq]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages875.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4434 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input231_def]
  simp only [input230_eq, input109_eq]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages875.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4436 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input232_def]
  simp only [input231_eq, input108_eq]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages875.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4438 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input233_def]
  simp only [input232_eq, input107_eq]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages875.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4440 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input234_def]
  simp only [input233_eq, input106_eq]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages875.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4442 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input235_def]
  simp only [input234_eq, input105_eq]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages875.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4444 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input236_def]
  simp only [input235_eq, input104_eq]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages875.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4446 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input237_def]
  simp only [input236_eq, input103_eq]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages875.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4448 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input238_def]
  simp only [input237_eq, input102_eq]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages875.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4450 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input239_def]
  simp only [input238_eq, input101_eq]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages875.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4452 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input240_def]
  simp only [input239_eq, input100_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages875.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4454 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input241_def]
  simp only [input240_eq, input99_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages875.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4456 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input242_def]
  simp only [input241_eq, input98_eq]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages875.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4458 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input243_def]
  simp only [input242_eq, input97_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages875.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4460 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input244_def]
  simp only [input243_eq, input96_eq]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages875.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4462 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input245_def]
  simp only [input244_eq, input95_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages875.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4464 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input246_def]
  simp only [input245_eq, input94_eq]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages875.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4466 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input247_def]
  simp only [input246_eq, input93_eq]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages875.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4468 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input248_def]
  simp only [input247_eq, input92_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages875.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4470 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input249_def]
  simp only [input248_eq, input91_eq]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages875.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4472 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input250_def]
  simp only [input249_eq, input90_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages875.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4474 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input251_def]
  simp only [input250_eq, input89_eq]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages875.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4476 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input252_def]
  simp only [input251_eq, input88_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages875.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4478 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input253_def]
  simp only [input252_eq, input87_eq]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages875.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4480 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input254_def]
  simp only [input253_eq, input86_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages875.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel875.word875_2_4482 := by
  rw [InitECandidate.Proofs.DeadStages875.Parallel.input255_def]
  simp only [input254_eq, input85_eq]
  kernel_rfl

#print axioms input255_eq
end InitECandidate.Proofs.WordStages.Parallel875.AgreementsParallel
