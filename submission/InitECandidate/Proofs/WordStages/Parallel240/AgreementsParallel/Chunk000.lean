import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel240.Data2
import InitECandidate.Proofs.WordStages.Parallel240.Data3
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages240.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4799 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages240.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4231 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4798 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4230 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4800 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4232 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages240.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4796 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages240.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4228 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages240.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4793 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages240.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4225 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages240.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4792 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages240.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4224 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages240.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4794 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input6_def]
  simp only [input5_eq, input4_eq]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages240.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4226 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output6_def]
  simp only [output5_eq, output4_eq]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages240.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4790 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages240.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4222 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages240.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4788 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages240.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages240.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4785 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input9_def]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages240.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4219 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages240.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4783 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input10_def]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages240.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4217 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages240.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4781 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages240.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4215 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages240.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4779 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages240.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4213 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages240.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4778 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages240.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4212 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages240.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4780 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages240.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4214 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages240.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4782 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input15_def]
  simp only [input14_eq, input11_eq]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages240.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4216 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output15_def]
  simp only [output14_eq, output11_eq]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages240.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4784 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input16_def]
  simp only [input15_eq, input10_eq]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages240.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4218 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output16_def]
  simp only [output15_eq, output10_eq]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages240.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4786 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input17_def]
  simp only [input16_eq, input9_eq]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages240.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4220 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output17_def]
  simp only [output16_eq, output9_eq]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages240.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4775 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages240.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4209 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages240.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4774 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages240.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4208 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages240.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4776 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input20_def]
  simp only [input19_eq, input18_eq]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages240.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4210 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output20_def]
  simp only [output19_eq, output18_eq]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages240.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4772 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages240.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4206 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages240.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4770 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input22_def]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages240.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output22_def]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages240.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4767 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages240.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4203 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages240.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4765 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages240.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4201 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages240.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4763 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages240.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4199 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages240.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4761 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input26_def]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages240.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4197 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output26_def]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages240.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4760 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages240.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4196 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages240.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4762 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input28_def]
  simp only [input27_eq, input26_eq]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages240.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4198 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output28_def]
  simp only [output27_eq, output26_eq]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages240.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4764 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input29_def]
  simp only [input28_eq, input25_eq]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages240.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4200 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output29_def]
  simp only [output28_eq, output25_eq]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages240.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4766 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input30_def]
  simp only [input29_eq, input24_eq]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages240.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4202 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output30_def]
  simp only [output29_eq, output24_eq]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages240.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4768 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input31_def]
  simp only [input30_eq, input23_eq]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages240.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4204 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output31_def]
  simp only [output30_eq, output23_eq]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages240.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4757 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input32_def]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages240.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4193 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages240.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4756 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input33_def]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages240.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4192 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages240.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4758 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input34_def]
  simp only [input33_eq, input32_eq]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages240.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4194 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output34_def]
  simp only [output33_eq, output32_eq]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages240.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4754 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages240.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4190 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages240.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4752 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input36_def]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages240.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages240.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4749 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages240.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4187 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages240.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4747 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input38_def]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages240.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4185 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output38_def]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages240.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4745 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages240.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4183 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages240.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4743 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages240.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4181 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages240.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4742 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages240.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4180 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages240.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4744 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input42_def]
  simp only [input41_eq, input40_eq]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages240.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4182 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output42_def]
  simp only [output41_eq, output40_eq]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages240.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4746 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input43_def]
  simp only [input42_eq, input39_eq]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages240.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4184 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output43_def]
  simp only [output42_eq, output39_eq]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages240.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4748 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input44_def]
  simp only [input43_eq, input38_eq]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages240.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4186 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output44_def]
  simp only [output43_eq, output38_eq]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages240.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4750 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input45_def]
  simp only [input44_eq, input37_eq]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages240.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4188 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output45_def]
  simp only [output44_eq, output37_eq]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages240.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4739 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input46_def]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages240.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4177 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages240.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4738 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input47_def]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages240.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4176 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output47_def]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages240.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4740 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input48_def]
  simp only [input47_eq, input46_eq]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages240.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4178 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output48_def]
  simp only [output47_eq, output46_eq]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages240.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4736 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input49_def]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages240.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4174 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages240.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4734 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages240.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages240.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4731 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input51_def]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages240.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4171 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages240.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4729 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages240.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4169 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages240.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4727 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages240.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4167 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages240.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4725 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input54_def]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages240.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4165 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages240.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4724 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input55_def]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages240.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4164 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages240.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4726 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input56_def]
  simp only [input55_eq, input54_eq]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages240.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4166 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output56_def]
  simp only [output55_eq, output54_eq]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages240.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4728 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input57_def]
  simp only [input56_eq, input53_eq]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages240.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4168 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output57_def]
  simp only [output56_eq, output53_eq]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages240.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4730 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input58_def]
  simp only [input57_eq, input52_eq]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages240.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4170 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output58_def]
  simp only [output57_eq, output52_eq]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages240.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4732 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input59_def]
  simp only [input58_eq, input51_eq]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages240.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4172 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output59_def]
  simp only [output58_eq, output51_eq]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages240.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4721 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages240.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4161 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages240.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4720 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages240.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4160 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages240.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4722 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input62_def]
  simp only [input61_eq, input60_eq]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages240.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4162 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output62_def]
  simp only [output61_eq, output60_eq]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages240.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4718 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages240.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4158 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages240.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4716 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input64_def]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages240.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output64_def]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages240.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4713 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages240.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4155 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages240.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4711 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages240.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4153 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages240.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4709 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages240.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4151 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages240.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4707 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages240.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4149 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages240.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4706 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages240.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4148 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages240.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4708 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input70_def]
  simp only [input69_eq, input68_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages240.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4150 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output70_def]
  simp only [output69_eq, output68_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages240.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4710 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input71_def]
  simp only [input70_eq, input67_eq]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages240.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4152 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output71_def]
  simp only [output70_eq, output67_eq]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages240.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4712 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input72_def]
  simp only [input71_eq, input66_eq]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages240.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4154 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output72_def]
  simp only [output71_eq, output66_eq]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages240.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4714 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input73_def]
  simp only [input72_eq, input65_eq]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages240.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4156 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output73_def]
  simp only [output72_eq, output65_eq]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages240.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4703 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages240.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4145 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages240.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4702 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages240.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4144 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages240.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4704 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages240.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4146 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages240.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4700 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages240.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4142 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages240.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4698 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages240.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages240.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4695 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages240.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4139 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages240.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4693 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input80_def]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages240.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4137 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output80_def]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages240.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4691 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages240.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4135 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages240.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4689 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages240.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4133 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages240.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4688 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages240.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4132 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages240.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4690 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input84_def]
  simp only [input83_eq, input82_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages240.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4134 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output84_def]
  simp only [output83_eq, output82_eq]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages240.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4692 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input85_def]
  simp only [input84_eq, input81_eq]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages240.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4136 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output85_def]
  simp only [output84_eq, output81_eq]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages240.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4694 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input86_def]
  simp only [input85_eq, input80_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages240.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4138 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output86_def]
  simp only [output85_eq, output80_eq]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages240.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4696 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input87_def]
  simp only [input86_eq, input79_eq]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages240.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4140 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output87_def]
  simp only [output86_eq, output79_eq]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages240.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4685 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input88_def]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages240.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4129 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output88_def]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages240.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4684 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages240.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4128 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages240.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4686 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input90_def]
  simp only [input89_eq, input88_eq]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages240.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4130 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output90_def]
  simp only [output89_eq, output88_eq]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages240.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4682 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages240.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4126 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages240.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4680 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input92_def]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages240.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages240.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4677 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages240.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4123 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages240.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4675 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages240.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4121 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages240.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4673 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages240.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4119 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages240.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4671 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages240.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4117 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages240.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4670 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages240.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4116 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages240.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4672 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input98_def]
  simp only [input97_eq, input96_eq]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages240.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4118 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output98_def]
  simp only [output97_eq, output96_eq]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages240.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4674 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input99_def]
  simp only [input98_eq, input95_eq]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages240.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4120 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output99_def]
  simp only [output98_eq, output95_eq]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages240.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4676 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input100_def]
  simp only [input99_eq, input94_eq]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages240.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4122 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output100_def]
  simp only [output99_eq, output94_eq]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages240.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4678 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input101_def]
  simp only [input100_eq, input93_eq]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages240.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4124 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output101_def]
  simp only [output100_eq, output93_eq]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages240.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4667 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input102_def]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages240.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4113 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output102_def]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages240.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4666 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages240.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4112 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages240.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4668 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input104_def]
  simp only [input103_eq, input102_eq]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages240.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4114 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output104_def]
  simp only [output103_eq, output102_eq]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages240.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4664 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages240.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4110 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages240.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4662 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input106_def]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages240.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages240.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4659 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input107_def]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages240.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4107 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages240.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4657 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input108_def]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages240.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4105 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages240.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4655 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages240.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4103 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages240.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4653 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages240.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4101 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages240.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4652 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input111_def]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages240.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4100 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages240.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4654 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input112_def]
  simp only [input111_eq, input110_eq]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages240.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4102 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output112_def]
  simp only [output111_eq, output110_eq]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages240.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4656 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input113_def]
  simp only [input112_eq, input109_eq]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages240.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4104 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output113_def]
  simp only [output112_eq, output109_eq]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages240.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4658 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input114_def]
  simp only [input113_eq, input108_eq]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages240.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4106 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output114_def]
  simp only [output113_eq, output108_eq]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages240.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4660 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input115_def]
  simp only [input114_eq, input107_eq]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages240.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4108 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output115_def]
  simp only [output114_eq, output107_eq]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages240.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4649 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages240.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4097 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages240.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4648 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages240.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4096 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages240.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4650 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input118_def]
  simp only [input117_eq, input116_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages240.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4098 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output118_def]
  simp only [output117_eq, output116_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages240.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4646 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages240.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4094 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages240.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4644 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input120_def]
  kernel_rfl

theorem output120_eq : InitECandidate.Proofs.DeadStages240.Parallel.output120 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages240.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4641 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input121_def]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages240.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4091 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages240.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4639 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input122_def]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages240.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4089 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages240.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4637 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages240.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4087 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages240.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4635 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages240.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4085 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages240.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4634 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages240.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4084 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages240.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4636 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input126_def]
  simp only [input125_eq, input124_eq]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages240.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4086 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output126_def]
  simp only [output125_eq, output124_eq]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages240.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4638 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input127_def]
  simp only [input126_eq, input123_eq]
  kernel_rfl

theorem output127_eq : InitECandidate.Proofs.DeadStages240.Parallel.output127 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4088 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output127_def]
  simp only [output126_eq, output123_eq]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages240.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4640 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input128_def]
  simp only [input127_eq, input122_eq]
  kernel_rfl

theorem output128_eq : InitECandidate.Proofs.DeadStages240.Parallel.output128 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4090 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output128_def]
  simp only [output127_eq, output122_eq]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages240.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4642 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input129_def]
  simp only [input128_eq, input121_eq]
  kernel_rfl

theorem output129_eq : InitECandidate.Proofs.DeadStages240.Parallel.output129 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4092 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output129_def]
  simp only [output128_eq, output121_eq]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages240.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4631 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input130_def]
  kernel_rfl

theorem output130_eq : InitECandidate.Proofs.DeadStages240.Parallel.output130 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4081 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages240.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4630 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input131_def]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages240.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4080 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages240.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4632 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input132_def]
  simp only [input131_eq, input130_eq]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages240.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4082 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output132_def]
  simp only [output131_eq, output130_eq]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages240.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4628 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages240.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4078 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages240.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4626 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input134_def]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages240.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages240.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4623 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages240.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4075 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages240.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4621 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages240.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4073 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages240.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4619 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages240.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4071 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages240.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4617 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input138_def]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages240.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4069 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output138_def]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages240.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4616 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages240.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4068 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages240.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4618 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input140_def]
  simp only [input139_eq, input138_eq]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages240.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4070 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output140_def]
  simp only [output139_eq, output138_eq]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages240.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4620 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input141_def]
  simp only [input140_eq, input137_eq]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages240.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4072 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output141_def]
  simp only [output140_eq, output137_eq]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages240.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4622 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input142_def]
  simp only [input141_eq, input136_eq]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages240.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4074 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output142_def]
  simp only [output141_eq, output136_eq]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages240.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4624 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input143_def]
  simp only [input142_eq, input135_eq]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages240.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4076 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output143_def]
  simp only [output142_eq, output135_eq]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages240.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4613 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input144_def]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages240.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4065 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages240.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4612 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages240.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4064 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages240.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4614 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input146_def]
  simp only [input145_eq, input144_eq]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages240.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4066 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output146_def]
  simp only [output145_eq, output144_eq]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages240.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4610 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input147_def]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages240.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4062 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages240.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4608 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input148_def]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages240.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages240.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4605 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input149_def]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages240.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4059 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output149_def]
  kernel_rfl

theorem input150_eq : InitECandidate.Proofs.DeadStages240.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4603 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input150_def]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages240.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4057 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output150_def]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages240.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4601 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input151_def]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages240.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4055 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages240.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4599 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input152_def]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages240.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4053 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages240.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4598 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input153_def]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages240.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4052 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output153_def]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages240.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4600 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input154_def]
  simp only [input153_eq, input152_eq]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages240.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4054 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output154_def]
  simp only [output153_eq, output152_eq]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages240.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4602 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input155_def]
  simp only [input154_eq, input151_eq]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages240.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4056 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output155_def]
  simp only [output154_eq, output151_eq]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages240.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4604 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input156_def]
  simp only [input155_eq, input150_eq]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages240.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4058 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output156_def]
  simp only [output155_eq, output150_eq]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages240.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4606 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input157_def]
  simp only [input156_eq, input149_eq]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages240.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4060 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output157_def]
  simp only [output156_eq, output149_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages240.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4595 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input158_def]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages240.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4049 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output158_def]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages240.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4594 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages240.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4048 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages240.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4596 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input160_def]
  simp only [input159_eq, input158_eq]
  kernel_rfl

theorem output160_eq : InitECandidate.Proofs.DeadStages240.Parallel.output160 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4050 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output160_def]
  simp only [output159_eq, output158_eq]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages240.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4592 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input161_def]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages240.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4046 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages240.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4590 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input162_def]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages240.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages240.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4587 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input163_def]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages240.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4043 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages240.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4585 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input164_def]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages240.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4041 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages240.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4583 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input165_def]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages240.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4039 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output165_def]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages240.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4581 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input166_def]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages240.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4037 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages240.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4580 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input167_def]
  kernel_rfl

theorem output167_eq : InitECandidate.Proofs.DeadStages240.Parallel.output167 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4036 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages240.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4582 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input168_def]
  simp only [input167_eq, input166_eq]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages240.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4038 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output168_def]
  simp only [output167_eq, output166_eq]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages240.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4584 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input169_def]
  simp only [input168_eq, input165_eq]
  kernel_rfl

theorem output169_eq : InitECandidate.Proofs.DeadStages240.Parallel.output169 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4040 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output169_def]
  simp only [output168_eq, output165_eq]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages240.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4586 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input170_def]
  simp only [input169_eq, input164_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages240.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4042 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output170_def]
  simp only [output169_eq, output164_eq]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages240.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4588 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input171_def]
  simp only [input170_eq, input163_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages240.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4044 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output171_def]
  simp only [output170_eq, output163_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages240.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4577 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input172_def]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages240.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4033 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output172_def]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages240.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4576 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages240.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4032 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages240.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4578 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input174_def]
  simp only [input173_eq, input172_eq]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages240.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4034 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output174_def]
  simp only [output173_eq, output172_eq]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages240.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4574 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages240.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4030 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages240.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4572 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages240.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages240.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4569 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages240.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4027 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages240.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4567 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages240.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4025 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages240.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4565 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input179_def]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages240.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4023 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages240.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4563 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages240.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4021 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages240.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4562 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages240.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4020 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages240.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4564 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input182_def]
  simp only [input181_eq, input180_eq]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages240.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4022 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output182_def]
  simp only [output181_eq, output180_eq]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages240.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4566 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input183_def]
  simp only [input182_eq, input179_eq]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages240.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4024 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output183_def]
  simp only [output182_eq, output179_eq]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages240.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4568 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input184_def]
  simp only [input183_eq, input178_eq]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages240.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4026 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output184_def]
  simp only [output183_eq, output178_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages240.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4570 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input185_def]
  simp only [input184_eq, input177_eq]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages240.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4028 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output185_def]
  simp only [output184_eq, output177_eq]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages240.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4559 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input186_def]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages240.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4017 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages240.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4558 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages240.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4016 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages240.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4560 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input188_def]
  simp only [input187_eq, input186_eq]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages240.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4018 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output188_def]
  simp only [output187_eq, output186_eq]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages240.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4556 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input189_def]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages240.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4014 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages240.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4554 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages240.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages240.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4551 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages240.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4011 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages240.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4549 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages240.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4009 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages240.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4547 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages240.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4007 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages240.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4545 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages240.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4005 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages240.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4544 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages240.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4004 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages240.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4546 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input196_def]
  simp only [input195_eq, input194_eq]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages240.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4006 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output196_def]
  simp only [output195_eq, output194_eq]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages240.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4548 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input197_def]
  simp only [input196_eq, input193_eq]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages240.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4008 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output197_def]
  simp only [output196_eq, output193_eq]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages240.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4550 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input198_def]
  simp only [input197_eq, input192_eq]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages240.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4010 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output198_def]
  simp only [output197_eq, output192_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages240.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4552 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input199_def]
  simp only [input198_eq, input191_eq]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages240.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4012 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output199_def]
  simp only [output198_eq, output191_eq]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages240.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4541 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages240.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4001 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages240.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4540 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages240.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4000 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages240.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4542 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input202_def]
  simp only [input201_eq, input200_eq]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages240.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_4002 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output202_def]
  simp only [output201_eq, output200_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages240.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4538 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages240.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3998 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages240.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4536 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages240.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages240.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4533 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages240.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3995 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages240.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4531 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input206_def]
  kernel_rfl

theorem output206_eq : InitECandidate.Proofs.DeadStages240.Parallel.output206 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3993 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages240.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4529 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input207_def]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages240.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3991 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages240.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4527 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input208_def]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages240.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3989 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages240.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4526 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input209_def]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages240.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3988 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages240.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4528 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input210_def]
  simp only [input209_eq, input208_eq]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages240.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3990 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output210_def]
  simp only [output209_eq, output208_eq]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages240.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4530 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input211_def]
  simp only [input210_eq, input207_eq]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages240.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3992 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output211_def]
  simp only [output210_eq, output207_eq]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages240.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4532 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input212_def]
  simp only [input211_eq, input206_eq]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages240.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3994 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output212_def]
  simp only [output211_eq, output206_eq]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages240.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4534 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input213_def]
  simp only [input212_eq, input205_eq]
  kernel_rfl

theorem output213_eq : InitECandidate.Proofs.DeadStages240.Parallel.output213 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3996 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output213_def]
  simp only [output212_eq, output205_eq]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages240.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4523 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input214_def]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages240.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3985 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages240.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4522 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input215_def]
  kernel_rfl

theorem output215_eq : InitECandidate.Proofs.DeadStages240.Parallel.output215 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3984 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages240.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4524 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input216_def]
  simp only [input215_eq, input214_eq]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages240.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3986 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output216_def]
  simp only [output215_eq, output214_eq]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages240.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4520 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input217_def]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages240.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3982 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages240.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4518 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input218_def]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages240.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages240.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4515 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input219_def]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages240.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3979 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages240.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4513 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages240.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3977 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages240.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4511 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages240.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3975 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages240.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4509 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages240.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3973 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages240.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4508 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages240.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3972 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages240.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4510 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input224_def]
  simp only [input223_eq, input222_eq]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages240.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3974 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output224_def]
  simp only [output223_eq, output222_eq]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages240.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4512 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input225_def]
  simp only [input224_eq, input221_eq]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages240.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3976 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output225_def]
  simp only [output224_eq, output221_eq]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages240.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4514 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input226_def]
  simp only [input225_eq, input220_eq]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages240.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3978 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output226_def]
  simp only [output225_eq, output220_eq]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages240.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4516 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input227_def]
  simp only [input226_eq, input219_eq]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages240.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3980 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output227_def]
  simp only [output226_eq, output219_eq]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages240.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4505 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input228_def]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages240.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3969 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages240.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4504 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input229_def]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages240.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3968 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages240.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4506 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input230_def]
  simp only [input229_eq, input228_eq]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages240.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3970 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output230_def]
  simp only [output229_eq, output228_eq]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages240.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4502 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages240.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3966 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages240.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4500 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages240.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages240.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4497 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input233_def]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages240.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3963 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output233_def]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages240.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4495 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input234_def]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages240.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3961 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages240.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4493 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input235_def]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages240.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3959 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output235_def]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages240.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4491 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input236_def]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages240.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3957 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output236_def]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages240.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4490 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input237_def]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages240.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3956 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages240.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4492 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input238_def]
  simp only [input237_eq, input236_eq]
  kernel_rfl

theorem output238_eq : InitECandidate.Proofs.DeadStages240.Parallel.output238 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3958 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output238_def]
  simp only [output237_eq, output236_eq]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages240.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4494 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input239_def]
  simp only [input238_eq, input235_eq]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages240.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3960 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output239_def]
  simp only [output238_eq, output235_eq]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages240.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4496 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input240_def]
  simp only [input239_eq, input234_eq]
  kernel_rfl

theorem output240_eq : InitECandidate.Proofs.DeadStages240.Parallel.output240 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3962 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output240_def]
  simp only [output239_eq, output234_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages240.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4498 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input241_def]
  simp only [input240_eq, input233_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages240.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3964 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output241_def]
  simp only [output240_eq, output233_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages240.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4487 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input242_def]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages240.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3953 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output242_def]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages240.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4486 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input243_def]
  kernel_rfl

theorem output243_eq : InitECandidate.Proofs.DeadStages240.Parallel.output243 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3952 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output243_def]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages240.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4488 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input244_def]
  simp only [input243_eq, input242_eq]
  kernel_rfl

theorem output244_eq : InitECandidate.Proofs.DeadStages240.Parallel.output244 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3954 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output244_def]
  simp only [output243_eq, output242_eq]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages240.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4484 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input245_def]
  kernel_rfl

theorem output245_eq : InitECandidate.Proofs.DeadStages240.Parallel.output245 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3950 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output245_def]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages240.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4482 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages240.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages240.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4479 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input247_def]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages240.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3947 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages240.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4477 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input248_def]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages240.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3945 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output248_def]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages240.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4475 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input249_def]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages240.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3943 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output249_def]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages240.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4473 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input250_def]
  kernel_rfl

theorem output250_eq : InitECandidate.Proofs.DeadStages240.Parallel.output250 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3941 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output250_def]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages240.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4472 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input251_def]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages240.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3940 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output251_def]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages240.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4474 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input252_def]
  simp only [input251_eq, input250_eq]
  kernel_rfl

theorem output252_eq : InitECandidate.Proofs.DeadStages240.Parallel.output252 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3942 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output252_def]
  simp only [output251_eq, output250_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages240.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4476 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input253_def]
  simp only [input252_eq, input249_eq]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages240.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3944 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output253_def]
  simp only [output252_eq, output249_eq]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages240.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4478 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input254_def]
  simp only [input253_eq, input248_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages240.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3946 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output254_def]
  simp only [output253_eq, output248_eq]
  kernel_rfl

theorem input255_eq : InitECandidate.Proofs.DeadStages240.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4480 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input255_def]
  simp only [input254_eq, input247_eq]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages240.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3948 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output255_def]
  simp only [output254_eq, output247_eq]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
