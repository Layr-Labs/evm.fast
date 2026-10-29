import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages652.Parallel.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages652.Parallel
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

theorem node6_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1))
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1)) : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1) := by
  rw [input6_def, output6_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child5]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output5_skip]
  kernel_rfl

theorem node7_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1) := by
  rw [input7_def, output7_def]
  kernel_rfl

theorem node8_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8 value8 value1 value2 = (output8, value9, value1) := by
  rw [input8_def, output8_def]
  kernel_rfl

theorem node9_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9 value9 value1 value2 = (output9, value10, value1) := by
  rw [input9_def, output9_def]
  kernel_rfl

theorem node10_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value8 value1 value2 = (output8, value9, value1))
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value9 value1 value2 = (output9, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1) := by
  rw [input10_def, output10_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child9]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output9_skip]
  kernel_rfl

theorem node11_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1) := by
  rw [input11_def, output11_def]
  kernel_rfl

theorem node12_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12 value11 value1 value2 = (output12, value12, value1) := by
  rw [input12_def, output12_def]
  kernel_rfl

theorem node13_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13 value12 value1 value2 = (output13, value13, value1) := by
  rw [input13_def, output13_def]
  kernel_rfl

theorem node14_cond_eq
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value11 value1 value2 = (output12, value12, value1))
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value12 value1 value2 = (output13, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12]
  try dsimp only
  rw [child13]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12_skip, output13_skip]
  kernel_rfl

theorem node15_cond_eq : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1) := by
  rw [input15_def, output15_def]
  kernel_rfl

theorem node16_cond_eq : Flapjack.WordAlloc.removeDeadStructural input16 value14 value1 value2 = (output16, value15, value1) := by
  rw [input16_def, output16_def]
  kernel_rfl

theorem node17_cond_eq : Flapjack.WordAlloc.removeDeadStructural input17 value15 value1 value2 = (output17, value16, value1) := by
  rw [input17_def, output17_def]
  kernel_rfl

theorem node18_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value14 value1 value2 = (output16, value15, value1))
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value15 value1 value2 = (output17, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1) := by
  rw [input18_def, output18_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child17]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output17_skip]
  kernel_rfl

theorem node19_cond_eq : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1) := by
  rw [input19_def, output19_def]
  kernel_rfl

theorem node20_cond_eq : Flapjack.WordAlloc.removeDeadStructural input20 value17 value1 value2 = (output20, value18, value1) := by
  rw [input20_def, output20_def]
  kernel_rfl

theorem node21_cond_eq : Flapjack.WordAlloc.removeDeadStructural input21 value18 value1 value2 = (output21, value19, value1) := by
  rw [input21_def, output21_def]
  kernel_rfl

theorem node22_cond_eq : Flapjack.WordAlloc.removeDeadStructural input22 value19 value1 value2 = (output22, value20, value1) := by
  rw [input22_def, output22_def]
  kernel_rfl

theorem node23_cond_eq : Flapjack.WordAlloc.removeDeadStructural input23 value20 value1 value2 = (output23, value21, value1) := by
  rw [input23_def, output23_def]
  kernel_rfl

theorem node24_cond_eq : Flapjack.WordAlloc.removeDeadStructural input24 value21 value1 value2 = (output24, value22, value1) := by
  rw [input24_def, output24_def]
  kernel_rfl

theorem node25_cond_eq : Flapjack.WordAlloc.removeDeadStructural input25 value22 value1 value2 = (output25, value23, value1) := by
  rw [input25_def, output25_def]
  kernel_rfl

theorem node26_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value21 value1 value2 = (output24, value22, value1))
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value22 value1 value2 = (output25, value23, value1)) : Flapjack.WordAlloc.removeDeadStructural input26 value21 value1 value2 = (output26, value23, value1) := by
  rw [input26_def, output26_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child25]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output25_skip]
  kernel_rfl

theorem node27_cond_eq : Flapjack.WordAlloc.removeDeadStructural input27 value23 value1 value2 = (output27, value24, value1) := by
  rw [input27_def, output27_def]
  kernel_rfl

theorem node28_cond_eq : Flapjack.WordAlloc.removeDeadStructural input28 value24 value1 value2 = (output28, value25, value1) := by
  rw [input28_def, output28_def]
  kernel_rfl

theorem node29_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value23 value1 value2 = (output27, value24, value1))
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value24 value1 value2 = (output28, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input29 value23 value1 value2 = (output29, value25, value1) := by
  rw [input29_def, output29_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child28]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output28_skip]
  kernel_rfl

theorem node30_cond_eq : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1) := by
  rw [input30_def, output30_def]
  kernel_rfl

theorem node31_cond_eq : Flapjack.WordAlloc.removeDeadStructural input31 value26 value1 value2 = (output31, value27, value1) := by
  rw [input31_def, output31_def]
  kernel_rfl

theorem node32_cond_eq : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1) := by
  rw [input32_def, output32_def]
  kernel_rfl

theorem node33_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value26 value1 value2 = (output31, value27, value1))
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input33 value26 value1 value2 = (output33, value28, value1) := by
  rw [input33_def, output33_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child32]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output32_skip]
  kernel_rfl

theorem node34_cond_eq : Flapjack.WordAlloc.removeDeadStructural input34 value28 value1 value2 = (output34, value29, value1) := by
  rw [input34_def, output34_def]
  kernel_rfl

theorem node35_cond_eq : Flapjack.WordAlloc.removeDeadStructural input35 value29 value1 value2 = (output35, value30, value1) := by
  rw [input35_def, output35_def]
  kernel_rfl

theorem node36_cond_eq : Flapjack.WordAlloc.removeDeadStructural input36 value30 value1 value2 = (output36, value31, value1) := by
  rw [input36_def, output36_def]
  kernel_rfl

theorem node37_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value29 value1 value2 = (output35, value30, value1))
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value30 value1 value2 = (output36, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input37 value29 value1 value2 = (output37, value31, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child36]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output36_skip]
  kernel_rfl

theorem node38_cond_eq : Flapjack.WordAlloc.removeDeadStructural input38 value31 value1 value2 = (output38, value32, value1) := by
  rw [input38_def, output38_def]
  kernel_rfl

theorem node39_cond_eq : Flapjack.WordAlloc.removeDeadStructural input39 value32 value1 value2 = (output39, value33, value1) := by
  rw [input39_def, output39_def]
  kernel_rfl

theorem node40_cond_eq : Flapjack.WordAlloc.removeDeadStructural input40 value33 value1 value2 = (output40, value34, value1) := by
  rw [input40_def, output40_def]
  kernel_rfl

theorem node41_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value32 value1 value2 = (output39, value33, value1))
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value33 value1 value2 = (output40, value34, value1)) : Flapjack.WordAlloc.removeDeadStructural input41 value32 value1 value2 = (output41, value34, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child40]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output40_skip]
  kernel_rfl

theorem node42_cond_eq : Flapjack.WordAlloc.removeDeadStructural input42 value34 value1 value2 = (output42, value35, value1) := by
  rw [input42_def, output42_def]
  kernel_rfl

theorem node43_cond_eq : Flapjack.WordAlloc.removeDeadStructural input43 value35 value1 value2 = (output43, value36, value1) := by
  rw [input43_def, output43_def]
  kernel_rfl

theorem node44_cond_eq : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1) := by
  rw [input44_def, output44_def]
  kernel_rfl

theorem node45_cond_eq : Flapjack.WordAlloc.removeDeadStructural input45 value37 value1 value2 = (output45, value38, value1) := by
  rw [input45_def, output45_def]
  kernel_rfl

theorem node46_cond_eq : Flapjack.WordAlloc.removeDeadStructural input46 value38 value1 value2 = (output46, value39, value1) := by
  rw [input46_def, output46_def]
  kernel_rfl

theorem node47_cond_eq : Flapjack.WordAlloc.removeDeadStructural input47 value39 value1 value2 = (output47, value40, value1) := by
  rw [input47_def, output47_def]
  kernel_rfl

theorem node48_cond_eq : Flapjack.WordAlloc.removeDeadStructural input48 value40 value1 value2 = (output48, value41, value1) := by
  rw [input48_def, output48_def]
  kernel_rfl

theorem node49_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value39 value1 value2 = (output47, value40, value1))
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value40 value1 value2 = (output48, value41, value1)) : Flapjack.WordAlloc.removeDeadStructural input49 value39 value1 value2 = (output49, value41, value1) := by
  rw [input49_def, output49_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child48]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output48_skip]
  kernel_rfl

theorem node50_cond_eq : Flapjack.WordAlloc.removeDeadStructural input50 value41 value1 value2 = (output50, value42, value1) := by
  rw [input50_def, output50_def]
  kernel_rfl

theorem node51_cond_eq : Flapjack.WordAlloc.removeDeadStructural input51 value42 value1 value2 = (output51, value43, value1) := by
  rw [input51_def, output51_def]
  kernel_rfl

theorem node52_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value41 value1 value2 = (output50, value42, value1))
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value42 value1 value2 = (output51, value43, value1)) : Flapjack.WordAlloc.removeDeadStructural input52 value41 value1 value2 = (output52, value43, value1) := by
  rw [input52_def, output52_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child51]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output51_skip]
  kernel_rfl

theorem node53_cond_eq : Flapjack.WordAlloc.removeDeadStructural input53 value43 value1 value2 = (output53, value44, value1) := by
  rw [input53_def, output53_def]
  kernel_rfl

theorem node54_cond_eq : Flapjack.WordAlloc.removeDeadStructural input54 value44 value1 value2 = (output54, value45, value1) := by
  rw [input54_def, output54_def]
  kernel_rfl

theorem node55_cond_eq : Flapjack.WordAlloc.removeDeadStructural input55 value45 value1 value2 = (output55, value46, value1) := by
  rw [input55_def, output55_def]
  kernel_rfl

theorem node56_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value44 value1 value2 = (output54, value45, value1))
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value45 value1 value2 = (output55, value46, value1)) : Flapjack.WordAlloc.removeDeadStructural input56 value44 value1 value2 = (output56, value46, value1) := by
  rw [input56_def, output56_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child55]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output55_skip]
  kernel_rfl

theorem node57_cond_eq : Flapjack.WordAlloc.removeDeadStructural input57 value46 value1 value2 = (output57, value47, value1) := by
  rw [input57_def, output57_def]
  kernel_rfl

theorem node58_cond_eq : Flapjack.WordAlloc.removeDeadStructural input58 value47 value1 value2 = (output58, value48, value1) := by
  rw [input58_def, output58_def]
  kernel_rfl

theorem node59_cond_eq : Flapjack.WordAlloc.removeDeadStructural input59 value48 value1 value2 = (output59, value49, value1) := by
  rw [input59_def, output59_def]
  kernel_rfl

theorem node60_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value47 value1 value2 = (output58, value48, value1))
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value48 value1 value2 = (output59, value49, value1)) : Flapjack.WordAlloc.removeDeadStructural input60 value47 value1 value2 = (output60, value49, value1) := by
  rw [input60_def, output60_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child59]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output59_skip]
  kernel_rfl

theorem node61_cond_eq : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1) := by
  rw [input61_def, output61_def]
  kernel_rfl

theorem node62_cond_eq : Flapjack.WordAlloc.removeDeadStructural input62 value50 value1 value2 = (output62, value51, value1) := by
  rw [input62_def, output62_def]
  kernel_rfl

theorem node63_cond_eq : Flapjack.WordAlloc.removeDeadStructural input63 value51 value1 value2 = (output63, value52, value1) := by
  rw [input63_def, output63_def]
  kernel_rfl

theorem node64_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value50 value1 value2 = (output62, value51, value1))
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value51 value1 value2 = (output63, value52, value1)) : Flapjack.WordAlloc.removeDeadStructural input64 value50 value1 value2 = (output64, value52, value1) := by
  rw [input64_def, output64_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child63]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output63_skip]
  kernel_rfl

theorem node65_cond_eq : Flapjack.WordAlloc.removeDeadStructural input65 value52 value1 value2 = (output65, value53, value1) := by
  rw [input65_def, output65_def]
  kernel_rfl

theorem node66_cond_eq : Flapjack.WordAlloc.removeDeadStructural input66 value53 value1 value2 = (output66, value54, value1) := by
  rw [input66_def, output66_def]
  kernel_rfl

theorem node67_cond_eq : Flapjack.WordAlloc.removeDeadStructural input67 value54 value1 value2 = (output67, value55, value1) := by
  rw [input67_def, output67_def]
  kernel_rfl

theorem node68_cond_eq : Flapjack.WordAlloc.removeDeadStructural input68 value55 value1 value2 = (output68, value56, value1) := by
  rw [input68_def, output68_def]
  kernel_rfl

theorem node69_cond_eq : Flapjack.WordAlloc.removeDeadStructural input69 value56 value1 value2 = (output69, value57, value1) := by
  rw [input69_def, output69_def]
  kernel_rfl

theorem node70_cond_eq : Flapjack.WordAlloc.removeDeadStructural input70 value57 value1 value2 = (output70, value58, value1) := by
  rw [input70_def, output70_def]
  kernel_rfl

theorem node71_cond_eq : Flapjack.WordAlloc.removeDeadStructural input71 value58 value1 value2 = (output71, value58, value1) := by
  rw [input71_def, output71_def]
  kernel_rfl

theorem node72_cond_eq : Flapjack.WordAlloc.removeDeadStructural input72 value58 value1 value2 = (output72, value59, value1) := by
  rw [input72_def, output72_def]
  kernel_rfl

theorem node73_cond_eq : Flapjack.WordAlloc.removeDeadStructural input73 value59 value1 value2 = (output73, value60, value1) := by
  rw [input73_def, output73_def]
  kernel_rfl

theorem node74_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value58 value1 value2 = (output72, value59, value1))
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value59 value1 value2 = (output73, value60, value1)) : Flapjack.WordAlloc.removeDeadStructural input74 value58 value1 value2 = (output74, value60, value1) := by
  rw [input74_def, output74_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child73]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output73_skip]
  kernel_rfl

theorem node75_cond_eq : Flapjack.WordAlloc.removeDeadStructural input75 value60 value1 value2 = (output75, value61, value1) := by
  rw [input75_def, output75_def]
  kernel_rfl

theorem node76_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value58 value1 value2 = (output74, value60, value1))
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value60 value1 value2 = (output75, value61, value1)) : Flapjack.WordAlloc.removeDeadStructural input76 value58 value1 value2 = (output76, value61, value1) := by
  rw [input76_def, output76_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child75]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output75_skip]
  kernel_rfl

theorem node77_cond_eq : Flapjack.WordAlloc.removeDeadStructural input77 value61 value1 value2 = (output77, value62, value1) := by
  rw [input77_def, output77_def]
  kernel_rfl

theorem node78_cond_eq : Flapjack.WordAlloc.removeDeadStructural input78 value62 value1 value2 = (output78, value63, value1) := by
  rw [input78_def, output78_def]
  kernel_rfl

theorem node79_cond_eq : Flapjack.WordAlloc.removeDeadStructural input79 value63 value1 value2 = (output79, value64, value1) := by
  rw [input79_def, output79_def]
  kernel_rfl

theorem node80_cond_eq : Flapjack.WordAlloc.removeDeadStructural input80 value64 value1 value2 = (output80, value65, value1) := by
  rw [input80_def, output80_def]
  kernel_rfl

theorem node81_cond_eq : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1) := by
  rw [input81_def, output81_def]
  kernel_rfl

theorem node82_cond_eq : Flapjack.WordAlloc.removeDeadStructural input82 value66 value1 value2 = (output82, value67, value1) := by
  rw [input82_def, output82_def]
  kernel_rfl

theorem node83_cond_eq : Flapjack.WordAlloc.removeDeadStructural input83 value67 value1 value2 = (output83, value68, value1) := by
  rw [input83_def, output83_def]
  kernel_rfl

theorem node84_cond_eq : Flapjack.WordAlloc.removeDeadStructural input84 value68 value1 value2 = (output84, value69, value1) := by
  rw [input84_def, output84_def]
  kernel_rfl

theorem node85_cond_eq : Flapjack.WordAlloc.removeDeadStructural input85 value69 value1 value2 = (output85, value69, value1) := by
  rw [input85_def, output85_def]
  kernel_rfl

theorem node86_cond_eq : Flapjack.WordAlloc.removeDeadStructural input86 value69 value1 value2 = (output86, value70, value1) := by
  rw [input86_def, output86_def]
  kernel_rfl

theorem node87_cond_eq : Flapjack.WordAlloc.removeDeadStructural input87 value70 value1 value2 = (output87, value71, value1) := by
  rw [input87_def, output87_def]
  kernel_rfl

theorem node88_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value69 value1 value2 = (output86, value70, value1))
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value70 value1 value2 = (output87, value71, value1)) : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value71, value1) := by
  rw [input88_def, output88_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child87]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output87_skip]
  kernel_rfl

theorem node89_cond_eq : Flapjack.WordAlloc.removeDeadStructural input89 value71 value1 value2 = (output89, value72, value1) := by
  rw [input89_def, output89_def]
  kernel_rfl

theorem node90_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value71, value1))
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value71 value1 value2 = (output89, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input90 value69 value1 value2 = (output90, value72, value1) := by
  rw [input90_def, output90_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child89]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output89_skip]
  kernel_rfl

theorem node91_cond_eq : Flapjack.WordAlloc.removeDeadStructural input91 value72 value1 value2 = (output91, value73, value1) := by
  rw [input91_def, output91_def]
  kernel_rfl

theorem node92_cond_eq : Flapjack.WordAlloc.removeDeadStructural input92 value73 value1 value2 = (output92, value74, value1) := by
  rw [input92_def, output92_def]
  kernel_rfl

theorem node93_cond_eq : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1) := by
  rw [input93_def, output93_def]
  kernel_rfl

theorem node94_cond_eq : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1) := by
  rw [input94_def, output94_def]
  kernel_rfl

theorem node95_cond_eq : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1) := by
  rw [input95_def, output95_def]
  kernel_rfl

theorem node96_cond_eq : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1) := by
  rw [input96_def, output96_def]
  kernel_rfl

theorem node97_cond_eq : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1) := by
  rw [input97_def, output97_def]
  kernel_rfl

theorem node98_cond_eq : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1) := by
  rw [input98_def, output98_def]
  kernel_rfl

theorem node99_cond_eq : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value80, value1) := by
  rw [input99_def, output99_def]
  kernel_rfl

theorem node100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input100 value80 value1 value2 = (output100, value81, value1) := by
  rw [input100_def, output100_def]
  kernel_rfl

theorem node101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input101 value81 value1 value2 = (output101, value82, value1) := by
  rw [input101_def, output101_def]
  kernel_rfl

theorem node102_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value80 value1 value2 = (output100, value81, value1))
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value81 value1 value2 = (output101, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input102 value80 value1 value2 = (output102, value82, value1) := by
  rw [input102_def, output102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output101_skip]
  kernel_rfl

theorem node103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input103 value82 value1 value2 = (output103, value83, value1) := by
  rw [input103_def, output103_def]
  kernel_rfl

theorem node104_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value80 value1 value2 = (output102, value82, value1))
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value82 value1 value2 = (output103, value83, value1)) : Flapjack.WordAlloc.removeDeadStructural input104 value80 value1 value2 = (output104, value83, value1) := by
  rw [input104_def, output104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output103_skip]
  kernel_rfl

theorem node105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input105 value83 value1 value2 = (output105, value84, value1) := by
  rw [input105_def, output105_def]
  kernel_rfl

theorem node106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input106 value84 value1 value2 = (output106, value85, value1) := by
  rw [input106_def, output106_def]
  kernel_rfl

theorem node107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1) := by
  rw [input107_def, output107_def]
  kernel_rfl

theorem node108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1) := by
  rw [input108_def, output108_def]
  kernel_rfl

theorem node109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1) := by
  rw [input109_def, output109_def]
  kernel_rfl

theorem node110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1) := by
  rw [input110_def, output110_def]
  kernel_rfl

theorem node111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1) := by
  rw [input111_def, output111_def]
  kernel_rfl

theorem node112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1) := by
  rw [input112_def, output112_def]
  kernel_rfl

theorem node113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value91, value1) := by
  rw [input113_def, output113_def]
  kernel_rfl

theorem node114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input114 value91 value1 value2 = (output114, value92, value1) := by
  rw [input114_def, output114_def]
  kernel_rfl

theorem node115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input115 value92 value1 value2 = (output115, value93, value1) := by
  rw [input115_def, output115_def]
  kernel_rfl

theorem node116_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value91 value1 value2 = (output114, value92, value1))
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value92 value1 value2 = (output115, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input116 value91 value1 value2 = (output116, value93, value1) := by
  rw [input116_def, output116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output115_skip]
  kernel_rfl

theorem node117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input117 value93 value1 value2 = (output117, value94, value1) := by
  rw [input117_def, output117_def]
  kernel_rfl

theorem node118_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value91 value1 value2 = (output116, value93, value1))
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value93 value1 value2 = (output117, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input118 value91 value1 value2 = (output118, value94, value1) := by
  rw [input118_def, output118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output117_skip]
  kernel_rfl

theorem node119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input119 value94 value1 value2 = (output119, value95, value1) := by
  rw [input119_def, output119_def]
  kernel_rfl

theorem node120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input120 value95 value1 value2 = (output120, value96, value1) := by
  rw [input120_def, output120_def]
  kernel_rfl

theorem node121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input121 value96 value1 value2 = (output121, value97, value1) := by
  rw [input121_def, output121_def]
  kernel_rfl

theorem node122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input122 value97 value1 value2 = (output122, value98, value1) := by
  rw [input122_def, output122_def]
  kernel_rfl

theorem node123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input123 value98 value1 value2 = (output123, value99, value1) := by
  rw [input123_def, output123_def]
  kernel_rfl

theorem node124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input124 value99 value1 value2 = (output124, value100, value1) := by
  rw [input124_def, output124_def]
  kernel_rfl

theorem node125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1) := by
  rw [input125_def, output125_def]
  kernel_rfl

theorem node126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1) := by
  rw [input126_def, output126_def]
  kernel_rfl

theorem node127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value102, value1) := by
  rw [input127_def, output127_def]
  kernel_rfl

theorem node128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input128 value102 value1 value2 = (output128, value103, value1) := by
  rw [input128_def, output128_def]
  kernel_rfl

theorem node129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input129 value103 value1 value2 = (output129, value104, value1) := by
  rw [input129_def, output129_def]
  kernel_rfl

theorem node130_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value102 value1 value2 = (output128, value103, value1))
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value103 value1 value2 = (output129, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input130 value102 value1 value2 = (output130, value104, value1) := by
  rw [input130_def, output130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output129_skip]
  kernel_rfl

theorem node131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input131 value104 value1 value2 = (output131, value105, value1) := by
  rw [input131_def, output131_def]
  kernel_rfl

theorem node132_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value102 value1 value2 = (output130, value104, value1))
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value104 value1 value2 = (output131, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input132 value102 value1 value2 = (output132, value105, value1) := by
  rw [input132_def, output132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output131_skip]
  kernel_rfl

theorem node133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input133 value105 value1 value2 = (output133, value106, value1) := by
  rw [input133_def, output133_def]
  kernel_rfl

theorem node134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input134 value106 value1 value2 = (output134, value107, value1) := by
  rw [input134_def, output134_def]
  kernel_rfl

theorem node135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input135 value107 value1 value2 = (output135, value108, value1) := by
  rw [input135_def, output135_def]
  kernel_rfl

theorem node136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input136 value108 value1 value2 = (output136, value109, value1) := by
  rw [input136_def, output136_def]
  kernel_rfl

theorem node137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input137 value109 value1 value2 = (output137, value110, value1) := by
  rw [input137_def, output137_def]
  kernel_rfl

theorem node138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input138 value110 value1 value2 = (output138, value111, value1) := by
  rw [input138_def, output138_def]
  kernel_rfl

theorem node139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input139 value111 value1 value2 = (output139, value112, value1) := by
  rw [input139_def, output139_def]
  kernel_rfl

theorem node140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input140 value112 value1 value2 = (output140, value113, value1) := by
  rw [input140_def, output140_def]
  kernel_rfl

theorem node141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input141 value113 value1 value2 = (output141, value113, value1) := by
  rw [input141_def, output141_def]
  kernel_rfl

theorem node142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input142 value113 value1 value2 = (output142, value114, value1) := by
  rw [input142_def, output142_def]
  kernel_rfl

theorem node143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input143 value114 value1 value2 = (output143, value115, value1) := by
  rw [input143_def, output143_def]
  kernel_rfl

theorem node144_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value113 value1 value2 = (output142, value114, value1))
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value114 value1 value2 = (output143, value115, value1)) : Flapjack.WordAlloc.removeDeadStructural input144 value113 value1 value2 = (output144, value115, value1) := by
  rw [input144_def, output144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output143_skip]
  kernel_rfl

theorem node145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input145 value115 value1 value2 = (output145, value116, value1) := by
  rw [input145_def, output145_def]
  kernel_rfl

theorem node146_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value113 value1 value2 = (output144, value115, value1))
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value115 value1 value2 = (output145, value116, value1)) : Flapjack.WordAlloc.removeDeadStructural input146 value113 value1 value2 = (output146, value116, value1) := by
  rw [input146_def, output146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output145_skip]
  kernel_rfl

theorem node147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input147 value116 value1 value2 = (output147, value117, value1) := by
  rw [input147_def, output147_def]
  kernel_rfl

theorem node148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input148 value117 value1 value2 = (output148, value118, value1) := by
  rw [input148_def, output148_def]
  kernel_rfl

theorem node149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input149 value118 value1 value2 = (output149, value119, value1) := by
  rw [input149_def, output149_def]
  kernel_rfl

theorem node150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input150 value119 value1 value2 = (output150, value120, value1) := by
  rw [input150_def, output150_def]
  kernel_rfl

theorem node151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input151 value120 value1 value2 = (output151, value121, value1) := by
  rw [input151_def, output151_def]
  kernel_rfl

theorem node152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input152 value121 value1 value2 = (output152, value122, value1) := by
  rw [input152_def, output152_def]
  kernel_rfl

theorem node153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input153 value122 value1 value2 = (output153, value123, value1) := by
  rw [input153_def, output153_def]
  kernel_rfl

theorem node154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input154 value123 value1 value2 = (output154, value124, value1) := by
  rw [input154_def, output154_def]
  kernel_rfl

theorem node155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input155 value124 value1 value2 = (output155, value124, value1) := by
  rw [input155_def, output155_def]
  kernel_rfl

theorem node156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input156 value124 value1 value2 = (output156, value125, value1) := by
  rw [input156_def, output156_def]
  kernel_rfl

theorem node157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input157 value125 value1 value2 = (output157, value126, value1) := by
  rw [input157_def, output157_def]
  kernel_rfl

theorem node158_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value124 value1 value2 = (output156, value125, value1))
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value125 value1 value2 = (output157, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input158 value124 value1 value2 = (output158, value126, value1) := by
  rw [input158_def, output158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output157_skip]
  kernel_rfl

theorem node159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input159 value126 value1 value2 = (output159, value127, value1) := by
  rw [input159_def, output159_def]
  kernel_rfl

theorem node160_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value124 value1 value2 = (output158, value126, value1))
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value126 value1 value2 = (output159, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input160 value124 value1 value2 = (output160, value127, value1) := by
  rw [input160_def, output160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output159_skip]
  kernel_rfl

theorem node161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input161 value127 value1 value2 = (output161, value128, value1) := by
  rw [input161_def, output161_def]
  kernel_rfl

theorem node162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input162 value128 value1 value2 = (output162, value129, value1) := by
  rw [input162_def, output162_def]
  kernel_rfl

theorem node163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input163 value129 value1 value2 = (output163, value130, value1) := by
  rw [input163_def, output163_def]
  kernel_rfl

theorem node164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input164 value130 value1 value2 = (output164, value131, value1) := by
  rw [input164_def, output164_def]
  kernel_rfl

theorem node165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input165 value131 value1 value2 = (output165, value132, value1) := by
  rw [input165_def, output165_def]
  kernel_rfl

theorem node166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input166 value132 value1 value2 = (output166, value133, value1) := by
  rw [input166_def, output166_def]
  kernel_rfl

theorem node167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input167 value133 value1 value2 = (output167, value134, value1) := by
  rw [input167_def, output167_def]
  kernel_rfl

theorem node168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input168 value134 value1 value2 = (output168, value135, value1) := by
  rw [input168_def, output168_def]
  kernel_rfl

theorem node169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input169 value135 value1 value2 = (output169, value135, value1) := by
  rw [input169_def, output169_def]
  kernel_rfl

theorem node170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input170 value135 value1 value2 = (output170, value136, value1) := by
  rw [input170_def, output170_def]
  kernel_rfl

theorem node171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input171 value136 value1 value2 = (output171, value137, value1) := by
  rw [input171_def, output171_def]
  kernel_rfl

theorem node172_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value135 value1 value2 = (output170, value136, value1))
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value136 value1 value2 = (output171, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input172 value135 value1 value2 = (output172, value137, value1) := by
  rw [input172_def, output172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output171_skip]
  kernel_rfl

theorem node173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input173 value137 value1 value2 = (output173, value138, value1) := by
  rw [input173_def, output173_def]
  kernel_rfl

theorem node174_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value135 value1 value2 = (output172, value137, value1))
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value137 value1 value2 = (output173, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input174 value135 value1 value2 = (output174, value138, value1) := by
  rw [input174_def, output174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output173_skip]
  kernel_rfl

theorem node175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input175 value138 value1 value2 = (output175, value139, value1) := by
  rw [input175_def, output175_def]
  kernel_rfl

theorem node176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input176 value139 value1 value2 = (output176, value140, value1) := by
  rw [input176_def, output176_def]
  kernel_rfl

theorem node177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input177 value140 value1 value2 = (output177, value141, value1) := by
  rw [input177_def, output177_def]
  kernel_rfl

theorem node178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input178 value141 value1 value2 = (output178, value142, value1) := by
  rw [input178_def, output178_def]
  kernel_rfl

theorem node179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input179 value142 value1 value2 = (output179, value143, value1) := by
  rw [input179_def, output179_def]
  kernel_rfl

theorem node180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input180 value143 value1 value2 = (output180, value144, value1) := by
  rw [input180_def, output180_def]
  kernel_rfl

theorem node181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input181 value144 value1 value2 = (output181, value145, value1) := by
  rw [input181_def, output181_def]
  kernel_rfl

theorem node182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input182 value145 value1 value2 = (output182, value146, value1) := by
  rw [input182_def, output182_def]
  kernel_rfl

theorem node183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input183 value146 value1 value2 = (output183, value146, value1) := by
  rw [input183_def, output183_def]
  kernel_rfl

theorem node184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input184 value146 value1 value2 = (output184, value147, value1) := by
  rw [input184_def, output184_def]
  kernel_rfl

theorem node185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input185 value147 value1 value2 = (output185, value148, value1) := by
  rw [input185_def, output185_def]
  kernel_rfl

theorem node186_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value146 value1 value2 = (output184, value147, value1))
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value147 value1 value2 = (output185, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input186 value146 value1 value2 = (output186, value148, value1) := by
  rw [input186_def, output186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output185_skip]
  kernel_rfl

theorem node187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input187 value148 value1 value2 = (output187, value149, value1) := by
  rw [input187_def, output187_def]
  kernel_rfl

theorem node188_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value146 value1 value2 = (output186, value148, value1))
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value148 value1 value2 = (output187, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input188 value146 value1 value2 = (output188, value149, value1) := by
  rw [input188_def, output188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output187_skip]
  kernel_rfl

theorem node189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input189 value149 value1 value2 = (output189, value150, value1) := by
  rw [input189_def, output189_def]
  kernel_rfl

theorem node190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input190 value150 value1 value2 = (output190, value151, value1) := by
  rw [input190_def, output190_def]
  kernel_rfl

theorem node191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input191 value151 value1 value2 = (output191, value152, value1) := by
  rw [input191_def, output191_def]
  kernel_rfl

theorem node192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input192 value152 value1 value2 = (output192, value153, value1) := by
  rw [input192_def, output192_def]
  kernel_rfl

theorem node193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input193 value153 value1 value2 = (output193, value153, value1) := by
  rw [input193_def, output193_def]
  kernel_rfl

theorem node194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input194 value153 value1 value2 = (output194, value154, value1) := by
  rw [input194_def, output194_def]
  kernel_rfl

theorem node195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input195 value154 value1 value2 = (output195, value155, value1) := by
  rw [input195_def, output195_def]
  kernel_rfl

theorem node196_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value153 value1 value2 = (output194, value154, value1))
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value154 value1 value2 = (output195, value155, value1)) : Flapjack.WordAlloc.removeDeadStructural input196 value153 value1 value2 = (output196, value155, value1) := by
  rw [input196_def, output196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output195_skip]
  kernel_rfl

theorem node197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input197 value155 value1 value2 = (output197, value156, value1) := by
  rw [input197_def, output197_def]
  kernel_rfl

theorem node198_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value153 value1 value2 = (output196, value155, value1))
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value155 value1 value2 = (output197, value156, value1)) : Flapjack.WordAlloc.removeDeadStructural input198 value153 value1 value2 = (output198, value156, value1) := by
  rw [input198_def, output198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output197_skip]
  kernel_rfl

theorem node199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input199 value156 value1 value2 = (output199, value157, value1) := by
  rw [input199_def, output199_def]
  kernel_rfl

theorem node200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input200 value157 value1 value2 = (output200, value158, value1) := by
  rw [input200_def, output200_def]
  kernel_rfl

theorem node201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input201 value158 value1 value2 = (output201, value159, value1) := by
  rw [input201_def, output201_def]
  kernel_rfl

theorem node202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input202 value159 value1 value2 = (output202, value160, value1) := by
  rw [input202_def, output202_def]
  kernel_rfl

theorem node203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input203 value160 value1 value2 = (output203, value161, value1) := by
  rw [input203_def, output203_def]
  kernel_rfl

theorem node204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input204 value161 value1 value2 = (output204, value162, value1) := by
  rw [input204_def, output204_def]
  kernel_rfl

theorem node205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input205 value162 value1 value2 = (output205, value163, value1) := by
  rw [input205_def, output205_def]
  kernel_rfl

theorem node206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input206 value163 value1 value2 = (output206, value164, value1) := by
  rw [input206_def, output206_def]
  kernel_rfl

theorem node207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input207 value164 value1 value2 = (output207, value164, value1) := by
  rw [input207_def, output207_def]
  kernel_rfl

theorem node208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input208 value164 value1 value2 = (output208, value165, value1) := by
  rw [input208_def, output208_def]
  kernel_rfl

theorem node209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input209 value165 value1 value2 = (output209, value166, value1) := by
  rw [input209_def, output209_def]
  kernel_rfl

theorem node210_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value164 value1 value2 = (output208, value165, value1))
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value165 value1 value2 = (output209, value166, value1)) : Flapjack.WordAlloc.removeDeadStructural input210 value164 value1 value2 = (output210, value166, value1) := by
  rw [input210_def, output210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output209_skip]
  kernel_rfl

theorem node211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input211 value166 value1 value2 = (output211, value167, value1) := by
  rw [input211_def, output211_def]
  kernel_rfl

theorem node212_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value164 value1 value2 = (output210, value166, value1))
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value166 value1 value2 = (output211, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input212 value164 value1 value2 = (output212, value167, value1) := by
  rw [input212_def, output212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output211_skip]
  kernel_rfl

theorem node213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input213 value167 value1 value2 = (output213, value168, value1) := by
  rw [input213_def, output213_def]
  kernel_rfl

theorem node214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input214 value168 value1 value2 = (output214, value169, value1) := by
  rw [input214_def, output214_def]
  kernel_rfl

theorem node215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input215 value169 value1 value2 = (output215, value170, value1) := by
  rw [input215_def, output215_def]
  kernel_rfl

theorem node216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input216 value170 value1 value2 = (output216, value171, value1) := by
  rw [input216_def, output216_def]
  kernel_rfl

theorem node217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input217 value171 value1 value2 = (output217, value172, value1) := by
  rw [input217_def, output217_def]
  kernel_rfl

theorem node218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input218 value172 value1 value2 = (output218, value173, value1) := by
  rw [input218_def, output218_def]
  kernel_rfl

theorem node219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input219 value173 value1 value2 = (output219, value174, value1) := by
  rw [input219_def, output219_def]
  kernel_rfl

theorem node220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input220 value174 value1 value2 = (output220, value175, value1) := by
  rw [input220_def, output220_def]
  kernel_rfl

theorem node221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input221 value175 value1 value2 = (output221, value175, value1) := by
  rw [input221_def, output221_def]
  kernel_rfl

theorem node222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input222 value175 value1 value2 = (output222, value176, value1) := by
  rw [input222_def, output222_def]
  kernel_rfl

theorem node223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input223 value176 value1 value2 = (output223, value177, value1) := by
  rw [input223_def, output223_def]
  kernel_rfl

theorem node224_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value175 value1 value2 = (output222, value176, value1))
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value176 value1 value2 = (output223, value177, value1)) : Flapjack.WordAlloc.removeDeadStructural input224 value175 value1 value2 = (output224, value177, value1) := by
  rw [input224_def, output224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output223_skip]
  kernel_rfl

theorem node225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input225 value177 value1 value2 = (output225, value178, value1) := by
  rw [input225_def, output225_def]
  kernel_rfl

theorem node226_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value175 value1 value2 = (output224, value177, value1))
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value177 value1 value2 = (output225, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input226 value175 value1 value2 = (output226, value178, value1) := by
  rw [input226_def, output226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output225_skip]
  kernel_rfl

theorem node227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input227 value178 value1 value2 = (output227, value179, value1) := by
  rw [input227_def, output227_def]
  kernel_rfl

theorem node228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input228 value179 value1 value2 = (output228, value180, value1) := by
  rw [input228_def, output228_def]
  kernel_rfl

theorem node229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input229 value180 value1 value2 = (output229, value181, value1) := by
  rw [input229_def, output229_def]
  kernel_rfl

theorem node230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input230 value181 value1 value2 = (output230, value182, value1) := by
  rw [input230_def, output230_def]
  kernel_rfl

theorem node231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input231 value182 value1 value2 = (output231, value182, value1) := by
  rw [input231_def, output231_def]
  kernel_rfl

theorem node232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input232 value182 value1 value2 = (output232, value183, value1) := by
  rw [input232_def, output232_def]
  kernel_rfl

theorem node233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input233 value183 value1 value2 = (output233, value184, value1) := by
  rw [input233_def, output233_def]
  kernel_rfl

theorem node234_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value182 value1 value2 = (output232, value183, value1))
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value183 value1 value2 = (output233, value184, value1)) : Flapjack.WordAlloc.removeDeadStructural input234 value182 value1 value2 = (output234, value184, value1) := by
  rw [input234_def, output234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output233_skip]
  kernel_rfl

theorem node235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input235 value184 value1 value2 = (output235, value185, value1) := by
  rw [input235_def, output235_def]
  kernel_rfl

theorem node236_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value182 value1 value2 = (output234, value184, value1))
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value184 value1 value2 = (output235, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input236 value182 value1 value2 = (output236, value185, value1) := by
  rw [input236_def, output236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output235_skip]
  kernel_rfl

theorem node237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input237 value185 value1 value2 = (output237, value186, value1) := by
  rw [input237_def, output237_def]
  kernel_rfl

theorem node238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input238 value186 value1 value2 = (output238, value187, value1) := by
  rw [input238_def, output238_def]
  kernel_rfl

theorem node239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input239 value187 value1 value2 = (output239, value188, value1) := by
  rw [input239_def, output239_def]
  kernel_rfl

theorem node240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input240 value188 value1 value2 = (output240, value189, value1) := by
  rw [input240_def, output240_def]
  kernel_rfl

theorem node241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input241 value189 value1 value2 = (output241, value190, value1) := by
  rw [input241_def, output241_def]
  kernel_rfl

theorem node242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input242 value190 value1 value2 = (output242, value191, value1) := by
  rw [input242_def, output242_def]
  kernel_rfl

theorem node243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input243 value191 value1 value2 = (output243, value192, value1) := by
  rw [input243_def, output243_def]
  kernel_rfl

theorem node244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input244 value192 value1 value2 = (output244, value193, value1) := by
  rw [input244_def, output244_def]
  kernel_rfl

theorem node245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input245 value193 value1 value2 = (output245, value193, value1) := by
  rw [input245_def, output245_def]
  kernel_rfl

theorem node246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input246 value193 value1 value2 = (output246, value194, value1) := by
  rw [input246_def, output246_def]
  kernel_rfl

theorem node247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input247 value194 value1 value2 = (output247, value195, value1) := by
  rw [input247_def, output247_def]
  kernel_rfl

theorem node248_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value193 value1 value2 = (output246, value194, value1))
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value194 value1 value2 = (output247, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input248 value193 value1 value2 = (output248, value195, value1) := by
  rw [input248_def, output248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output247_skip]
  kernel_rfl

theorem node249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input249 value195 value1 value2 = (output249, value196, value1) := by
  rw [input249_def, output249_def]
  kernel_rfl

theorem node250_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value193 value1 value2 = (output248, value195, value1))
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value195 value1 value2 = (output249, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input250 value193 value1 value2 = (output250, value196, value1) := by
  rw [input250_def, output250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output249_skip]
  kernel_rfl

theorem node251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input251 value196 value1 value2 = (output251, value197, value1) := by
  rw [input251_def, output251_def]
  kernel_rfl

theorem node252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input252 value197 value1 value2 = (output252, value198, value1) := by
  rw [input252_def, output252_def]
  kernel_rfl

theorem node253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input253 value198 value1 value2 = (output253, value199, value1) := by
  rw [input253_def, output253_def]
  kernel_rfl

theorem node254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input254 value199 value1 value2 = (output254, value200, value1) := by
  rw [input254_def, output254_def]
  kernel_rfl

theorem node255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input255 value200 value1 value2 = (output255, value201, value1) := by
  rw [input255_def, output255_def]
  kernel_rfl

#print axioms node255_cond_eq
end InitECandidate.Proofs.DeadStages652.Parallel
