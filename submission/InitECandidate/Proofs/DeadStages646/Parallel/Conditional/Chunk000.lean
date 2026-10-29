import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
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

theorem node4_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1) := by
  rw [input4_def, output4_def]
  kernel_rfl

theorem node5_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1) := by
  rw [input5_def, output5_def]
  kernel_rfl

theorem node6_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6 value7 value1 value2 = (output6, value8, value1) := by
  rw [input6_def, output6_def]
  kernel_rfl

theorem node7_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7 value8 value1 value2 = (output7, value8, value1) := by
  rw [input7_def, output7_def]
  kernel_rfl

theorem node8_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8 value9 value1 value10 = (output8, value11, value1) := by
  rw [input8_def, output8_def]
  kernel_rfl

theorem node9_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9 value11 value1 value10 = (output9, value11, value1) := by
  rw [input9_def, output9_def]
  kernel_rfl

theorem node10_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10 value11 value1 value10 = (output10, value11, value1) := by
  rw [input10_def, output10_def]
  kernel_rfl

theorem node11_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11 value11 value1 value10 = (output11, value11, value1) := by
  rw [input11_def, output11_def]
  kernel_rfl

theorem node12_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12 value11 value1 value10 = (output12, value11, value1) := by
  rw [input12_def, output12_def]
  kernel_rfl

theorem node13_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13 value11 value1 value10 = (output13, value11, value1) := by
  rw [input13_def, output13_def]
  kernel_rfl

theorem node14_cond_eq : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value10 = (output14, value11, value1) := by
  rw [input14_def, output14_def]
  kernel_rfl

theorem node15_cond_eq : Flapjack.WordAlloc.removeDeadStructural input15 value11 value1 value10 = (output15, value11, value1) := by
  rw [input15_def, output15_def]
  kernel_rfl

theorem node16_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value10 = (output14, value11, value1))
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value11 value1 value10 = (output15, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value10 = (output16, value11, value1) := by
  rw [input16_def, output16_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child15]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output15_skip]
  kernel_rfl

theorem node17_cond_eq
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value11 value1 value10 = (output13, value11, value1))
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value10 = (output16, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input17 value11 value1 value10 = (output17, value11, value1) := by
  rw [input17_def, output17_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13]
  try dsimp only
  rw [child16]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13_skip, output16_skip]
  kernel_rfl

theorem node18_cond_eq
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value11 value1 value10 = (output12, value11, value1))
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value11 value1 value10 = (output17, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input18 value11 value1 value10 = (output18, value11, value1) := by
  rw [input18_def, output18_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12]
  try dsimp only
  rw [child17]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12_skip, output17_skip]
  kernel_rfl

theorem node19_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value11 value1 value10 = (output11, value11, value1))
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value11 value1 value10 = (output18, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input19 value11 value1 value10 = (output19, value11, value1) := by
  rw [input19_def, output19_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child18]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output18_skip]
  kernel_rfl

theorem node20_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value11 value1 value10 = (output10, value11, value1))
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value11 value1 value10 = (output19, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input20 value11 value1 value10 = (output20, value11, value1) := by
  rw [input20_def, output20_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child19]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output19_skip]
  kernel_rfl

theorem node21_cond_eq : Flapjack.WordAlloc.removeDeadStructural input21 value11 value1 value10 = (output21, value12, value1) := by
  rw [input21_def, output21_def]
  kernel_rfl

theorem node22_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value11 value1 value10 = (output20, value11, value1))
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value11 value1 value10 = (output21, value12, value1)) : Flapjack.WordAlloc.removeDeadStructural input22 value11 value1 value10 = (output22, value12, value1) := by
  rw [input22_def, output22_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child21]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output21_skip]
  kernel_rfl

theorem node23_cond_eq : Flapjack.WordAlloc.removeDeadStructural input23 value12 value1 value10 = (output23, value9, value1) := by
  rw [input23_def, output23_def]
  kernel_rfl

theorem node24_cond_eq : Flapjack.WordAlloc.removeDeadStructural input24 value9 value1 value10 = (output24, value12, value1) := by
  rw [input24_def, output24_def]
  kernel_rfl

theorem node25_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value12 value1 value10 = (output23, value9, value1))
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value9 value1 value10 = (output24, value12, value1)) : Flapjack.WordAlloc.removeDeadStructural input25 value12 value1 value10 = (output25, value12, value1) := by
  rw [input25_def, output25_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child24]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output24_skip]
  kernel_rfl

theorem node26_cond_eq : Flapjack.WordAlloc.removeDeadStructural input26 value12 value1 value10 = (output26, value13, value1) := by
  rw [input26_def, output26_def]
  kernel_rfl

theorem node27_cond_eq : Flapjack.WordAlloc.removeDeadStructural input27 value13 value1 value10 = (output27, value14, value1) := by
  rw [input27_def, output27_def]
  kernel_rfl

theorem node28_cond_eq : Flapjack.WordAlloc.removeDeadStructural input28 value14 value1 value10 = (output28, value15, value1) := by
  rw [input28_def, output28_def]
  kernel_rfl

theorem node29_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value13 value1 value10 = (output27, value14, value1))
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value14 value1 value10 = (output28, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input29 value13 value1 value10 = (output29, value15, value1) := by
  rw [input29_def, output29_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child28]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output28_skip]
  kernel_rfl

theorem node30_cond_eq : Flapjack.WordAlloc.removeDeadStructural input30 value15 value1 value10 = (output30, value16, value1) := by
  rw [input30_def, output30_def]
  kernel_rfl

theorem node31_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value13 value1 value10 = (output29, value15, value1))
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value15 value1 value10 = (output30, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value10 = (output31, value16, value1) := by
  rw [input31_def, output31_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child30]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output30_skip]
  kernel_rfl

theorem node32_cond_eq : Flapjack.WordAlloc.removeDeadStructural input32 value16 value1 value10 = (output32, value16, value1) := by
  rw [input32_def, output32_def]
  kernel_rfl

theorem node33_cond_eq : Flapjack.WordAlloc.removeDeadStructural input33 value16 value1 value10 = (output33, value17, value1) := by
  rw [input33_def, output33_def]
  kernel_rfl

theorem node34_cond_eq : Flapjack.WordAlloc.removeDeadStructural input34 value17 value1 value10 = (output34, value18, value1) := by
  rw [input34_def, output34_def]
  kernel_rfl

theorem node35_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value16 value1 value10 = (output33, value17, value1))
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value17 value1 value10 = (output34, value18, value1)) : Flapjack.WordAlloc.removeDeadStructural input35 value16 value1 value10 = (output35, value18, value1) := by
  rw [input35_def, output35_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child34]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output34_skip]
  kernel_rfl

theorem node36_cond_eq : Flapjack.WordAlloc.removeDeadStructural input36 value18 value1 value10 = (output36, value19, value1) := by
  rw [input36_def, output36_def]
  kernel_rfl

theorem node37_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value16 value1 value10 = (output35, value18, value1))
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value18 value1 value10 = (output36, value19, value1)) : Flapjack.WordAlloc.removeDeadStructural input37 value16 value1 value10 = (output37, value19, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child36]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output36_skip]
  kernel_rfl

theorem node38_cond_eq : Flapjack.WordAlloc.removeDeadStructural input38 value19 value1 value10 = (output38, value20, value1) := by
  rw [input38_def, output38_def]
  kernel_rfl

theorem node39_cond_eq : Flapjack.WordAlloc.removeDeadStructural input39 value20 value1 value10 = (output39, value21, value1) := by
  rw [input39_def, output39_def]
  kernel_rfl

theorem node40_cond_eq : Flapjack.WordAlloc.removeDeadStructural input40 value21 value1 value10 = (output40, value22, value1) := by
  rw [input40_def, output40_def]
  kernel_rfl

theorem node41_cond_eq : Flapjack.WordAlloc.removeDeadStructural input41 value22 value1 value10 = (output41, value23, value1) := by
  rw [input41_def, output41_def]
  kernel_rfl

theorem node42_cond_eq : Flapjack.WordAlloc.removeDeadStructural input42 value23 value1 value10 = (output42, value23, value1) := by
  rw [input42_def, output42_def]
  kernel_rfl

theorem node43_cond_eq : Flapjack.WordAlloc.removeDeadStructural input43 value23 value1 value10 = (output43, value23, value1) := by
  rw [input43_def, output43_def]
  kernel_rfl

theorem node44_cond_eq : Flapjack.WordAlloc.removeDeadStructural input44 value23 value1 value10 = (output44, value23, value1) := by
  rw [input44_def, output44_def]
  kernel_rfl

theorem node45_cond_eq : Flapjack.WordAlloc.removeDeadStructural input45 value23 value1 value10 = (output45, value23, value1) := by
  rw [input45_def, output45_def]
  kernel_rfl

theorem node46_cond_eq : Flapjack.WordAlloc.removeDeadStructural input46 value23 value1 value10 = (output46, value23, value1) := by
  rw [input46_def, output46_def]
  kernel_rfl

theorem node47_cond_eq : Flapjack.WordAlloc.removeDeadStructural input47 value23 value1 value10 = (output47, value23, value1) := by
  rw [input47_def, output47_def]
  kernel_rfl

theorem node48_cond_eq : Flapjack.WordAlloc.removeDeadStructural input48 value23 value1 value10 = (output48, value23, value1) := by
  rw [input48_def, output48_def]
  kernel_rfl

theorem node49_cond_eq : Flapjack.WordAlloc.removeDeadStructural input49 value23 value1 value10 = (output49, value23, value1) := by
  rw [input49_def, output49_def]
  kernel_rfl

theorem node50_cond_eq : Flapjack.WordAlloc.removeDeadStructural input50 value23 value1 value10 = (output50, value24, value1) := by
  rw [input50_def, output50_def]
  kernel_rfl

theorem node51_cond_eq : Flapjack.WordAlloc.removeDeadStructural input51 value24 value1 value10 = (output51, value25, value1) := by
  rw [input51_def, output51_def]
  kernel_rfl

theorem node52_cond_eq : Flapjack.WordAlloc.removeDeadStructural input52 value25 value1 value10 = (output52, value26, value1) := by
  rw [input52_def, output52_def]
  kernel_rfl

theorem node53_cond_eq : Flapjack.WordAlloc.removeDeadStructural input53 value26 value1 value10 = (output53, value27, value1) := by
  rw [input53_def, output53_def]
  kernel_rfl

theorem node54_cond_eq : Flapjack.WordAlloc.removeDeadStructural input54 value27 value1 value10 = (output54, value27, value1) := by
  rw [input54_def, output54_def]
  kernel_rfl

theorem node55_cond_eq : Flapjack.WordAlloc.removeDeadStructural input55 value27 value1 value10 = (output55, value28, value1) := by
  rw [input55_def, output55_def]
  kernel_rfl

theorem node56_cond_eq : Flapjack.WordAlloc.removeDeadStructural input56 value28 value1 value10 = (output56, value29, value1) := by
  rw [input56_def, output56_def]
  kernel_rfl

theorem node57_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value27 value1 value10 = (output55, value28, value1))
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value28 value1 value10 = (output56, value29, value1)) : Flapjack.WordAlloc.removeDeadStructural input57 value27 value1 value10 = (output57, value29, value1) := by
  rw [input57_def, output57_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child56]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output56_skip]
  kernel_rfl

theorem node58_cond_eq : Flapjack.WordAlloc.removeDeadStructural input58 value29 value1 value10 = (output58, value30, value1) := by
  rw [input58_def, output58_def]
  kernel_rfl

theorem node59_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value27 value1 value10 = (output57, value29, value1))
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value29 value1 value10 = (output58, value30, value1)) : Flapjack.WordAlloc.removeDeadStructural input59 value27 value1 value10 = (output59, value30, value1) := by
  rw [input59_def, output59_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child58]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output58_skip]
  kernel_rfl

theorem node60_cond_eq : Flapjack.WordAlloc.removeDeadStructural input60 value30 value1 value10 = (output60, value31, value1) := by
  rw [input60_def, output60_def]
  kernel_rfl

theorem node61_cond_eq : Flapjack.WordAlloc.removeDeadStructural input61 value31 value1 value10 = (output61, value32, value1) := by
  rw [input61_def, output61_def]
  kernel_rfl

theorem node62_cond_eq : Flapjack.WordAlloc.removeDeadStructural input62 value32 value1 value10 = (output62, value33, value1) := by
  rw [input62_def, output62_def]
  kernel_rfl

theorem node63_cond_eq : Flapjack.WordAlloc.removeDeadStructural input63 value33 value1 value10 = (output63, value34, value1) := by
  rw [input63_def, output63_def]
  kernel_rfl

theorem node64_cond_eq : Flapjack.WordAlloc.removeDeadStructural input64 value34 value1 value10 = (output64, value34, value1) := by
  rw [input64_def, output64_def]
  kernel_rfl

theorem node65_cond_eq : Flapjack.WordAlloc.removeDeadStructural input65 value34 value1 value10 = (output65, value34, value1) := by
  rw [input65_def, output65_def]
  kernel_rfl

theorem node66_cond_eq : Flapjack.WordAlloc.removeDeadStructural input66 value34 value1 value10 = (output66, value34, value1) := by
  rw [input66_def, output66_def]
  kernel_rfl

theorem node67_cond_eq : Flapjack.WordAlloc.removeDeadStructural input67 value34 value1 value10 = (output67, value34, value1) := by
  rw [input67_def, output67_def]
  kernel_rfl

theorem node68_cond_eq : Flapjack.WordAlloc.removeDeadStructural input68 value34 value1 value10 = (output68, value34, value1) := by
  rw [input68_def, output68_def]
  kernel_rfl

theorem node69_cond_eq : Flapjack.WordAlloc.removeDeadStructural input69 value34 value1 value10 = (output69, value34, value1) := by
  rw [input69_def, output69_def]
  kernel_rfl

theorem node70_cond_eq : Flapjack.WordAlloc.removeDeadStructural input70 value34 value1 value10 = (output70, value34, value1) := by
  rw [input70_def, output70_def]
  kernel_rfl

theorem node71_cond_eq : Flapjack.WordAlloc.removeDeadStructural input71 value34 value1 value10 = (output71, value34, value1) := by
  rw [input71_def, output71_def]
  kernel_rfl

theorem node72_cond_eq : Flapjack.WordAlloc.removeDeadStructural input72 value34 value1 value10 = (output72, value35, value1) := by
  rw [input72_def, output72_def]
  kernel_rfl

theorem node73_cond_eq : Flapjack.WordAlloc.removeDeadStructural input73 value35 value1 value10 = (output73, value36, value1) := by
  rw [input73_def, output73_def]
  kernel_rfl

theorem node74_cond_eq : Flapjack.WordAlloc.removeDeadStructural input74 value36 value1 value10 = (output74, value37, value1) := by
  rw [input74_def, output74_def]
  kernel_rfl

theorem node75_cond_eq : Flapjack.WordAlloc.removeDeadStructural input75 value37 value1 value10 = (output75, value38, value1) := by
  rw [input75_def, output75_def]
  kernel_rfl

theorem node76_cond_eq : Flapjack.WordAlloc.removeDeadStructural input76 value38 value1 value10 = (output76, value38, value1) := by
  rw [input76_def, output76_def]
  kernel_rfl

theorem node77_cond_eq : Flapjack.WordAlloc.removeDeadStructural input77 value38 value1 value10 = (output77, value38, value1) := by
  rw [input77_def, output77_def]
  kernel_rfl

theorem node78_cond_eq : Flapjack.WordAlloc.removeDeadStructural input78 value38 value1 value10 = (output78, value38, value1) := by
  rw [input78_def, output78_def]
  kernel_rfl

theorem node79_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value38 value1 value10 = (output77, value38, value1))
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value38 value1 value10 = (output78, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input79 value38 value1 value10 = (output79, value38, value1) := by
  rw [input79_def, output79_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child78]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output78_skip]
  kernel_rfl

theorem node80_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value38 value1 value10 = (output76, value38, value1))
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value38 value1 value10 = (output79, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input80 value38 value1 value10 = (output80, value38, value1) := by
  rw [input80_def, output80_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child79]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output79_skip]
  kernel_rfl

theorem node81_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value37 value1 value10 = (output75, value38, value1))
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value38 value1 value10 = (output80, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input81 value37 value1 value10 = (output81, value38, value1) := by
  rw [input81_def, output81_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  try dsimp only
  rw [child80]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output75_skip, output80_skip]
  kernel_rfl

theorem node82_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value36 value1 value10 = (output74, value37, value1))
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value37 value1 value10 = (output81, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input82 value36 value1 value10 = (output82, value38, value1) := by
  rw [input82_def, output82_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child81]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output81_skip]
  kernel_rfl

theorem node83_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value35 value1 value10 = (output73, value36, value1))
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value36 value1 value10 = (output82, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input83 value35 value1 value10 = (output83, value38, value1) := by
  rw [input83_def, output83_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child82]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output82_skip]
  kernel_rfl

theorem node84_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value34 value1 value10 = (output72, value35, value1))
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value35 value1 value10 = (output83, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input84 value34 value1 value10 = (output84, value38, value1) := by
  rw [input84_def, output84_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child83]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output83_skip]
  kernel_rfl

theorem node85_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value34 value1 value10 = (output71, value34, value1))
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value34 value1 value10 = (output84, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input85 value34 value1 value10 = (output85, value38, value1) := by
  rw [input85_def, output85_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child84]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output84_skip]
  kernel_rfl

theorem node86_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value34 value1 value10 = (output70, value34, value1))
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value34 value1 value10 = (output85, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input86 value34 value1 value10 = (output86, value38, value1) := by
  rw [input86_def, output86_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child85]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output85_skip]
  kernel_rfl

theorem node87_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value34 value1 value10 = (output69, value34, value1))
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value34 value1 value10 = (output86, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input87 value34 value1 value10 = (output87, value38, value1) := by
  rw [input87_def, output87_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child86]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output86_skip]
  kernel_rfl

theorem node88_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value34 value1 value10 = (output68, value34, value1))
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value34 value1 value10 = (output87, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input88 value34 value1 value10 = (output88, value38, value1) := by
  rw [input88_def, output88_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child87]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output87_skip]
  kernel_rfl

theorem node89_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value34 value1 value10 = (output67, value34, value1))
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value34 value1 value10 = (output88, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input89 value34 value1 value10 = (output89, value38, value1) := by
  rw [input89_def, output89_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child88]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output88_skip]
  kernel_rfl

theorem node90_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value34 value1 value10 = (output66, value34, value1))
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value34 value1 value10 = (output89, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input90 value34 value1 value10 = (output90, value38, value1) := by
  rw [input90_def, output90_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child89]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output89_skip]
  kernel_rfl

theorem node91_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value34 value1 value10 = (output65, value34, value1))
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value34 value1 value10 = (output90, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input91 value34 value1 value10 = (output91, value38, value1) := by
  rw [input91_def, output91_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child90]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output90_skip]
  kernel_rfl

theorem node92_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value34 value1 value10 = (output64, value34, value1))
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value34 value1 value10 = (output91, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input92 value34 value1 value10 = (output92, value38, value1) := by
  rw [input92_def, output92_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child91]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output91_skip]
  kernel_rfl

theorem node93_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value33 value1 value10 = (output63, value34, value1))
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value34 value1 value10 = (output92, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input93 value33 value1 value10 = (output93, value38, value1) := by
  rw [input93_def, output93_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child92]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output92_skip]
  kernel_rfl

theorem node94_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value32 value1 value10 = (output62, value33, value1))
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value33 value1 value10 = (output93, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input94 value32 value1 value10 = (output94, value38, value1) := by
  rw [input94_def, output94_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child93]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output93_skip]
  kernel_rfl

theorem node95_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value31 value1 value10 = (output61, value32, value1))
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value32 value1 value10 = (output94, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input95 value31 value1 value10 = (output95, value38, value1) := by
  rw [input95_def, output95_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child94]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output94_skip]
  kernel_rfl

theorem node96_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value30 value1 value10 = (output60, value31, value1))
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value31 value1 value10 = (output95, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input96 value30 value1 value10 = (output96, value38, value1) := by
  rw [input96_def, output96_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child95]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output95_skip]
  kernel_rfl

theorem node97_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value27 value1 value10 = (output59, value30, value1))
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value30 value1 value10 = (output96, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input97 value27 value1 value10 = (output97, value38, value1) := by
  rw [input97_def, output97_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child96]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output96_skip]
  kernel_rfl

theorem node98_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value27 value1 value10 = (output54, value27, value1))
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value27 value1 value10 = (output97, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input98 value27 value1 value10 = (output98, value38, value1) := by
  rw [input98_def, output98_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child97]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output97_skip]
  kernel_rfl

theorem node99_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value26 value1 value10 = (output53, value27, value1))
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value27 value1 value10 = (output98, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input99 value26 value1 value10 = (output99, value38, value1) := by
  rw [input99_def, output99_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child98]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output98_skip]
  kernel_rfl

theorem node100_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value25 value1 value10 = (output52, value26, value1))
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value26 value1 value10 = (output99, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input100 value25 value1 value10 = (output100, value38, value1) := by
  rw [input100_def, output100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child99]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output99_skip]
  kernel_rfl

theorem node101_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value24 value1 value10 = (output51, value25, value1))
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value25 value1 value10 = (output100, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input101 value24 value1 value10 = (output101, value38, value1) := by
  rw [input101_def, output101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output100_skip]
  kernel_rfl

theorem node102_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value23 value1 value10 = (output50, value24, value1))
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value24 value1 value10 = (output101, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input102 value23 value1 value10 = (output102, value38, value1) := by
  rw [input102_def, output102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output101_skip]
  kernel_rfl

theorem node103_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value23 value1 value10 = (output49, value23, value1))
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value23 value1 value10 = (output102, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input103 value23 value1 value10 = (output103, value38, value1) := by
  rw [input103_def, output103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output102_skip]
  kernel_rfl

theorem node104_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value23 value1 value10 = (output48, value23, value1))
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value23 value1 value10 = (output103, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input104 value23 value1 value10 = (output104, value38, value1) := by
  rw [input104_def, output104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output103_skip]
  kernel_rfl

theorem node105_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value23 value1 value10 = (output47, value23, value1))
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value23 value1 value10 = (output104, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input105 value23 value1 value10 = (output105, value38, value1) := by
  rw [input105_def, output105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output104_skip]
  kernel_rfl

theorem node106_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value23 value1 value10 = (output46, value23, value1))
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value23 value1 value10 = (output105, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input106 value23 value1 value10 = (output106, value38, value1) := by
  rw [input106_def, output106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output105_skip]
  kernel_rfl

theorem node107_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value23 value1 value10 = (output45, value23, value1))
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value23 value1 value10 = (output106, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input107 value23 value1 value10 = (output107, value38, value1) := by
  rw [input107_def, output107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output106_skip]
  kernel_rfl

theorem node108_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value23 value1 value10 = (output44, value23, value1))
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value23 value1 value10 = (output107, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input108 value23 value1 value10 = (output108, value38, value1) := by
  rw [input108_def, output108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output107_skip]
  kernel_rfl

theorem node109_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value23 value1 value10 = (output43, value23, value1))
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value23 value1 value10 = (output108, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input109 value23 value1 value10 = (output109, value38, value1) := by
  rw [input109_def, output109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output108_skip]
  kernel_rfl

theorem node110_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value23 value1 value10 = (output42, value23, value1))
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value23 value1 value10 = (output109, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input110 value23 value1 value10 = (output110, value38, value1) := by
  rw [input110_def, output110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output109_skip]
  kernel_rfl

theorem node111_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value22 value1 value10 = (output41, value23, value1))
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value23 value1 value10 = (output110, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input111 value22 value1 value10 = (output111, value38, value1) := by
  rw [input111_def, output111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output110_skip]
  kernel_rfl

theorem node112_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value21 value1 value10 = (output40, value22, value1))
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value22 value1 value10 = (output111, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input112 value21 value1 value10 = (output112, value38, value1) := by
  rw [input112_def, output112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output111_skip]
  kernel_rfl

theorem node113_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value20 value1 value10 = (output39, value21, value1))
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value21 value1 value10 = (output112, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input113 value20 value1 value10 = (output113, value38, value1) := by
  rw [input113_def, output113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output112_skip]
  kernel_rfl

theorem node114_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value19 value1 value10 = (output38, value20, value1))
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value20 value1 value10 = (output113, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input114 value19 value1 value10 = (output114, value38, value1) := by
  rw [input114_def, output114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output113_skip]
  kernel_rfl

theorem node115_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value16 value1 value10 = (output37, value19, value1))
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value19 value1 value10 = (output114, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input115 value16 value1 value10 = (output115, value38, value1) := by
  rw [input115_def, output115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output114_skip]
  kernel_rfl

theorem node116_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value16 value1 value10 = (output32, value16, value1))
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value16 value1 value10 = (output115, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input116 value16 value1 value10 = (output116, value38, value1) := by
  rw [input116_def, output116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output115_skip]
  kernel_rfl

theorem node117_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value10 = (output31, value16, value1))
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value16 value1 value10 = (output116, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input117 value13 value1 value10 = (output117, value38, value1) := by
  rw [input117_def, output117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output116_skip]
  kernel_rfl

theorem node118_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value12 value1 value10 = (output26, value13, value1))
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value13 value1 value10 = (output117, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input118 value12 value1 value10 = (output118, value38, value1) := by
  rw [input118_def, output118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output117_skip]
  kernel_rfl

theorem node119_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value12 value1 value10 = (output25, value12, value1))
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value12 value1 value10 = (output118, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input119 value12 value1 value10 = (output119, value38, value1) := by
  rw [input119_def, output119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output118_skip]
  kernel_rfl

theorem node120_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value11 value1 value10 = (output22, value12, value1))
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value12 value1 value10 = (output119, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input120 value11 value1 value10 = (output120, value38, value1) := by
  rw [input120_def, output120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output119_skip]
  kernel_rfl

theorem node121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input121 value11 value1 value10 = (output121, value11, value1) := by
  rw [input121_def, output121_def]
  kernel_rfl

theorem node122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input122 value11 value1 value10 = (output122, value11, value1) := by
  rw [input122_def, output122_def]
  kernel_rfl

theorem node123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input123 value11 value1 value10 = (output123, value11, value1) := by
  rw [input123_def, output123_def]
  kernel_rfl

theorem node124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input124 value11 value1 value10 = (output124, value11, value1) := by
  rw [input124_def, output124_def]
  kernel_rfl

theorem node125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input125 value11 value1 value10 = (output125, value11, value1) := by
  rw [input125_def, output125_def]
  kernel_rfl

theorem node126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input126 value11 value1 value10 = (output126, value11, value1) := by
  rw [input126_def, output126_def]
  kernel_rfl

theorem node127_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value11 value1 value10 = (output125, value11, value1))
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value11 value1 value10 = (output126, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input127 value11 value1 value10 = (output127, value11, value1) := by
  rw [input127_def, output127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output126_skip]
  kernel_rfl

theorem node128_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value11 value1 value10 = (output124, value11, value1))
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value11 value1 value10 = (output127, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input128 value11 value1 value10 = (output128, value11, value1) := by
  rw [input128_def, output128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output127_skip]
  kernel_rfl

theorem node129_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value11 value1 value10 = (output123, value11, value1))
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value11 value1 value10 = (output128, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input129 value11 value1 value10 = (output129, value11, value1) := by
  rw [input129_def, output129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output128_skip]
  kernel_rfl

theorem node130_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value11 value1 value10 = (output122, value11, value1))
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value11 value1 value10 = (output129, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input130 value11 value1 value10 = (output130, value11, value1) := by
  rw [input130_def, output130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output129_skip]
  kernel_rfl

theorem node131_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value11 value1 value10 = (output121, value11, value1))
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value11 value1 value10 = (output130, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input131 value11 value1 value10 = (output131, value11, value1) := by
  rw [input131_def, output131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output130_skip]
  kernel_rfl

theorem node132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input132 value11 value1 value10 = (output132, value38, value1) := by
  rw [input132_def, output132_def]
  kernel_rfl

theorem node133_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value11 value1 value10 = (output131, value11, value1))
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value11 value1 value10 = (output132, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input133 value11 value1 value10 = (output133, value38, value1) := by
  rw [input133_def, output133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output132_skip]
  kernel_rfl

theorem node134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input134 value38 value1 value10 = (output134, value8, value1) := by
  rw [input134_def, output134_def]
  kernel_rfl

theorem node135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input135 value8 value1 value10 = (output135, value8, value1) := by
  rw [input135_def, output135_def]
  kernel_rfl

theorem node136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input136 value8 value1 value10 = (output136, value8, value1) := by
  rw [input136_def, output136_def]
  kernel_rfl

theorem node137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input137 value8 value1 value10 = (output137, value8, value1) := by
  rw [input137_def, output137_def]
  kernel_rfl

theorem node138_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value8 value1 value10 = (output136, value8, value1))
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value8 value1 value10 = (output137, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input138 value8 value1 value10 = (output138, value8, value1) := by
  rw [input138_def, output138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output137_skip]
  kernel_rfl

theorem node139_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value8 value1 value10 = (output135, value8, value1))
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value8 value1 value10 = (output138, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input139 value8 value1 value10 = (output139, value8, value1) := by
  rw [input139_def, output139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output138_skip]
  kernel_rfl

theorem node140_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value38 value1 value10 = (output134, value8, value1))
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value8 value1 value10 = (output139, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input140 value38 value1 value10 = (output140, value8, value1) := by
  rw [input140_def, output140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output139_skip]
  kernel_rfl

theorem node141_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value11 value1 value10 = (output133, value38, value1))
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value38 value1 value10 = (output140, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input141 value11 value1 value10 = (output141, value8, value1) := by
  rw [input141_def, output141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output140_skip]
  kernel_rfl

theorem node142_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value11 value1 value10 = (output120, value38, value1))
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value11 value1 value10 = (output141, value8, value1)) : Flapjack.WordAlloc.removeDeadStructural input142 value11 value1 value10 = (output142, value41, value1) := by
  rw [input142_def, output142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child120]
  try dsimp only
  rw [child141]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output141_skip]
  kernel_rfl

theorem node143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input143 value41 value1 value10 = (output143, value42, value1) := by
  rw [input143_def, output143_def]
  kernel_rfl

theorem node144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input144 value42 value1 value10 = (output144, value9, value1) := by
  rw [input144_def, output144_def]
  kernel_rfl

theorem node145_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value41 value1 value10 = (output143, value42, value1))
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value42 value1 value10 = (output144, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input145 value41 value1 value10 = (output145, value9, value1) := by
  rw [input145_def, output145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output144_skip]
  kernel_rfl

theorem node146_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value11 value1 value10 = (output142, value41, value1))
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value41 value1 value10 = (output145, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input146 value11 value1 value10 = (output146, value9, value1) := by
  rw [input146_def, output146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output145_skip]
  kernel_rfl

theorem node147_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value11 value1 value10 = (output9, value11, value1))
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value11 value1 value10 = (output146, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input147 value11 value1 value10 = (output147, value9, value1) := by
  rw [input147_def, output147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output146_skip]
  kernel_rfl

theorem node148_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value9 value1 value10 = (output8, value11, value1))
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value11 value1 value10 = (output147, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input148 value9 value1 value10 = (output148, value9, value1) := by
  rw [input148_def, output148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output147_skip]
  kernel_rfl

theorem node149_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value9 value1 value10 = (output148, value9, value1)) : Flapjack.WordAlloc.removeDeadStructural input149 value8 value1 value2 = (output149, value9, value1) := by
  rw [input149_def, output149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value10 = (value9, value8) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child148
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input150 value9 value1 value2 = (output150, value43, value1) := by
  rw [input150_def, output150_def]
  kernel_rfl

theorem node151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input151 value43 value1 value2 = (output151, value43, value1) := by
  rw [input151_def, output151_def]
  kernel_rfl

theorem node152_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value9 value1 value2 = (output150, value43, value1))
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value43 value1 value2 = (output151, value43, value1)) : Flapjack.WordAlloc.removeDeadStructural input152 value9 value1 value2 = (output152, value43, value1) := by
  rw [input152_def, output152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output151_skip]
  kernel_rfl

theorem node153_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value8 value1 value2 = (output149, value9, value1))
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value9 value1 value2 = (output152, value43, value1)) : Flapjack.WordAlloc.removeDeadStructural input153 value8 value1 value2 = (output153, value43, value1) := by
  rw [input153_def, output153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output152_skip]
  kernel_rfl

theorem node154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input154 value43 value1 value2 = (output154, value43, value1) := by
  rw [input154_def, output154_def]
  kernel_rfl

theorem node155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input155 value43 value1 value2 = (output155, value43, value1) := by
  rw [input155_def, output155_def]
  kernel_rfl

theorem node156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input156 value43 value1 value44 = (output156, value45, value1) := by
  rw [input156_def, output156_def]
  kernel_rfl

theorem node157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input157 value45 value1 value44 = (output157, value45, value1) := by
  rw [input157_def, output157_def]
  kernel_rfl

theorem node158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input158 value45 value1 value44 = (output158, value45, value1) := by
  rw [input158_def, output158_def]
  kernel_rfl

theorem node159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input159 value45 value1 value44 = (output159, value45, value1) := by
  rw [input159_def, output159_def]
  kernel_rfl

theorem node160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input160 value45 value1 value44 = (output160, value45, value1) := by
  rw [input160_def, output160_def]
  kernel_rfl

theorem node161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input161 value45 value1 value44 = (output161, value45, value1) := by
  rw [input161_def, output161_def]
  kernel_rfl

theorem node162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input162 value45 value1 value44 = (output162, value45, value1) := by
  rw [input162_def, output162_def]
  kernel_rfl

theorem node163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input163 value45 value1 value44 = (output163, value45, value1) := by
  rw [input163_def, output163_def]
  kernel_rfl

theorem node164_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value45 value1 value44 = (output162, value45, value1))
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value45 value1 value44 = (output163, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input164 value45 value1 value44 = (output164, value45, value1) := by
  rw [input164_def, output164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output163_skip]
  kernel_rfl

theorem node165_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value45 value1 value44 = (output161, value45, value1))
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value45 value1 value44 = (output164, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input165 value45 value1 value44 = (output165, value45, value1) := by
  rw [input165_def, output165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output164_skip]
  kernel_rfl

theorem node166_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value45 value1 value44 = (output160, value45, value1))
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value45 value1 value44 = (output165, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input166 value45 value1 value44 = (output166, value45, value1) := by
  rw [input166_def, output166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output165_skip]
  kernel_rfl

theorem node167_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value45 value1 value44 = (output159, value45, value1))
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value45 value1 value44 = (output166, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input167 value45 value1 value44 = (output167, value45, value1) := by
  rw [input167_def, output167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output166_skip]
  kernel_rfl

theorem node168_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value45 value1 value44 = (output158, value45, value1))
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value45 value1 value44 = (output167, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input168 value45 value1 value44 = (output168, value45, value1) := by
  rw [input168_def, output168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output167_skip]
  kernel_rfl

theorem node169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input169 value45 value1 value44 = (output169, value46, value1) := by
  rw [input169_def, output169_def]
  kernel_rfl

theorem node170_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value45 value1 value44 = (output168, value45, value1))
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value45 value1 value44 = (output169, value46, value1)) : Flapjack.WordAlloc.removeDeadStructural input170 value45 value1 value44 = (output170, value46, value1) := by
  rw [input170_def, output170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output169_skip]
  kernel_rfl

theorem node171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input171 value46 value1 value44 = (output171, value43, value1) := by
  rw [input171_def, output171_def]
  kernel_rfl

theorem node172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input172 value43 value1 value44 = (output172, value46, value1) := by
  rw [input172_def, output172_def]
  kernel_rfl

theorem node173_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value46 value1 value44 = (output171, value43, value1))
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value43 value1 value44 = (output172, value46, value1)) : Flapjack.WordAlloc.removeDeadStructural input173 value46 value1 value44 = (output173, value46, value1) := by
  rw [input173_def, output173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output172_skip]
  kernel_rfl

theorem node174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input174 value46 value1 value44 = (output174, value47, value1) := by
  rw [input174_def, output174_def]
  kernel_rfl

theorem node175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input175 value47 value1 value44 = (output175, value48, value1) := by
  rw [input175_def, output175_def]
  kernel_rfl

theorem node176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input176 value48 value1 value44 = (output176, value49, value1) := by
  rw [input176_def, output176_def]
  kernel_rfl

theorem node177_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value47 value1 value44 = (output175, value48, value1))
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value48 value1 value44 = (output176, value49, value1)) : Flapjack.WordAlloc.removeDeadStructural input177 value47 value1 value44 = (output177, value49, value1) := by
  rw [input177_def, output177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output176_skip]
  kernel_rfl

theorem node178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input178 value49 value1 value44 = (output178, value50, value1) := by
  rw [input178_def, output178_def]
  kernel_rfl

theorem node179_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value47 value1 value44 = (output177, value49, value1))
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value49 value1 value44 = (output178, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input179 value47 value1 value44 = (output179, value50, value1) := by
  rw [input179_def, output179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output178_skip]
  kernel_rfl

theorem node180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input180 value50 value1 value44 = (output180, value51, value1) := by
  rw [input180_def, output180_def]
  kernel_rfl

theorem node181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input181 value51 value1 value44 = (output181, value52, value1) := by
  rw [input181_def, output181_def]
  kernel_rfl

theorem node182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input182 value52 value1 value44 = (output182, value53, value1) := by
  rw [input182_def, output182_def]
  kernel_rfl

theorem node183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input183 value53 value1 value44 = (output183, value54, value1) := by
  rw [input183_def, output183_def]
  kernel_rfl

theorem node184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input184 value54 value1 value44 = (output184, value54, value1) := by
  rw [input184_def, output184_def]
  kernel_rfl

theorem node185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input185 value54 value1 value44 = (output185, value55, value1) := by
  rw [input185_def, output185_def]
  kernel_rfl

theorem node186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input186 value55 value1 value44 = (output186, value56, value1) := by
  rw [input186_def, output186_def]
  kernel_rfl

theorem node187_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value54 value1 value44 = (output185, value55, value1))
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value55 value1 value44 = (output186, value56, value1)) : Flapjack.WordAlloc.removeDeadStructural input187 value54 value1 value44 = (output187, value56, value1) := by
  rw [input187_def, output187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output186_skip]
  kernel_rfl

theorem node188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input188 value56 value1 value44 = (output188, value57, value1) := by
  rw [input188_def, output188_def]
  kernel_rfl

theorem node189_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value54 value1 value44 = (output187, value56, value1))
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value56 value1 value44 = (output188, value57, value1)) : Flapjack.WordAlloc.removeDeadStructural input189 value54 value1 value44 = (output189, value57, value1) := by
  rw [input189_def, output189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output188_skip]
  kernel_rfl

theorem node190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input190 value57 value1 value44 = (output190, value58, value1) := by
  rw [input190_def, output190_def]
  kernel_rfl

theorem node191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input191 value58 value1 value44 = (output191, value59, value1) := by
  rw [input191_def, output191_def]
  kernel_rfl

theorem node192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input192 value59 value1 value44 = (output192, value60, value1) := by
  rw [input192_def, output192_def]
  kernel_rfl

theorem node193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input193 value60 value1 value44 = (output193, value61, value1) := by
  rw [input193_def, output193_def]
  kernel_rfl

theorem node194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input194 value61 value1 value44 = (output194, value61, value1) := by
  rw [input194_def, output194_def]
  kernel_rfl

theorem node195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input195 value61 value1 value44 = (output195, value61, value1) := by
  rw [input195_def, output195_def]
  kernel_rfl

theorem node196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input196 value61 value1 value44 = (output196, value61, value1) := by
  rw [input196_def, output196_def]
  kernel_rfl

theorem node197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input197 value61 value1 value44 = (output197, value61, value1) := by
  rw [input197_def, output197_def]
  kernel_rfl

theorem node198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input198 value61 value1 value44 = (output198, value61, value1) := by
  rw [input198_def, output198_def]
  kernel_rfl

theorem node199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input199 value61 value1 value44 = (output199, value61, value1) := by
  rw [input199_def, output199_def]
  kernel_rfl

theorem node200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input200 value61 value1 value44 = (output200, value61, value1) := by
  rw [input200_def, output200_def]
  kernel_rfl

theorem node201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input201 value61 value1 value44 = (output201, value61, value1) := by
  rw [input201_def, output201_def]
  kernel_rfl

theorem node202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input202 value61 value1 value44 = (output202, value62, value1) := by
  rw [input202_def, output202_def]
  kernel_rfl

theorem node203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input203 value62 value1 value44 = (output203, value63, value1) := by
  rw [input203_def, output203_def]
  kernel_rfl

theorem node204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input204 value63 value1 value44 = (output204, value64, value1) := by
  rw [input204_def, output204_def]
  kernel_rfl

theorem node205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input205 value64 value1 value44 = (output205, value65, value1) := by
  rw [input205_def, output205_def]
  kernel_rfl

theorem node206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input206 value65 value1 value44 = (output206, value65, value1) := by
  rw [input206_def, output206_def]
  kernel_rfl

theorem node207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input207 value65 value1 value44 = (output207, value65, value1) := by
  rw [input207_def, output207_def]
  kernel_rfl

theorem node208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input208 value65 value1 value44 = (output208, value65, value1) := by
  rw [input208_def, output208_def]
  kernel_rfl

theorem node209_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value65 value1 value44 = (output207, value65, value1))
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value65 value1 value44 = (output208, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input209 value65 value1 value44 = (output209, value65, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output208_skip]
  kernel_rfl

theorem node210_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value65 value1 value44 = (output206, value65, value1))
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value65 value1 value44 = (output209, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input210 value65 value1 value44 = (output210, value65, value1) := by
  rw [input210_def, output210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output209_skip]
  kernel_rfl

theorem node211_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value64 value1 value44 = (output205, value65, value1))
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value65 value1 value44 = (output210, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input211 value64 value1 value44 = (output211, value65, value1) := by
  rw [input211_def, output211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output210_skip]
  kernel_rfl

theorem node212_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value63 value1 value44 = (output204, value64, value1))
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value64 value1 value44 = (output211, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input212 value63 value1 value44 = (output212, value65, value1) := by
  rw [input212_def, output212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output211_skip]
  kernel_rfl

theorem node213_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value62 value1 value44 = (output203, value63, value1))
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value63 value1 value44 = (output212, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input213 value62 value1 value44 = (output213, value65, value1) := by
  rw [input213_def, output213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output212_skip]
  kernel_rfl

theorem node214_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value61 value1 value44 = (output202, value62, value1))
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value62 value1 value44 = (output213, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input214 value61 value1 value44 = (output214, value65, value1) := by
  rw [input214_def, output214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output213_skip]
  kernel_rfl

theorem node215_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value61 value1 value44 = (output201, value61, value1))
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value61 value1 value44 = (output214, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input215 value61 value1 value44 = (output215, value65, value1) := by
  rw [input215_def, output215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output214_skip]
  kernel_rfl

theorem node216_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value61 value1 value44 = (output200, value61, value1))
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value61 value1 value44 = (output215, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input216 value61 value1 value44 = (output216, value65, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output215_skip]
  kernel_rfl

theorem node217_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value61 value1 value44 = (output199, value61, value1))
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value61 value1 value44 = (output216, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input217 value61 value1 value44 = (output217, value65, value1) := by
  rw [input217_def, output217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output216_skip]
  kernel_rfl

theorem node218_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value61 value1 value44 = (output198, value61, value1))
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value61 value1 value44 = (output217, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input218 value61 value1 value44 = (output218, value65, value1) := by
  rw [input218_def, output218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output217_skip]
  kernel_rfl

theorem node219_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value61 value1 value44 = (output197, value61, value1))
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value61 value1 value44 = (output218, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input219 value61 value1 value44 = (output219, value65, value1) := by
  rw [input219_def, output219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output218_skip]
  kernel_rfl

theorem node220_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value61 value1 value44 = (output196, value61, value1))
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value61 value1 value44 = (output219, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input220 value61 value1 value44 = (output220, value65, value1) := by
  rw [input220_def, output220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output219_skip]
  kernel_rfl

theorem node221_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value61 value1 value44 = (output195, value61, value1))
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value61 value1 value44 = (output220, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input221 value61 value1 value44 = (output221, value65, value1) := by
  rw [input221_def, output221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output220_skip]
  kernel_rfl

theorem node222_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value61 value1 value44 = (output194, value61, value1))
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value61 value1 value44 = (output221, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input222 value61 value1 value44 = (output222, value65, value1) := by
  rw [input222_def, output222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output221_skip]
  kernel_rfl

theorem node223_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value60 value1 value44 = (output193, value61, value1))
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value61 value1 value44 = (output222, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input223 value60 value1 value44 = (output223, value65, value1) := by
  rw [input223_def, output223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output222_skip]
  kernel_rfl

theorem node224_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value59 value1 value44 = (output192, value60, value1))
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value60 value1 value44 = (output223, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input224 value59 value1 value44 = (output224, value65, value1) := by
  rw [input224_def, output224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output223_skip]
  kernel_rfl

theorem node225_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value58 value1 value44 = (output191, value59, value1))
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value59 value1 value44 = (output224, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input225 value58 value1 value44 = (output225, value65, value1) := by
  rw [input225_def, output225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output224_skip]
  kernel_rfl

theorem node226_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value57 value1 value44 = (output190, value58, value1))
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value58 value1 value44 = (output225, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input226 value57 value1 value44 = (output226, value65, value1) := by
  rw [input226_def, output226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output225_skip]
  kernel_rfl

theorem node227_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value54 value1 value44 = (output189, value57, value1))
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value57 value1 value44 = (output226, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input227 value54 value1 value44 = (output227, value65, value1) := by
  rw [input227_def, output227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output226_skip]
  kernel_rfl

theorem node228_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value54 value1 value44 = (output184, value54, value1))
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value54 value1 value44 = (output227, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input228 value54 value1 value44 = (output228, value65, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output227_skip]
  kernel_rfl

theorem node229_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value53 value1 value44 = (output183, value54, value1))
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value54 value1 value44 = (output228, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input229 value53 value1 value44 = (output229, value65, value1) := by
  rw [input229_def, output229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output228_skip]
  kernel_rfl

theorem node230_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value52 value1 value44 = (output182, value53, value1))
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value53 value1 value44 = (output229, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input230 value52 value1 value44 = (output230, value65, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output229_skip]
  kernel_rfl

theorem node231_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value51 value1 value44 = (output181, value52, value1))
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value52 value1 value44 = (output230, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input231 value51 value1 value44 = (output231, value65, value1) := by
  rw [input231_def, output231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output230_skip]
  kernel_rfl

theorem node232_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value50 value1 value44 = (output180, value51, value1))
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value51 value1 value44 = (output231, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input232 value50 value1 value44 = (output232, value65, value1) := by
  rw [input232_def, output232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output231_skip]
  kernel_rfl

theorem node233_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value47 value1 value44 = (output179, value50, value1))
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value50 value1 value44 = (output232, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input233 value47 value1 value44 = (output233, value65, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output232_skip]
  kernel_rfl

theorem node234_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value46 value1 value44 = (output174, value47, value1))
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value47 value1 value44 = (output233, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input234 value46 value1 value44 = (output234, value65, value1) := by
  rw [input234_def, output234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output233_skip]
  kernel_rfl

theorem node235_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value46 value1 value44 = (output173, value46, value1))
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value46 value1 value44 = (output234, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input235 value46 value1 value44 = (output235, value65, value1) := by
  rw [input235_def, output235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output234_skip]
  kernel_rfl

theorem node236_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value45 value1 value44 = (output170, value46, value1))
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value46 value1 value44 = (output235, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input236 value45 value1 value44 = (output236, value65, value1) := by
  rw [input236_def, output236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output235_skip]
  kernel_rfl

theorem node237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input237 value45 value1 value44 = (output237, value45, value1) := by
  rw [input237_def, output237_def]
  kernel_rfl

theorem node238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input238 value45 value1 value44 = (output238, value45, value1) := by
  rw [input238_def, output238_def]
  kernel_rfl

theorem node239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input239 value45 value1 value44 = (output239, value45, value1) := by
  rw [input239_def, output239_def]
  kernel_rfl

theorem node240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input240 value45 value1 value44 = (output240, value45, value1) := by
  rw [input240_def, output240_def]
  kernel_rfl

theorem node241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input241 value45 value1 value44 = (output241, value45, value1) := by
  rw [input241_def, output241_def]
  kernel_rfl

theorem node242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input242 value45 value1 value44 = (output242, value45, value1) := by
  rw [input242_def, output242_def]
  kernel_rfl

theorem node243_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value45 value1 value44 = (output241, value45, value1))
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value45 value1 value44 = (output242, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input243 value45 value1 value44 = (output243, value45, value1) := by
  rw [input243_def, output243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output242_skip]
  kernel_rfl

theorem node244_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value45 value1 value44 = (output240, value45, value1))
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value45 value1 value44 = (output243, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input244 value45 value1 value44 = (output244, value45, value1) := by
  rw [input244_def, output244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output243_skip]
  kernel_rfl

theorem node245_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value45 value1 value44 = (output239, value45, value1))
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value45 value1 value44 = (output244, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input245 value45 value1 value44 = (output245, value45, value1) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output244_skip]
  kernel_rfl

theorem node246_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value45 value1 value44 = (output238, value45, value1))
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value45 value1 value44 = (output245, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input246 value45 value1 value44 = (output246, value45, value1) := by
  rw [input246_def, output246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output245_skip]
  kernel_rfl

theorem node247_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value45 value1 value44 = (output237, value45, value1))
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value45 value1 value44 = (output246, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input247 value45 value1 value44 = (output247, value45, value1) := by
  rw [input247_def, output247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output246_skip]
  kernel_rfl

theorem node248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input248 value45 value1 value44 = (output248, value65, value1) := by
  rw [input248_def, output248_def]
  kernel_rfl

theorem node249_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value45 value1 value44 = (output247, value45, value1))
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value45 value1 value44 = (output248, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input249 value45 value1 value44 = (output249, value65, value1) := by
  rw [input249_def, output249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output248_skip]
  kernel_rfl

theorem node250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input250 value65 value1 value44 = (output250, value43, value1) := by
  rw [input250_def, output250_def]
  kernel_rfl

theorem node251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input251 value43 value1 value44 = (output251, value65, value1) := by
  rw [input251_def, output251_def]
  kernel_rfl

theorem node252_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value65 value1 value44 = (output250, value43, value1))
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value43 value1 value44 = (output251, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input252 value65 value1 value44 = (output252, value65, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output251_skip]
  kernel_rfl

theorem node253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input253 value65 value1 value44 = (output253, value65, value1) := by
  rw [input253_def, output253_def]
  kernel_rfl

theorem node254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input254 value65 value1 value44 = (output254, value65, value1) := by
  rw [input254_def, output254_def]
  kernel_rfl

theorem node255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input255 value65 value1 value44 = (output255, value65, value1) := by
  rw [input255_def, output255_def]
  kernel_rfl

#print axioms node255_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
