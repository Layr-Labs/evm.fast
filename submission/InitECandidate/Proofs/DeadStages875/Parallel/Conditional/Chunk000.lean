import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node0_cond_eq : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1) := by
  rw [input0_def, output0_def]
  kernel_rfl

theorem node1_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1) := by
  rw [input1_def, output1_def]
  kernel_rfl

theorem node2_cond_eq
    (child0 : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1))
    (child1 : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1) := by
  rw [input2_def, output2_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child0]
  try dsimp only
  rw [child1]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output0_skip, output1_skip]
  kernel_rfl

theorem node3_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1) := by
  rw [input3_def, output3_def]
  kernel_rfl

theorem node4_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1) := by
  rw [input4_def, output4_def]
  kernel_rfl

theorem node5_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5 value5 value1 value2 = (output5, value5, value1) := by
  rw [input5_def, output5_def]
  kernel_rfl

theorem node6_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value5, value1) := by
  rw [input6_def, output6_def]
  kernel_rfl

theorem node7_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7 value5 value1 value2 = (output7, value5, value1) := by
  rw [input7_def, output7_def]
  kernel_rfl

theorem node8_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8 value5 value1 value2 = (output8, value5, value1) := by
  rw [input8_def, output8_def]
  kernel_rfl

theorem node9_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value5, value1) := by
  rw [input9_def, output9_def]
  kernel_rfl

theorem node10_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value5, value1) := by
  rw [input10_def, output10_def]
  kernel_rfl

theorem node11_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value5, value1))
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11 value5 value1 value2 = (output11, value5, value1) := by
  rw [input11_def, output11_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child10]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output10_skip]
  kernel_rfl

theorem node12_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value5 value1 value2 = (output8, value5, value1))
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value5 value1 value2 = (output11, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12 value5 value1 value2 = (output12, value5, value1) := by
  rw [input12_def, output12_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child11]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output11_skip]
  kernel_rfl

theorem node13_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value5 value1 value2 = (output7, value5, value1))
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value5 value1 value2 = (output12, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13 value5 value1 value2 = (output13, value5, value1) := by
  rw [input13_def, output13_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child12]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output12_skip]
  kernel_rfl

theorem node14_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value5, value1))
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value5 value1 value2 = (output13, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input14 value5 value1 value2 = (output14, value5, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child13]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output13_skip]
  kernel_rfl

theorem node15_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value5 value1 value2 = (output5, value5, value1))
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value5 value1 value2 = (output14, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input15 value5 value1 value2 = (output15, value5, value1) := by
  rw [input15_def, output15_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child14]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5_skip, output14_skip]
  kernel_rfl

theorem node16_cond_eq : Flapjack.WordAlloc.removeDeadStructural input16 value5 value1 value2 = (output16, value6, value1) := by
  rw [input16_def, output16_def]
  kernel_rfl

theorem node17_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value5 value1 value2 = (output15, value5, value1))
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value5 value1 value2 = (output16, value6, value1)) : Flapjack.WordAlloc.removeDeadStructural input17 value5 value1 value2 = (output17, value6, value1) := by
  rw [input17_def, output17_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child16]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output16_skip]
  kernel_rfl

theorem node18_cond_eq : Flapjack.WordAlloc.removeDeadStructural input18 value6 value1 value2 = (output18, value6, value1) := by
  rw [input18_def, output18_def]
  kernel_rfl

theorem node19_cond_eq : Flapjack.WordAlloc.removeDeadStructural input19 value6 value1 value2 = (output19, value7, value1) := by
  rw [input19_def, output19_def]
  kernel_rfl

theorem node20_cond_eq : Flapjack.WordAlloc.removeDeadStructural input20 value7 value1 value2 = (output20, value8, value1) := by
  rw [input20_def, output20_def]
  kernel_rfl

theorem node21_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value6 value1 value2 = (output19, value7, value1))
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value7 value1 value2 = (output20, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input21 value6 value1 value2 = (output21, value8, value1) := by
  rw [input21_def, output21_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child20]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output20_skip]
  kernel_rfl

theorem node22_cond_eq : Flapjack.WordAlloc.removeDeadStructural input22 value8 value1 value2 = (output22, value9, value1) := by
  rw [input22_def, output22_def]
  kernel_rfl

theorem node23_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value6 value1 value2 = (output21, value8, value1))
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value8 value1 value2 = (output22, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input23 value6 value1 value2 = (output23, value9, value1) := by
  rw [input23_def, output23_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child22]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output22_skip]
  kernel_rfl

theorem node24_cond_eq : Flapjack.WordAlloc.removeDeadStructural input24 value9 value1 value2 = (output24, value10, value1) := by
  rw [input24_def, output24_def]
  kernel_rfl

theorem node25_cond_eq : Flapjack.WordAlloc.removeDeadStructural input25 value10 value1 value2 = (output25, value11, value1) := by
  rw [input25_def, output25_def]
  kernel_rfl

theorem node26_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value9 value1 value2 = (output24, value10, value1))
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value10 value1 value2 = (output25, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input26 value9 value1 value2 = (output26, value11, value1) := by
  rw [input26_def, output26_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child25]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output25_skip]
  kernel_rfl

theorem node27_cond_eq : Flapjack.WordAlloc.removeDeadStructural input27 value11 value1 value2 = (output27, value11, value1) := by
  rw [input27_def, output27_def]
  kernel_rfl

theorem node28_cond_eq : Flapjack.WordAlloc.removeDeadStructural input28 value11 value1 value2 = (output28, value12, value1) := by
  rw [input28_def, output28_def]
  kernel_rfl

theorem node29_cond_eq : Flapjack.WordAlloc.removeDeadStructural input29 value12 value1 value2 = (output29, value13, value1) := by
  rw [input29_def, output29_def]
  kernel_rfl

theorem node30_cond_eq
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value11 value1 value2 = (output28, value12, value1))
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value12 value1 value2 = (output29, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input30 value11 value1 value2 = (output30, value13, value1) := by
  rw [input30_def, output30_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child28]
  try dsimp only
  rw [child29]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output28_skip, output29_skip]
  kernel_rfl

theorem node31_cond_eq : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value2 = (output31, value14, value1) := by
  rw [input31_def, output31_def]
  kernel_rfl

theorem node32_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value11 value1 value2 = (output30, value13, value1))
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value2 = (output31, value14, value1)) : Flapjack.WordAlloc.removeDeadStructural input32 value11 value1 value2 = (output32, value14, value1) := by
  rw [input32_def, output32_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child31]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output31_skip]
  kernel_rfl

theorem node33_cond_eq : Flapjack.WordAlloc.removeDeadStructural input33 value14 value1 value2 = (output33, value15, value1) := by
  rw [input33_def, output33_def]
  kernel_rfl

theorem node34_cond_eq : Flapjack.WordAlloc.removeDeadStructural input34 value15 value1 value2 = (output34, value15, value1) := by
  rw [input34_def, output34_def]
  kernel_rfl

theorem node35_cond_eq : Flapjack.WordAlloc.removeDeadStructural input35 value15 value1 value2 = (output35, value15, value1) := by
  rw [input35_def, output35_def]
  kernel_rfl

theorem node36_cond_eq : Flapjack.WordAlloc.removeDeadStructural input36 value15 value1 value2 = (output36, value15, value1) := by
  rw [input36_def, output36_def]
  kernel_rfl

theorem node37_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value15 value1 value2 = (output35, value15, value1))
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value15 value1 value2 = (output36, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input37 value15 value1 value2 = (output37, value15, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child36]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output36_skip]
  kernel_rfl

theorem node38_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value15 value1 value2 = (output34, value15, value1))
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value15 value1 value2 = (output37, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input38 value15 value1 value2 = (output38, value15, value1) := by
  rw [input38_def, output38_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child37]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output37_skip]
  kernel_rfl

theorem node39_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value14 value1 value2 = (output33, value15, value1))
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value15 value1 value2 = (output38, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input39 value14 value1 value2 = (output39, value15, value1) := by
  rw [input39_def, output39_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child38]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output38_skip]
  kernel_rfl

theorem node40_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value11 value1 value2 = (output32, value14, value1))
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value14 value1 value2 = (output39, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input40 value11 value1 value2 = (output40, value15, value1) := by
  rw [input40_def, output40_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child39]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output39_skip]
  kernel_rfl

theorem node41_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value11 value1 value2 = (output27, value11, value1))
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value11 value1 value2 = (output40, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input41 value11 value1 value2 = (output41, value15, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child40]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output40_skip]
  kernel_rfl

theorem node42_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value9 value1 value2 = (output26, value11, value1))
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value11 value1 value2 = (output41, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input42 value9 value1 value2 = (output42, value15, value1) := by
  rw [input42_def, output42_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child41]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output41_skip]
  kernel_rfl

theorem node43_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value6 value1 value2 = (output23, value9, value1))
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value9 value1 value2 = (output42, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input43 value6 value1 value2 = (output43, value15, value1) := by
  rw [input43_def, output43_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child42]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output42_skip]
  kernel_rfl

theorem node44_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value6 value1 value2 = (output18, value6, value1))
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value6 value1 value2 = (output43, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input44 value6 value1 value2 = (output44, value15, value1) := by
  rw [input44_def, output44_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child43]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output43_skip]
  kernel_rfl

theorem node45_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value5 value1 value2 = (output17, value6, value1))
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value6 value1 value2 = (output44, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input45 value5 value1 value2 = (output45, value15, value1) := by
  rw [input45_def, output45_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child44]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output44_skip]
  kernel_rfl

theorem node46_cond_eq : Flapjack.WordAlloc.removeDeadStructural input46 value5 value1 value2 = (output46, value5, value1) := by
  rw [input46_def, output46_def]
  kernel_rfl

theorem node47_cond_eq : Flapjack.WordAlloc.removeDeadStructural input47 value5 value1 value2 = (output47, value5, value1) := by
  rw [input47_def, output47_def]
  kernel_rfl

theorem node48_cond_eq : Flapjack.WordAlloc.removeDeadStructural input48 value5 value1 value2 = (output48, value5, value1) := by
  rw [input48_def, output48_def]
  kernel_rfl

theorem node49_cond_eq : Flapjack.WordAlloc.removeDeadStructural input49 value5 value1 value2 = (output49, value5, value1) := by
  rw [input49_def, output49_def]
  kernel_rfl

theorem node50_cond_eq : Flapjack.WordAlloc.removeDeadStructural input50 value5 value1 value2 = (output50, value5, value1) := by
  rw [input50_def, output50_def]
  kernel_rfl

theorem node51_cond_eq : Flapjack.WordAlloc.removeDeadStructural input51 value5 value1 value2 = (output51, value5, value1) := by
  rw [input51_def, output51_def]
  kernel_rfl

theorem node52_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value5 value1 value2 = (output50, value5, value1))
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value5 value1 value2 = (output51, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input52 value5 value1 value2 = (output52, value5, value1) := by
  rw [input52_def, output52_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child51]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output51_skip]
  kernel_rfl

theorem node53_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value5 value1 value2 = (output49, value5, value1))
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value5 value1 value2 = (output52, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input53 value5 value1 value2 = (output53, value5, value1) := by
  rw [input53_def, output53_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child52]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output52_skip]
  kernel_rfl

theorem node54_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value5 value1 value2 = (output48, value5, value1))
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value5 value1 value2 = (output53, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input54 value5 value1 value2 = (output54, value5, value1) := by
  rw [input54_def, output54_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child53]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output53_skip]
  kernel_rfl

theorem node55_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value5 value1 value2 = (output47, value5, value1))
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value5 value1 value2 = (output54, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input55 value5 value1 value2 = (output55, value5, value1) := by
  rw [input55_def, output55_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child54]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output54_skip]
  kernel_rfl

theorem node56_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value5 value1 value2 = (output46, value5, value1))
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value5 value1 value2 = (output55, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input56 value5 value1 value2 = (output56, value5, value1) := by
  rw [input56_def, output56_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child55]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output55_skip]
  kernel_rfl

theorem node57_cond_eq : Flapjack.WordAlloc.removeDeadStructural input57 value5 value1 value2 = (output57, value16, value1) := by
  rw [input57_def, output57_def]
  kernel_rfl

theorem node58_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value5 value1 value2 = (output56, value5, value1))
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value5 value1 value2 = (output57, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input58 value5 value1 value2 = (output58, value16, value1) := by
  rw [input58_def, output58_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child57]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output57_skip]
  kernel_rfl

theorem node59_cond_eq : Flapjack.WordAlloc.removeDeadStructural input59 value16 value1 value2 = (output59, value16, value1) := by
  rw [input59_def, output59_def]
  kernel_rfl

theorem node60_cond_eq : Flapjack.WordAlloc.removeDeadStructural input60 value16 value1 value2 = (output60, value16, value1) := by
  rw [input60_def, output60_def]
  kernel_rfl

theorem node61_cond_eq : Flapjack.WordAlloc.removeDeadStructural input61 value16 value1 value2 = (output61, value16, value1) := by
  rw [input61_def, output61_def]
  kernel_rfl

theorem node62_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value16 value1 value2 = (output60, value16, value1))
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value16 value1 value2 = (output61, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input62 value16 value1 value2 = (output62, value16, value1) := by
  rw [input62_def, output62_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child61]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output61_skip]
  kernel_rfl

theorem node63_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value16 value1 value2 = (output59, value16, value1))
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value16 value1 value2 = (output62, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input63 value16 value1 value2 = (output63, value16, value1) := by
  rw [input63_def, output63_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child62]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output62_skip]
  kernel_rfl

theorem node64_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value5 value1 value2 = (output58, value16, value1))
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value16 value1 value2 = (output63, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input64 value5 value1 value2 = (output64, value16, value1) := by
  rw [input64_def, output64_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child63]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output63_skip]
  kernel_rfl

theorem node65_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value5 value1 value2 = (output45, value15, value1))
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value5 value1 value2 = (output64, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input65 value5 value1 value2 = (output65, value19, value1) := by
  rw [input65_def, output65_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child45]
  try dsimp only
  rw [child64]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output64_skip]
  kernel_rfl

theorem node66_cond_eq : Flapjack.WordAlloc.removeDeadStructural input66 value19 value1 value2 = (output66, value15, value1) := by
  rw [input66_def, output66_def]
  kernel_rfl

theorem node67_cond_eq : Flapjack.WordAlloc.removeDeadStructural input67 value15 value1 value2 = (output67, value20, value1) := by
  rw [input67_def, output67_def]
  kernel_rfl

theorem node68_cond_eq : Flapjack.WordAlloc.removeDeadStructural input68 value20 value1 value2 = (output68, value21, value1) := by
  rw [input68_def, output68_def]
  kernel_rfl

theorem node69_cond_eq : Flapjack.WordAlloc.removeDeadStructural input69 value21 value1 value2 = (output69, value22, value1) := by
  rw [input69_def, output69_def]
  kernel_rfl

theorem node70_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value20 value1 value2 = (output68, value21, value1))
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value21 value1 value2 = (output69, value22, value1)) : Flapjack.WordAlloc.removeDeadStructural input70 value20 value1 value2 = (output70, value22, value1) := by
  rw [input70_def, output70_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child69]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output69_skip]
  kernel_rfl

theorem node71_cond_eq : Flapjack.WordAlloc.removeDeadStructural input71 value22 value1 value2 = (output71, value22, value1) := by
  rw [input71_def, output71_def]
  kernel_rfl

theorem node72_cond_eq : Flapjack.WordAlloc.removeDeadStructural input72 value22 value1 value2 = (output72, value23, value1) := by
  rw [input72_def, output72_def]
  kernel_rfl

theorem node73_cond_eq : Flapjack.WordAlloc.removeDeadStructural input73 value23 value1 value2 = (output73, value23, value1) := by
  rw [input73_def, output73_def]
  kernel_rfl

theorem node74_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value22 value1 value2 = (output72, value23, value1))
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value23 value1 value2 = (output73, value23, value1)) : Flapjack.WordAlloc.removeDeadStructural input74 value22 value1 value2 = (output74, value23, value1) := by
  rw [input74_def, output74_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child73]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output73_skip]
  kernel_rfl

theorem node75_cond_eq : Flapjack.WordAlloc.removeDeadStructural input75 value23 value1 value2 = (output75, value24, value1) := by
  rw [input75_def, output75_def]
  kernel_rfl

theorem node76_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value22 value1 value2 = (output74, value23, value1))
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value23 value1 value2 = (output75, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input76 value22 value1 value2 = (output76, value24, value1) := by
  rw [input76_def, output76_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child75]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output75_skip]
  kernel_rfl

theorem node77_cond_eq : Flapjack.WordAlloc.removeDeadStructural input77 value24 value1 value2 = (output77, value24, value1) := by
  rw [input77_def, output77_def]
  kernel_rfl

theorem node78_cond_eq : Flapjack.WordAlloc.removeDeadStructural input78 value24 value1 value2 = (output78, value24, value1) := by
  rw [input78_def, output78_def]
  kernel_rfl

theorem node79_cond_eq : Flapjack.WordAlloc.removeDeadStructural input79 value24 value1 value2 = (output79, value24, value1) := by
  rw [input79_def, output79_def]
  kernel_rfl

theorem node80_cond_eq : Flapjack.WordAlloc.removeDeadStructural input80 value24 value1 value2 = (output80, value24, value1) := by
  rw [input80_def, output80_def]
  kernel_rfl

theorem node81_cond_eq : Flapjack.WordAlloc.removeDeadStructural input81 value24 value1 value2 = (output81, value24, value1) := by
  rw [input81_def, output81_def]
  kernel_rfl

theorem node82_cond_eq : Flapjack.WordAlloc.removeDeadStructural input82 value24 value1 value2 = (output82, value24, value1) := by
  rw [input82_def, output82_def]
  kernel_rfl

theorem node83_cond_eq : Flapjack.WordAlloc.removeDeadStructural input83 value24 value1 value2 = (output83, value24, value1) := by
  rw [input83_def, output83_def]
  kernel_rfl

theorem node84_cond_eq : Flapjack.WordAlloc.removeDeadStructural input84 value24 value1 value2 = (output84, value24, value1) := by
  rw [input84_def, output84_def]
  kernel_rfl

theorem node85_cond_eq : Flapjack.WordAlloc.removeDeadStructural input85 value24 value1 value2 = (output85, value24, value1) := by
  rw [input85_def, output85_def]
  kernel_rfl

theorem node86_cond_eq : Flapjack.WordAlloc.removeDeadStructural input86 value24 value1 value2 = (output86, value24, value1) := by
  rw [input86_def, output86_def]
  kernel_rfl

theorem node87_cond_eq : Flapjack.WordAlloc.removeDeadStructural input87 value24 value1 value2 = (output87, value24, value1) := by
  rw [input87_def, output87_def]
  kernel_rfl

theorem node88_cond_eq : Flapjack.WordAlloc.removeDeadStructural input88 value24 value1 value2 = (output88, value24, value1) := by
  rw [input88_def, output88_def]
  kernel_rfl

theorem node89_cond_eq : Flapjack.WordAlloc.removeDeadStructural input89 value24 value1 value2 = (output89, value24, value1) := by
  rw [input89_def, output89_def]
  kernel_rfl

theorem node90_cond_eq : Flapjack.WordAlloc.removeDeadStructural input90 value24 value1 value2 = (output90, value24, value1) := by
  rw [input90_def, output90_def]
  kernel_rfl

theorem node91_cond_eq : Flapjack.WordAlloc.removeDeadStructural input91 value24 value1 value2 = (output91, value24, value1) := by
  rw [input91_def, output91_def]
  kernel_rfl

theorem node92_cond_eq : Flapjack.WordAlloc.removeDeadStructural input92 value24 value1 value2 = (output92, value24, value1) := by
  rw [input92_def, output92_def]
  kernel_rfl

theorem node93_cond_eq : Flapjack.WordAlloc.removeDeadStructural input93 value24 value1 value2 = (output93, value24, value1) := by
  rw [input93_def, output93_def]
  kernel_rfl

theorem node94_cond_eq : Flapjack.WordAlloc.removeDeadStructural input94 value24 value1 value2 = (output94, value24, value1) := by
  rw [input94_def, output94_def]
  kernel_rfl

theorem node95_cond_eq : Flapjack.WordAlloc.removeDeadStructural input95 value24 value1 value2 = (output95, value24, value1) := by
  rw [input95_def, output95_def]
  kernel_rfl

theorem node96_cond_eq : Flapjack.WordAlloc.removeDeadStructural input96 value24 value1 value2 = (output96, value24, value1) := by
  rw [input96_def, output96_def]
  kernel_rfl

theorem node97_cond_eq : Flapjack.WordAlloc.removeDeadStructural input97 value24 value1 value2 = (output97, value24, value1) := by
  rw [input97_def, output97_def]
  kernel_rfl

theorem node98_cond_eq : Flapjack.WordAlloc.removeDeadStructural input98 value24 value1 value2 = (output98, value24, value1) := by
  rw [input98_def, output98_def]
  kernel_rfl

theorem node99_cond_eq : Flapjack.WordAlloc.removeDeadStructural input99 value24 value1 value2 = (output99, value24, value1) := by
  rw [input99_def, output99_def]
  kernel_rfl

theorem node100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input100 value24 value1 value2 = (output100, value24, value1) := by
  rw [input100_def, output100_def]
  kernel_rfl

theorem node101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input101 value24 value1 value2 = (output101, value24, value1) := by
  rw [input101_def, output101_def]
  kernel_rfl

theorem node102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input102 value24 value1 value2 = (output102, value24, value1) := by
  rw [input102_def, output102_def]
  kernel_rfl

theorem node103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input103 value24 value1 value2 = (output103, value24, value1) := by
  rw [input103_def, output103_def]
  kernel_rfl

theorem node104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input104 value24 value1 value2 = (output104, value24, value1) := by
  rw [input104_def, output104_def]
  kernel_rfl

theorem node105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input105 value24 value1 value2 = (output105, value24, value1) := by
  rw [input105_def, output105_def]
  kernel_rfl

theorem node106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input106 value24 value1 value2 = (output106, value24, value1) := by
  rw [input106_def, output106_def]
  kernel_rfl

theorem node107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input107 value24 value1 value2 = (output107, value24, value1) := by
  rw [input107_def, output107_def]
  kernel_rfl

theorem node108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input108 value24 value1 value2 = (output108, value24, value1) := by
  rw [input108_def, output108_def]
  kernel_rfl

theorem node109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input109 value24 value1 value2 = (output109, value24, value1) := by
  rw [input109_def, output109_def]
  kernel_rfl

theorem node110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input110 value24 value1 value2 = (output110, value24, value1) := by
  rw [input110_def, output110_def]
  kernel_rfl

theorem node111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input111 value24 value1 value2 = (output111, value24, value1) := by
  rw [input111_def, output111_def]
  kernel_rfl

theorem node112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input112 value24 value1 value2 = (output112, value24, value1) := by
  rw [input112_def, output112_def]
  kernel_rfl

theorem node113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input113 value24 value1 value2 = (output113, value24, value1) := by
  rw [input113_def, output113_def]
  kernel_rfl

theorem node114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input114 value24 value1 value2 = (output114, value24, value1) := by
  rw [input114_def, output114_def]
  kernel_rfl

theorem node115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input115 value24 value1 value2 = (output115, value24, value1) := by
  rw [input115_def, output115_def]
  kernel_rfl

theorem node116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input116 value24 value1 value2 = (output116, value24, value1) := by
  rw [input116_def, output116_def]
  kernel_rfl

theorem node117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input117 value24 value1 value2 = (output117, value24, value1) := by
  rw [input117_def, output117_def]
  kernel_rfl

theorem node118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input118 value24 value1 value2 = (output118, value24, value1) := by
  rw [input118_def, output118_def]
  kernel_rfl

theorem node119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input119 value24 value1 value2 = (output119, value24, value1) := by
  rw [input119_def, output119_def]
  kernel_rfl

theorem node120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input120 value24 value1 value2 = (output120, value24, value1) := by
  rw [input120_def, output120_def]
  kernel_rfl

theorem node121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input121 value24 value1 value2 = (output121, value24, value1) := by
  rw [input121_def, output121_def]
  kernel_rfl

theorem node122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input122 value24 value1 value2 = (output122, value24, value1) := by
  rw [input122_def, output122_def]
  kernel_rfl

theorem node123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input123 value24 value1 value2 = (output123, value24, value1) := by
  rw [input123_def, output123_def]
  kernel_rfl

theorem node124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input124 value24 value1 value2 = (output124, value24, value1) := by
  rw [input124_def, output124_def]
  kernel_rfl

theorem node125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input125 value24 value1 value2 = (output125, value24, value1) := by
  rw [input125_def, output125_def]
  kernel_rfl

theorem node126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input126 value24 value1 value2 = (output126, value24, value1) := by
  rw [input126_def, output126_def]
  kernel_rfl

theorem node127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input127 value24 value1 value2 = (output127, value24, value1) := by
  rw [input127_def, output127_def]
  kernel_rfl

theorem node128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input128 value24 value1 value2 = (output128, value24, value1) := by
  rw [input128_def, output128_def]
  kernel_rfl

theorem node129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input129 value24 value1 value2 = (output129, value24, value1) := by
  rw [input129_def, output129_def]
  kernel_rfl

theorem node130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input130 value24 value1 value2 = (output130, value24, value1) := by
  rw [input130_def, output130_def]
  kernel_rfl

theorem node131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input131 value24 value1 value2 = (output131, value24, value1) := by
  rw [input131_def, output131_def]
  kernel_rfl

theorem node132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input132 value24 value1 value2 = (output132, value24, value1) := by
  rw [input132_def, output132_def]
  kernel_rfl

theorem node133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input133 value24 value1 value2 = (output133, value24, value1) := by
  rw [input133_def, output133_def]
  kernel_rfl

theorem node134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input134 value24 value1 value2 = (output134, value24, value1) := by
  rw [input134_def, output134_def]
  kernel_rfl

theorem node135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input135 value24 value1 value2 = (output135, value24, value1) := by
  rw [input135_def, output135_def]
  kernel_rfl

theorem node136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input136 value24 value1 value2 = (output136, value24, value1) := by
  rw [input136_def, output136_def]
  kernel_rfl

theorem node137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input137 value24 value1 value2 = (output137, value24, value1) := by
  rw [input137_def, output137_def]
  kernel_rfl

theorem node138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input138 value24 value1 value2 = (output138, value24, value1) := by
  rw [input138_def, output138_def]
  kernel_rfl

theorem node139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input139 value24 value1 value2 = (output139, value24, value1) := by
  rw [input139_def, output139_def]
  kernel_rfl

theorem node140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input140 value24 value1 value2 = (output140, value24, value1) := by
  rw [input140_def, output140_def]
  kernel_rfl

theorem node141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input141 value24 value1 value2 = (output141, value24, value1) := by
  rw [input141_def, output141_def]
  kernel_rfl

theorem node142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input142 value24 value1 value2 = (output142, value24, value1) := by
  rw [input142_def, output142_def]
  kernel_rfl

theorem node143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input143 value24 value1 value2 = (output143, value24, value1) := by
  rw [input143_def, output143_def]
  kernel_rfl

theorem node144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input144 value24 value1 value2 = (output144, value24, value1) := by
  rw [input144_def, output144_def]
  kernel_rfl

theorem node145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input145 value24 value1 value2 = (output145, value24, value1) := by
  rw [input145_def, output145_def]
  kernel_rfl

theorem node146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input146 value24 value1 value2 = (output146, value24, value1) := by
  rw [input146_def, output146_def]
  kernel_rfl

theorem node147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input147 value24 value1 value2 = (output147, value24, value1) := by
  rw [input147_def, output147_def]
  kernel_rfl

theorem node148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input148 value24 value1 value2 = (output148, value24, value1) := by
  rw [input148_def, output148_def]
  kernel_rfl

theorem node149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input149 value24 value1 value2 = (output149, value24, value1) := by
  rw [input149_def, output149_def]
  kernel_rfl

theorem node150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input150 value24 value1 value2 = (output150, value24, value1) := by
  rw [input150_def, output150_def]
  kernel_rfl

theorem node151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input151 value24 value1 value2 = (output151, value24, value1) := by
  rw [input151_def, output151_def]
  kernel_rfl

theorem node152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input152 value24 value1 value2 = (output152, value24, value1) := by
  rw [input152_def, output152_def]
  kernel_rfl

theorem node153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input153 value24 value1 value2 = (output153, value24, value1) := by
  rw [input153_def, output153_def]
  kernel_rfl

theorem node154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input154 value24 value1 value2 = (output154, value24, value1) := by
  rw [input154_def, output154_def]
  kernel_rfl

theorem node155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input155 value24 value1 value2 = (output155, value24, value1) := by
  rw [input155_def, output155_def]
  kernel_rfl

theorem node156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input156 value24 value1 value2 = (output156, value24, value1) := by
  rw [input156_def, output156_def]
  kernel_rfl

theorem node157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input157 value24 value1 value2 = (output157, value24, value1) := by
  rw [input157_def, output157_def]
  kernel_rfl

theorem node158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input158 value24 value1 value2 = (output158, value24, value1) := by
  rw [input158_def, output158_def]
  kernel_rfl

theorem node159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input159 value24 value1 value2 = (output159, value24, value1) := by
  rw [input159_def, output159_def]
  kernel_rfl

theorem node160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input160 value24 value1 value2 = (output160, value24, value1) := by
  rw [input160_def, output160_def]
  kernel_rfl

theorem node161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input161 value24 value1 value2 = (output161, value24, value1) := by
  rw [input161_def, output161_def]
  kernel_rfl

theorem node162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input162 value24 value1 value2 = (output162, value24, value1) := by
  rw [input162_def, output162_def]
  kernel_rfl

theorem node163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input163 value24 value1 value2 = (output163, value24, value1) := by
  rw [input163_def, output163_def]
  kernel_rfl

theorem node164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input164 value24 value1 value2 = (output164, value24, value1) := by
  rw [input164_def, output164_def]
  kernel_rfl

theorem node165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input165 value24 value1 value2 = (output165, value24, value1) := by
  rw [input165_def, output165_def]
  kernel_rfl

theorem node166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input166 value24 value1 value2 = (output166, value24, value1) := by
  rw [input166_def, output166_def]
  kernel_rfl

theorem node167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input167 value24 value1 value2 = (output167, value24, value1) := by
  rw [input167_def, output167_def]
  kernel_rfl

theorem node168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input168 value24 value1 value2 = (output168, value24, value1) := by
  rw [input168_def, output168_def]
  kernel_rfl

theorem node169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input169 value24 value1 value2 = (output169, value24, value1) := by
  rw [input169_def, output169_def]
  kernel_rfl

theorem node170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input170 value24 value1 value2 = (output170, value24, value1) := by
  rw [input170_def, output170_def]
  kernel_rfl

theorem node171_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value24 value1 value2 = (output169, value24, value1))
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value24 value1 value2 = (output170, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input171 value24 value1 value2 = (output171, value24, value1) := by
  rw [input171_def, output171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output170_skip]
  kernel_rfl

theorem node172_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value24 value1 value2 = (output168, value24, value1))
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value24 value1 value2 = (output171, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input172 value24 value1 value2 = (output172, value24, value1) := by
  rw [input172_def, output172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output171_skip]
  kernel_rfl

theorem node173_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value24 value1 value2 = (output167, value24, value1))
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value24 value1 value2 = (output172, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input173 value24 value1 value2 = (output173, value24, value1) := by
  rw [input173_def, output173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output172_skip]
  kernel_rfl

theorem node174_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value24 value1 value2 = (output166, value24, value1))
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value24 value1 value2 = (output173, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input174 value24 value1 value2 = (output174, value24, value1) := by
  rw [input174_def, output174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output173_skip]
  kernel_rfl

theorem node175_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value24 value1 value2 = (output165, value24, value1))
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value24 value1 value2 = (output174, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input175 value24 value1 value2 = (output175, value24, value1) := by
  rw [input175_def, output175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output174_skip]
  kernel_rfl

theorem node176_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value24 value1 value2 = (output164, value24, value1))
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value24 value1 value2 = (output175, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input176 value24 value1 value2 = (output176, value24, value1) := by
  rw [input176_def, output176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output175_skip]
  kernel_rfl

theorem node177_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value24 value1 value2 = (output163, value24, value1))
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value24 value1 value2 = (output176, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input177 value24 value1 value2 = (output177, value24, value1) := by
  rw [input177_def, output177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output176_skip]
  kernel_rfl

theorem node178_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value24 value1 value2 = (output162, value24, value1))
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value24 value1 value2 = (output177, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input178 value24 value1 value2 = (output178, value24, value1) := by
  rw [input178_def, output178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output177_skip]
  kernel_rfl

theorem node179_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value24 value1 value2 = (output161, value24, value1))
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value24 value1 value2 = (output178, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input179 value24 value1 value2 = (output179, value24, value1) := by
  rw [input179_def, output179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output178_skip]
  kernel_rfl

theorem node180_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value24 value1 value2 = (output160, value24, value1))
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value24 value1 value2 = (output179, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input180 value24 value1 value2 = (output180, value24, value1) := by
  rw [input180_def, output180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output179_skip]
  kernel_rfl

theorem node181_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value24 value1 value2 = (output159, value24, value1))
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value24 value1 value2 = (output180, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input181 value24 value1 value2 = (output181, value24, value1) := by
  rw [input181_def, output181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output180_skip]
  kernel_rfl

theorem node182_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value24 value1 value2 = (output158, value24, value1))
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value24 value1 value2 = (output181, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input182 value24 value1 value2 = (output182, value24, value1) := by
  rw [input182_def, output182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output181_skip]
  kernel_rfl

theorem node183_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value24 value1 value2 = (output157, value24, value1))
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value24 value1 value2 = (output182, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input183 value24 value1 value2 = (output183, value24, value1) := by
  rw [input183_def, output183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output182_skip]
  kernel_rfl

theorem node184_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value24 value1 value2 = (output156, value24, value1))
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value24 value1 value2 = (output183, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input184 value24 value1 value2 = (output184, value24, value1) := by
  rw [input184_def, output184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output183_skip]
  kernel_rfl

theorem node185_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value24 value1 value2 = (output155, value24, value1))
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value24 value1 value2 = (output184, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input185 value24 value1 value2 = (output185, value24, value1) := by
  rw [input185_def, output185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output184_skip]
  kernel_rfl

theorem node186_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value24 value1 value2 = (output154, value24, value1))
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value24 value1 value2 = (output185, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input186 value24 value1 value2 = (output186, value24, value1) := by
  rw [input186_def, output186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output185_skip]
  kernel_rfl

theorem node187_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value24 value1 value2 = (output153, value24, value1))
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value24 value1 value2 = (output186, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input187 value24 value1 value2 = (output187, value24, value1) := by
  rw [input187_def, output187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output186_skip]
  kernel_rfl

theorem node188_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value24 value1 value2 = (output152, value24, value1))
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value24 value1 value2 = (output187, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input188 value24 value1 value2 = (output188, value24, value1) := by
  rw [input188_def, output188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output187_skip]
  kernel_rfl

theorem node189_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value24 value1 value2 = (output151, value24, value1))
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value24 value1 value2 = (output188, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input189 value24 value1 value2 = (output189, value24, value1) := by
  rw [input189_def, output189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output188_skip]
  kernel_rfl

theorem node190_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value24 value1 value2 = (output150, value24, value1))
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value24 value1 value2 = (output189, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input190 value24 value1 value2 = (output190, value24, value1) := by
  rw [input190_def, output190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output189_skip]
  kernel_rfl

theorem node191_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value24 value1 value2 = (output149, value24, value1))
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value24 value1 value2 = (output190, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input191 value24 value1 value2 = (output191, value24, value1) := by
  rw [input191_def, output191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output190_skip]
  kernel_rfl

theorem node192_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value24 value1 value2 = (output148, value24, value1))
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value24 value1 value2 = (output191, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input192 value24 value1 value2 = (output192, value24, value1) := by
  rw [input192_def, output192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output191_skip]
  kernel_rfl

theorem node193_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value24 value1 value2 = (output147, value24, value1))
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value24 value1 value2 = (output192, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input193 value24 value1 value2 = (output193, value24, value1) := by
  rw [input193_def, output193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output192_skip]
  kernel_rfl

theorem node194_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value24 value1 value2 = (output146, value24, value1))
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value24 value1 value2 = (output193, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input194 value24 value1 value2 = (output194, value24, value1) := by
  rw [input194_def, output194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output193_skip]
  kernel_rfl

theorem node195_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value24 value1 value2 = (output145, value24, value1))
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value24 value1 value2 = (output194, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input195 value24 value1 value2 = (output195, value24, value1) := by
  rw [input195_def, output195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output194_skip]
  kernel_rfl

theorem node196_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value24 value1 value2 = (output144, value24, value1))
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value24 value1 value2 = (output195, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input196 value24 value1 value2 = (output196, value24, value1) := by
  rw [input196_def, output196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output195_skip]
  kernel_rfl

theorem node197_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value24 value1 value2 = (output143, value24, value1))
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value24 value1 value2 = (output196, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input197 value24 value1 value2 = (output197, value24, value1) := by
  rw [input197_def, output197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output196_skip]
  kernel_rfl

theorem node198_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value24 value1 value2 = (output142, value24, value1))
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value24 value1 value2 = (output197, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input198 value24 value1 value2 = (output198, value24, value1) := by
  rw [input198_def, output198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output197_skip]
  kernel_rfl

theorem node199_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value24 value1 value2 = (output141, value24, value1))
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value24 value1 value2 = (output198, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input199 value24 value1 value2 = (output199, value24, value1) := by
  rw [input199_def, output199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output198_skip]
  kernel_rfl

theorem node200_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value24 value1 value2 = (output140, value24, value1))
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value24 value1 value2 = (output199, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input200 value24 value1 value2 = (output200, value24, value1) := by
  rw [input200_def, output200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output199_skip]
  kernel_rfl

theorem node201_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value24 value1 value2 = (output139, value24, value1))
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value24 value1 value2 = (output200, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input201 value24 value1 value2 = (output201, value24, value1) := by
  rw [input201_def, output201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output200_skip]
  kernel_rfl

theorem node202_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value24 value1 value2 = (output138, value24, value1))
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value24 value1 value2 = (output201, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input202 value24 value1 value2 = (output202, value24, value1) := by
  rw [input202_def, output202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output201_skip]
  kernel_rfl

theorem node203_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value24 value1 value2 = (output137, value24, value1))
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value24 value1 value2 = (output202, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input203 value24 value1 value2 = (output203, value24, value1) := by
  rw [input203_def, output203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output202_skip]
  kernel_rfl

theorem node204_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value24 value1 value2 = (output136, value24, value1))
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value24 value1 value2 = (output203, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input204 value24 value1 value2 = (output204, value24, value1) := by
  rw [input204_def, output204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output203_skip]
  kernel_rfl

theorem node205_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value24 value1 value2 = (output135, value24, value1))
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value24 value1 value2 = (output204, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input205 value24 value1 value2 = (output205, value24, value1) := by
  rw [input205_def, output205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output204_skip]
  kernel_rfl

theorem node206_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value24 value1 value2 = (output134, value24, value1))
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value24 value1 value2 = (output205, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input206 value24 value1 value2 = (output206, value24, value1) := by
  rw [input206_def, output206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output205_skip]
  kernel_rfl

theorem node207_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value24 value1 value2 = (output133, value24, value1))
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value24 value1 value2 = (output206, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input207 value24 value1 value2 = (output207, value24, value1) := by
  rw [input207_def, output207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output206_skip]
  kernel_rfl

theorem node208_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value24 value1 value2 = (output132, value24, value1))
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value24 value1 value2 = (output207, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input208 value24 value1 value2 = (output208, value24, value1) := by
  rw [input208_def, output208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output207_skip]
  kernel_rfl

theorem node209_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value24 value1 value2 = (output131, value24, value1))
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value24 value1 value2 = (output208, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input209 value24 value1 value2 = (output209, value24, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output208_skip]
  kernel_rfl

theorem node210_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value24 value1 value2 = (output130, value24, value1))
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value24 value1 value2 = (output209, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input210 value24 value1 value2 = (output210, value24, value1) := by
  rw [input210_def, output210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output209_skip]
  kernel_rfl

theorem node211_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value24 value1 value2 = (output129, value24, value1))
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value24 value1 value2 = (output210, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input211 value24 value1 value2 = (output211, value24, value1) := by
  rw [input211_def, output211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output210_skip]
  kernel_rfl

theorem node212_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value24 value1 value2 = (output128, value24, value1))
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value24 value1 value2 = (output211, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input212 value24 value1 value2 = (output212, value24, value1) := by
  rw [input212_def, output212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output211_skip]
  kernel_rfl

theorem node213_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value24 value1 value2 = (output127, value24, value1))
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value24 value1 value2 = (output212, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input213 value24 value1 value2 = (output213, value24, value1) := by
  rw [input213_def, output213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output212_skip]
  kernel_rfl

theorem node214_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value24 value1 value2 = (output126, value24, value1))
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value24 value1 value2 = (output213, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input214 value24 value1 value2 = (output214, value24, value1) := by
  rw [input214_def, output214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output213_skip]
  kernel_rfl

theorem node215_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value24 value1 value2 = (output125, value24, value1))
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value24 value1 value2 = (output214, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input215 value24 value1 value2 = (output215, value24, value1) := by
  rw [input215_def, output215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output214_skip]
  kernel_rfl

theorem node216_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value24 value1 value2 = (output124, value24, value1))
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value24 value1 value2 = (output215, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input216 value24 value1 value2 = (output216, value24, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output215_skip]
  kernel_rfl

theorem node217_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value24 value1 value2 = (output123, value24, value1))
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value24 value1 value2 = (output216, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input217 value24 value1 value2 = (output217, value24, value1) := by
  rw [input217_def, output217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output216_skip]
  kernel_rfl

theorem node218_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value24 value1 value2 = (output122, value24, value1))
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value24 value1 value2 = (output217, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input218 value24 value1 value2 = (output218, value24, value1) := by
  rw [input218_def, output218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output217_skip]
  kernel_rfl

theorem node219_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value24 value1 value2 = (output121, value24, value1))
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value24 value1 value2 = (output218, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input219 value24 value1 value2 = (output219, value24, value1) := by
  rw [input219_def, output219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output218_skip]
  kernel_rfl

theorem node220_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value24 value1 value2 = (output120, value24, value1))
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value24 value1 value2 = (output219, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input220 value24 value1 value2 = (output220, value24, value1) := by
  rw [input220_def, output220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output219_skip]
  kernel_rfl

theorem node221_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value24 value1 value2 = (output119, value24, value1))
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value24 value1 value2 = (output220, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input221 value24 value1 value2 = (output221, value24, value1) := by
  rw [input221_def, output221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output220_skip]
  kernel_rfl

theorem node222_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value24 value1 value2 = (output118, value24, value1))
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value24 value1 value2 = (output221, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input222 value24 value1 value2 = (output222, value24, value1) := by
  rw [input222_def, output222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output221_skip]
  kernel_rfl

theorem node223_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value24 value1 value2 = (output117, value24, value1))
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value24 value1 value2 = (output222, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input223 value24 value1 value2 = (output223, value24, value1) := by
  rw [input223_def, output223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output222_skip]
  kernel_rfl

theorem node224_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value24 value1 value2 = (output116, value24, value1))
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value24 value1 value2 = (output223, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input224 value24 value1 value2 = (output224, value24, value1) := by
  rw [input224_def, output224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output223_skip]
  kernel_rfl

theorem node225_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value24 value1 value2 = (output115, value24, value1))
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value24 value1 value2 = (output224, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input225 value24 value1 value2 = (output225, value24, value1) := by
  rw [input225_def, output225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output224_skip]
  kernel_rfl

theorem node226_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value24 value1 value2 = (output114, value24, value1))
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value24 value1 value2 = (output225, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input226 value24 value1 value2 = (output226, value24, value1) := by
  rw [input226_def, output226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output225_skip]
  kernel_rfl

theorem node227_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value24 value1 value2 = (output113, value24, value1))
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value24 value1 value2 = (output226, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input227 value24 value1 value2 = (output227, value24, value1) := by
  rw [input227_def, output227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output226_skip]
  kernel_rfl

theorem node228_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value24 value1 value2 = (output112, value24, value1))
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value24 value1 value2 = (output227, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input228 value24 value1 value2 = (output228, value24, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output227_skip]
  kernel_rfl

theorem node229_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value24 value1 value2 = (output111, value24, value1))
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value24 value1 value2 = (output228, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input229 value24 value1 value2 = (output229, value24, value1) := by
  rw [input229_def, output229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output228_skip]
  kernel_rfl

theorem node230_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value24 value1 value2 = (output110, value24, value1))
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value24 value1 value2 = (output229, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input230 value24 value1 value2 = (output230, value24, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output229_skip]
  kernel_rfl

theorem node231_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value24 value1 value2 = (output109, value24, value1))
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value24 value1 value2 = (output230, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input231 value24 value1 value2 = (output231, value24, value1) := by
  rw [input231_def, output231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output230_skip]
  kernel_rfl

theorem node232_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value24 value1 value2 = (output108, value24, value1))
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value24 value1 value2 = (output231, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input232 value24 value1 value2 = (output232, value24, value1) := by
  rw [input232_def, output232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output231_skip]
  kernel_rfl

theorem node233_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value24 value1 value2 = (output107, value24, value1))
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value24 value1 value2 = (output232, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input233 value24 value1 value2 = (output233, value24, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output232_skip]
  kernel_rfl

theorem node234_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value24 value1 value2 = (output106, value24, value1))
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value24 value1 value2 = (output233, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input234 value24 value1 value2 = (output234, value24, value1) := by
  rw [input234_def, output234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output233_skip]
  kernel_rfl

theorem node235_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value24 value1 value2 = (output105, value24, value1))
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value24 value1 value2 = (output234, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input235 value24 value1 value2 = (output235, value24, value1) := by
  rw [input235_def, output235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output234_skip]
  kernel_rfl

theorem node236_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value24 value1 value2 = (output104, value24, value1))
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value24 value1 value2 = (output235, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input236 value24 value1 value2 = (output236, value24, value1) := by
  rw [input236_def, output236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output235_skip]
  kernel_rfl

theorem node237_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value24 value1 value2 = (output103, value24, value1))
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value24 value1 value2 = (output236, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input237 value24 value1 value2 = (output237, value24, value1) := by
  rw [input237_def, output237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output236_skip]
  kernel_rfl

theorem node238_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value24 value1 value2 = (output102, value24, value1))
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value24 value1 value2 = (output237, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input238 value24 value1 value2 = (output238, value24, value1) := by
  rw [input238_def, output238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output237_skip]
  kernel_rfl

theorem node239_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value24 value1 value2 = (output101, value24, value1))
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value24 value1 value2 = (output238, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input239 value24 value1 value2 = (output239, value24, value1) := by
  rw [input239_def, output239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output238_skip]
  kernel_rfl

theorem node240_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value24 value1 value2 = (output100, value24, value1))
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value24 value1 value2 = (output239, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input240 value24 value1 value2 = (output240, value24, value1) := by
  rw [input240_def, output240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output239_skip]
  kernel_rfl

theorem node241_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value24 value1 value2 = (output99, value24, value1))
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value24 value1 value2 = (output240, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input241 value24 value1 value2 = (output241, value24, value1) := by
  rw [input241_def, output241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output240_skip]
  kernel_rfl

theorem node242_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value24 value1 value2 = (output98, value24, value1))
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value24 value1 value2 = (output241, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input242 value24 value1 value2 = (output242, value24, value1) := by
  rw [input242_def, output242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output241_skip]
  kernel_rfl

theorem node243_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value24 value1 value2 = (output97, value24, value1))
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value24 value1 value2 = (output242, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input243 value24 value1 value2 = (output243, value24, value1) := by
  rw [input243_def, output243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output242_skip]
  kernel_rfl

theorem node244_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value24 value1 value2 = (output96, value24, value1))
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value24 value1 value2 = (output243, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input244 value24 value1 value2 = (output244, value24, value1) := by
  rw [input244_def, output244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output243_skip]
  kernel_rfl

theorem node245_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value24 value1 value2 = (output95, value24, value1))
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value24 value1 value2 = (output244, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input245 value24 value1 value2 = (output245, value24, value1) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output244_skip]
  kernel_rfl

theorem node246_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value24 value1 value2 = (output94, value24, value1))
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value24 value1 value2 = (output245, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input246 value24 value1 value2 = (output246, value24, value1) := by
  rw [input246_def, output246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output245_skip]
  kernel_rfl

theorem node247_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value24 value1 value2 = (output93, value24, value1))
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value24 value1 value2 = (output246, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input247 value24 value1 value2 = (output247, value24, value1) := by
  rw [input247_def, output247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output246_skip]
  kernel_rfl

theorem node248_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value24 value1 value2 = (output92, value24, value1))
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value24 value1 value2 = (output247, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input248 value24 value1 value2 = (output248, value24, value1) := by
  rw [input248_def, output248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output247_skip]
  kernel_rfl

theorem node249_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value24 value1 value2 = (output91, value24, value1))
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value24 value1 value2 = (output248, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input249 value24 value1 value2 = (output249, value24, value1) := by
  rw [input249_def, output249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output248_skip]
  kernel_rfl

theorem node250_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value24 value1 value2 = (output90, value24, value1))
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value24 value1 value2 = (output249, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input250 value24 value1 value2 = (output250, value24, value1) := by
  rw [input250_def, output250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output249_skip]
  kernel_rfl

theorem node251_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value24 value1 value2 = (output89, value24, value1))
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value24 value1 value2 = (output250, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input251 value24 value1 value2 = (output251, value24, value1) := by
  rw [input251_def, output251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  try dsimp only
  rw [child250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output89_skip, output250_skip]
  kernel_rfl

theorem node252_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value24 value1 value2 = (output88, value24, value1))
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value24 value1 value2 = (output251, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input252 value24 value1 value2 = (output252, value24, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output251_skip]
  kernel_rfl

theorem node253_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value24 value1 value2 = (output87, value24, value1))
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value24 value1 value2 = (output252, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input253 value24 value1 value2 = (output253, value24, value1) := by
  rw [input253_def, output253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output252_skip]
  kernel_rfl

theorem node254_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value24 value1 value2 = (output86, value24, value1))
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value24 value1 value2 = (output253, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input254 value24 value1 value2 = (output254, value24, value1) := by
  rw [input254_def, output254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output253_skip]
  kernel_rfl

theorem node255_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value24 value1 value2 = (output85, value24, value1))
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value24 value1 value2 = (output254, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input255 value24 value1 value2 = (output255, value24, value1) := by
  rw [input255_def, output255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output254_skip]
  kernel_rfl

#print axioms node255_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
