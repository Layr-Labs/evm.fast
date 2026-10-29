import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node0_cond_eq : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1) := by
  rw [input0_def, output0_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1) := by
  rw [input1_def, output1_def]
  try (conv => lhs; cbv)
  try rfl

theorem node2_cond_eq
    (child0 : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1))
    (child1 : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1) := by
  rw [input2_def, output2_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child0]
  dsimp only
  rw [child1]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1) := by
  rw [input3_def, output3_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1) := by
  rw [input4_def, output4_def]
  try (conv => lhs; cbv)
  try rfl

theorem node5_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1)) : Flapjack.WordAlloc.removeDeadStructural input5 value4 value1 value2 = (output5, value6, value1) := by
  rw [input5_def, output5_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  dsimp only
  rw [child4]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node6_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6 value6 value1 value2 = (output6, value7, value1) := by
  rw [input6_def, output6_def]
  try (conv => lhs; cbv)
  try rfl

theorem node7_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value7, value1) := by
  rw [input7_def, output7_def]
  try (conv => lhs; cbv)
  try rfl

theorem node8_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8 value7 value1 value2 = (output8, value8, value1) := by
  rw [input8_def, output8_def]
  try (conv => lhs; cbv)
  try rfl

theorem node9_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9 value8 value1 value2 = (output9, value9, value1) := by
  rw [input9_def, output9_def]
  try (conv => lhs; cbv)
  try rfl

theorem node10_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10 value9 value1 value2 = (output10, value10, value1) := by
  rw [input10_def, output10_def]
  try (conv => lhs; cbv)
  try rfl

theorem node11_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value4, value1) := by
  rw [input11_def, output11_def]
  try (conv => lhs; cbv)
  try rfl

theorem node12_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value9 value1 value2 = (output10, value10, value1))
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input12 value9 value1 value2 = (output12, value4, value1) := by
  rw [input12_def, output12_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  dsimp only
  rw [child11]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node13_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value8 value1 value2 = (output9, value9, value1))
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value9 value1 value2 = (output12, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input13 value8 value1 value2 = (output13, value4, value1) := by
  rw [input13_def, output13_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  dsimp only
  rw [child12]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node14_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value7 value1 value2 = (output8, value8, value1))
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value8 value1 value2 = (output13, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input14 value7 value1 value2 = (output14, value4, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  dsimp only
  rw [child13]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node15_cond_eq : Flapjack.WordAlloc.removeDeadStructural input15 value4 value1 value2 = (output15, value11, value1) := by
  rw [input15_def, output15_def]
  try (conv => lhs; cbv)
  try rfl

theorem node16_cond_eq : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value2 = (output16, value12, value1) := by
  rw [input16_def, output16_def]
  try (conv => lhs; cbv)
  try rfl

theorem node17_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value4 value1 value2 = (output15, value11, value1))
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value2 = (output16, value12, value1)) : Flapjack.WordAlloc.removeDeadStructural input17 value4 value1 value2 = (output17, value12, value1) := by
  rw [input17_def, output17_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  dsimp only
  rw [child16]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node18_cond_eq : Flapjack.WordAlloc.removeDeadStructural input18 value12 value1 value2 = (output18, value13, value1) := by
  rw [input18_def, output18_def]
  try (conv => lhs; cbv)
  try rfl

theorem node19_cond_eq : Flapjack.WordAlloc.removeDeadStructural input19 value13 value1 value2 = (output19, value13, value1) := by
  rw [input19_def, output19_def]
  try (conv => lhs; cbv)
  try rfl

theorem node20_cond_eq : Flapjack.WordAlloc.removeDeadStructural input20 value13 value1 value2 = (output20, value14, value1) := by
  rw [input20_def, output20_def]
  try (conv => lhs; cbv)
  try rfl

theorem node21_cond_eq : Flapjack.WordAlloc.removeDeadStructural input21 value14 value1 value2 = (output21, value15, value1) := by
  rw [input21_def, output21_def]
  try (conv => lhs; cbv)
  try rfl

theorem node22_cond_eq : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value16, value1) := by
  rw [input22_def, output22_def]
  try (conv => lhs; cbv)
  try rfl

theorem node23_cond_eq : Flapjack.WordAlloc.removeDeadStructural input23 value16 value1 value2 = (output23, value4, value1) := by
  rw [input23_def, output23_def]
  try (conv => lhs; cbv)
  try rfl

theorem node24_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value16, value1))
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value16 value1 value2 = (output23, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input24 value15 value1 value2 = (output24, value4, value1) := by
  rw [input24_def, output24_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  dsimp only
  rw [child23]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node25_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value14 value1 value2 = (output21, value15, value1))
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value15 value1 value2 = (output24, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input25 value14 value1 value2 = (output25, value4, value1) := by
  rw [input25_def, output25_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  dsimp only
  rw [child24]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node26_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value13 value1 value2 = (output20, value14, value1))
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value14 value1 value2 = (output25, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input26 value13 value1 value2 = (output26, value4, value1) := by
  rw [input26_def, output26_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  dsimp only
  rw [child25]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node27_cond_eq : Flapjack.WordAlloc.removeDeadStructural input27 value4 value1 value2 = (output27, value17, value1) := by
  rw [input27_def, output27_def]
  try (conv => lhs; cbv)
  try rfl

theorem node28_cond_eq : Flapjack.WordAlloc.removeDeadStructural input28 value17 value1 value2 = (output28, value18, value1) := by
  rw [input28_def, output28_def]
  try (conv => lhs; cbv)
  try rfl

theorem node29_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value4 value1 value2 = (output27, value17, value1))
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value17 value1 value2 = (output28, value18, value1)) : Flapjack.WordAlloc.removeDeadStructural input29 value4 value1 value2 = (output29, value18, value1) := by
  rw [input29_def, output29_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  dsimp only
  rw [child28]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node30_cond_eq : Flapjack.WordAlloc.removeDeadStructural input30 value18 value1 value2 = (output30, value19, value1) := by
  rw [input30_def, output30_def]
  try (conv => lhs; cbv)
  try rfl

theorem node31_cond_eq : Flapjack.WordAlloc.removeDeadStructural input31 value19 value1 value2 = (output31, value19, value1) := by
  rw [input31_def, output31_def]
  try (conv => lhs; cbv)
  try rfl

theorem node32_cond_eq : Flapjack.WordAlloc.removeDeadStructural input32 value19 value1 value2 = (output32, value20, value1) := by
  rw [input32_def, output32_def]
  try (conv => lhs; cbv)
  try rfl

theorem node33_cond_eq : Flapjack.WordAlloc.removeDeadStructural input33 value20 value1 value2 = (output33, value21, value1) := by
  rw [input33_def, output33_def]
  try (conv => lhs; cbv)
  try rfl

theorem node34_cond_eq : Flapjack.WordAlloc.removeDeadStructural input34 value21 value1 value2 = (output34, value22, value1) := by
  rw [input34_def, output34_def]
  try (conv => lhs; cbv)
  try rfl

theorem node35_cond_eq : Flapjack.WordAlloc.removeDeadStructural input35 value22 value1 value2 = (output35, value4, value1) := by
  rw [input35_def, output35_def]
  try (conv => lhs; cbv)
  try rfl

theorem node36_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value21 value1 value2 = (output34, value22, value1))
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value22 value1 value2 = (output35, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input36 value21 value1 value2 = (output36, value4, value1) := by
  rw [input36_def, output36_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  dsimp only
  rw [child35]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node37_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value20 value1 value2 = (output33, value21, value1))
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value21 value1 value2 = (output36, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input37 value20 value1 value2 = (output37, value4, value1) := by
  rw [input37_def, output37_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  dsimp only
  rw [child36]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node38_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value19 value1 value2 = (output32, value20, value1))
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value20 value1 value2 = (output37, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input38 value19 value1 value2 = (output38, value4, value1) := by
  rw [input38_def, output38_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  dsimp only
  rw [child37]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node39_cond_eq : Flapjack.WordAlloc.removeDeadStructural input39 value4 value1 value2 = (output39, value23, value1) := by
  rw [input39_def, output39_def]
  try (conv => lhs; cbv)
  try rfl

theorem node40_cond_eq : Flapjack.WordAlloc.removeDeadStructural input40 value23 value1 value2 = (output40, value24, value1) := by
  rw [input40_def, output40_def]
  try (conv => lhs; cbv)
  try rfl

theorem node41_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value4 value1 value2 = (output39, value23, value1))
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value23 value1 value2 = (output40, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input41 value4 value1 value2 = (output41, value24, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  dsimp only
  rw [child40]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node42_cond_eq : Flapjack.WordAlloc.removeDeadStructural input42 value24 value1 value2 = (output42, value25, value1) := by
  rw [input42_def, output42_def]
  try (conv => lhs; cbv)
  try rfl

theorem node43_cond_eq : Flapjack.WordAlloc.removeDeadStructural input43 value25 value1 value2 = (output43, value25, value1) := by
  rw [input43_def, output43_def]
  try (conv => lhs; cbv)
  try rfl

theorem node44_cond_eq : Flapjack.WordAlloc.removeDeadStructural input44 value25 value1 value2 = (output44, value26, value1) := by
  rw [input44_def, output44_def]
  try (conv => lhs; cbv)
  try rfl

theorem node45_cond_eq : Flapjack.WordAlloc.removeDeadStructural input45 value26 value1 value2 = (output45, value27, value1) := by
  rw [input45_def, output45_def]
  try (conv => lhs; cbv)
  try rfl

theorem node46_cond_eq : Flapjack.WordAlloc.removeDeadStructural input46 value27 value1 value2 = (output46, value28, value1) := by
  rw [input46_def, output46_def]
  try (conv => lhs; cbv)
  try rfl

theorem node47_cond_eq : Flapjack.WordAlloc.removeDeadStructural input47 value28 value1 value2 = (output47, value4, value1) := by
  rw [input47_def, output47_def]
  try (conv => lhs; cbv)
  try rfl

theorem node48_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value27 value1 value2 = (output46, value28, value1))
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value28 value1 value2 = (output47, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input48 value27 value1 value2 = (output48, value4, value1) := by
  rw [input48_def, output48_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  dsimp only
  rw [child47]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node49_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value26 value1 value2 = (output45, value27, value1))
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value27 value1 value2 = (output48, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input49 value26 value1 value2 = (output49, value4, value1) := by
  rw [input49_def, output49_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  dsimp only
  rw [child48]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node50_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value25 value1 value2 = (output44, value26, value1))
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value26 value1 value2 = (output49, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input50 value25 value1 value2 = (output50, value4, value1) := by
  rw [input50_def, output50_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  dsimp only
  rw [child49]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node51_cond_eq : Flapjack.WordAlloc.removeDeadStructural input51 value4 value1 value2 = (output51, value29, value1) := by
  rw [input51_def, output51_def]
  try (conv => lhs; cbv)
  try rfl

theorem node52_cond_eq : Flapjack.WordAlloc.removeDeadStructural input52 value29 value1 value2 = (output52, value30, value1) := by
  rw [input52_def, output52_def]
  try (conv => lhs; cbv)
  try rfl

theorem node53_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value4 value1 value2 = (output51, value29, value1))
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value29 value1 value2 = (output52, value30, value1)) : Flapjack.WordAlloc.removeDeadStructural input53 value4 value1 value2 = (output53, value30, value1) := by
  rw [input53_def, output53_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  dsimp only
  rw [child52]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node54_cond_eq : Flapjack.WordAlloc.removeDeadStructural input54 value30 value1 value2 = (output54, value31, value1) := by
  rw [input54_def, output54_def]
  try (conv => lhs; cbv)
  try rfl

theorem node55_cond_eq : Flapjack.WordAlloc.removeDeadStructural input55 value31 value1 value2 = (output55, value31, value1) := by
  rw [input55_def, output55_def]
  try (conv => lhs; cbv)
  try rfl

theorem node56_cond_eq : Flapjack.WordAlloc.removeDeadStructural input56 value31 value1 value2 = (output56, value32, value1) := by
  rw [input56_def, output56_def]
  try (conv => lhs; cbv)
  try rfl

theorem node57_cond_eq : Flapjack.WordAlloc.removeDeadStructural input57 value32 value1 value2 = (output57, value33, value1) := by
  rw [input57_def, output57_def]
  try (conv => lhs; cbv)
  try rfl

theorem node58_cond_eq : Flapjack.WordAlloc.removeDeadStructural input58 value33 value1 value2 = (output58, value34, value1) := by
  rw [input58_def, output58_def]
  try (conv => lhs; cbv)
  try rfl

theorem node59_cond_eq : Flapjack.WordAlloc.removeDeadStructural input59 value34 value1 value2 = (output59, value4, value1) := by
  rw [input59_def, output59_def]
  try (conv => lhs; cbv)
  try rfl

theorem node60_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value33 value1 value2 = (output58, value34, value1))
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value34 value1 value2 = (output59, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input60 value33 value1 value2 = (output60, value4, value1) := by
  rw [input60_def, output60_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  dsimp only
  rw [child59]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node61_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value32 value1 value2 = (output57, value33, value1))
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value33 value1 value2 = (output60, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input61 value32 value1 value2 = (output61, value4, value1) := by
  rw [input61_def, output61_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  dsimp only
  rw [child60]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node62_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value31 value1 value2 = (output56, value32, value1))
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value32 value1 value2 = (output61, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input62 value31 value1 value2 = (output62, value4, value1) := by
  rw [input62_def, output62_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  dsimp only
  rw [child61]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node63_cond_eq : Flapjack.WordAlloc.removeDeadStructural input63 value4 value1 value2 = (output63, value35, value1) := by
  rw [input63_def, output63_def]
  try (conv => lhs; cbv)
  try rfl

theorem node64_cond_eq : Flapjack.WordAlloc.removeDeadStructural input64 value35 value1 value2 = (output64, value36, value1) := by
  rw [input64_def, output64_def]
  try (conv => lhs; cbv)
  try rfl

theorem node65_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value4 value1 value2 = (output63, value35, value1))
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value35 value1 value2 = (output64, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input65 value4 value1 value2 = (output65, value36, value1) := by
  rw [input65_def, output65_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  dsimp only
  rw [child64]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node66_cond_eq : Flapjack.WordAlloc.removeDeadStructural input66 value36 value1 value2 = (output66, value37, value1) := by
  rw [input66_def, output66_def]
  try (conv => lhs; cbv)
  try rfl

theorem node67_cond_eq : Flapjack.WordAlloc.removeDeadStructural input67 value37 value1 value2 = (output67, value37, value1) := by
  rw [input67_def, output67_def]
  try (conv => lhs; cbv)
  try rfl

theorem node68_cond_eq : Flapjack.WordAlloc.removeDeadStructural input68 value37 value1 value2 = (output68, value38, value1) := by
  rw [input68_def, output68_def]
  try (conv => lhs; cbv)
  try rfl

theorem node69_cond_eq : Flapjack.WordAlloc.removeDeadStructural input69 value38 value1 value2 = (output69, value39, value1) := by
  rw [input69_def, output69_def]
  try (conv => lhs; cbv)
  try rfl

theorem node70_cond_eq : Flapjack.WordAlloc.removeDeadStructural input70 value39 value1 value2 = (output70, value40, value1) := by
  rw [input70_def, output70_def]
  try (conv => lhs; cbv)
  try rfl

theorem node71_cond_eq : Flapjack.WordAlloc.removeDeadStructural input71 value40 value1 value2 = (output71, value4, value1) := by
  rw [input71_def, output71_def]
  try (conv => lhs; cbv)
  try rfl

theorem node72_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value39 value1 value2 = (output70, value40, value1))
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value40 value1 value2 = (output71, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input72 value39 value1 value2 = (output72, value4, value1) := by
  rw [input72_def, output72_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  dsimp only
  rw [child71]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node73_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value38 value1 value2 = (output69, value39, value1))
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value39 value1 value2 = (output72, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input73 value38 value1 value2 = (output73, value4, value1) := by
  rw [input73_def, output73_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  dsimp only
  rw [child72]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node74_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value37 value1 value2 = (output68, value38, value1))
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value38 value1 value2 = (output73, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input74 value37 value1 value2 = (output74, value4, value1) := by
  rw [input74_def, output74_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  dsimp only
  rw [child73]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node75_cond_eq : Flapjack.WordAlloc.removeDeadStructural input75 value4 value1 value2 = (output75, value41, value1) := by
  rw [input75_def, output75_def]
  try (conv => lhs; cbv)
  try rfl

theorem node76_cond_eq : Flapjack.WordAlloc.removeDeadStructural input76 value41 value1 value2 = (output76, value42, value1) := by
  rw [input76_def, output76_def]
  try (conv => lhs; cbv)
  try rfl

theorem node77_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value4 value1 value2 = (output75, value41, value1))
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value41 value1 value2 = (output76, value42, value1)) : Flapjack.WordAlloc.removeDeadStructural input77 value4 value1 value2 = (output77, value42, value1) := by
  rw [input77_def, output77_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  dsimp only
  rw [child76]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node78_cond_eq : Flapjack.WordAlloc.removeDeadStructural input78 value42 value1 value2 = (output78, value43, value1) := by
  rw [input78_def, output78_def]
  try (conv => lhs; cbv)
  try rfl

theorem node79_cond_eq : Flapjack.WordAlloc.removeDeadStructural input79 value43 value1 value2 = (output79, value43, value1) := by
  rw [input79_def, output79_def]
  try (conv => lhs; cbv)
  try rfl

theorem node80_cond_eq : Flapjack.WordAlloc.removeDeadStructural input80 value43 value1 value2 = (output80, value44, value1) := by
  rw [input80_def, output80_def]
  try (conv => lhs; cbv)
  try rfl

theorem node81_cond_eq : Flapjack.WordAlloc.removeDeadStructural input81 value44 value1 value2 = (output81, value45, value1) := by
  rw [input81_def, output81_def]
  try (conv => lhs; cbv)
  try rfl

theorem node82_cond_eq : Flapjack.WordAlloc.removeDeadStructural input82 value45 value1 value2 = (output82, value46, value1) := by
  rw [input82_def, output82_def]
  try (conv => lhs; cbv)
  try rfl

theorem node83_cond_eq : Flapjack.WordAlloc.removeDeadStructural input83 value46 value1 value2 = (output83, value4, value1) := by
  rw [input83_def, output83_def]
  try (conv => lhs; cbv)
  try rfl

theorem node84_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value45 value1 value2 = (output82, value46, value1))
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value46 value1 value2 = (output83, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input84 value45 value1 value2 = (output84, value4, value1) := by
  rw [input84_def, output84_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  dsimp only
  rw [child83]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node85_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value44 value1 value2 = (output81, value45, value1))
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value45 value1 value2 = (output84, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input85 value44 value1 value2 = (output85, value4, value1) := by
  rw [input85_def, output85_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  dsimp only
  rw [child84]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node86_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value43 value1 value2 = (output80, value44, value1))
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value44 value1 value2 = (output85, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input86 value43 value1 value2 = (output86, value4, value1) := by
  rw [input86_def, output86_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  dsimp only
  rw [child85]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node87_cond_eq : Flapjack.WordAlloc.removeDeadStructural input87 value4 value1 value2 = (output87, value47, value1) := by
  rw [input87_def, output87_def]
  try (conv => lhs; cbv)
  try rfl

theorem node88_cond_eq : Flapjack.WordAlloc.removeDeadStructural input88 value47 value1 value2 = (output88, value48, value1) := by
  rw [input88_def, output88_def]
  try (conv => lhs; cbv)
  try rfl

theorem node89_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value4 value1 value2 = (output87, value47, value1))
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value47 value1 value2 = (output88, value48, value1)) : Flapjack.WordAlloc.removeDeadStructural input89 value4 value1 value2 = (output89, value48, value1) := by
  rw [input89_def, output89_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  dsimp only
  rw [child88]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node90_cond_eq : Flapjack.WordAlloc.removeDeadStructural input90 value48 value1 value2 = (output90, value49, value1) := by
  rw [input90_def, output90_def]
  try (conv => lhs; cbv)
  try rfl

theorem node91_cond_eq : Flapjack.WordAlloc.removeDeadStructural input91 value49 value1 value2 = (output91, value49, value1) := by
  rw [input91_def, output91_def]
  try (conv => lhs; cbv)
  try rfl

theorem node92_cond_eq : Flapjack.WordAlloc.removeDeadStructural input92 value49 value1 value2 = (output92, value50, value1) := by
  rw [input92_def, output92_def]
  try (conv => lhs; cbv)
  try rfl

theorem node93_cond_eq : Flapjack.WordAlloc.removeDeadStructural input93 value50 value1 value2 = (output93, value51, value1) := by
  rw [input93_def, output93_def]
  try (conv => lhs; cbv)
  try rfl

theorem node94_cond_eq : Flapjack.WordAlloc.removeDeadStructural input94 value51 value1 value2 = (output94, value52, value1) := by
  rw [input94_def, output94_def]
  try (conv => lhs; cbv)
  try rfl

theorem node95_cond_eq : Flapjack.WordAlloc.removeDeadStructural input95 value52 value1 value2 = (output95, value4, value1) := by
  rw [input95_def, output95_def]
  try (conv => lhs; cbv)
  try rfl

theorem node96_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value51 value1 value2 = (output94, value52, value1))
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value52 value1 value2 = (output95, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input96 value51 value1 value2 = (output96, value4, value1) := by
  rw [input96_def, output96_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  dsimp only
  rw [child95]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node97_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value50 value1 value2 = (output93, value51, value1))
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value51 value1 value2 = (output96, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input97 value50 value1 value2 = (output97, value4, value1) := by
  rw [input97_def, output97_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  dsimp only
  rw [child96]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node98_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value49 value1 value2 = (output92, value50, value1))
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value50 value1 value2 = (output97, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input98 value49 value1 value2 = (output98, value4, value1) := by
  rw [input98_def, output98_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  dsimp only
  rw [child97]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node99_cond_eq : Flapjack.WordAlloc.removeDeadStructural input99 value4 value1 value2 = (output99, value53, value1) := by
  rw [input99_def, output99_def]
  try (conv => lhs; cbv)
  try rfl

theorem node100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input100 value53 value1 value2 = (output100, value54, value1) := by
  rw [input100_def, output100_def]
  try (conv => lhs; cbv)
  try rfl

theorem node101_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value4 value1 value2 = (output99, value53, value1))
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value53 value1 value2 = (output100, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input101 value4 value1 value2 = (output101, value54, value1) := by
  rw [input101_def, output101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  dsimp only
  rw [child100]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input102 value54 value1 value2 = (output102, value55, value1) := by
  rw [input102_def, output102_def]
  try (conv => lhs; cbv)
  try rfl

theorem node103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input103 value55 value1 value2 = (output103, value55, value1) := by
  rw [input103_def, output103_def]
  try (conv => lhs; cbv)
  try rfl

theorem node104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input104 value55 value1 value2 = (output104, value56, value1) := by
  rw [input104_def, output104_def]
  try (conv => lhs; cbv)
  try rfl

theorem node105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input105 value56 value1 value2 = (output105, value57, value1) := by
  rw [input105_def, output105_def]
  try (conv => lhs; cbv)
  try rfl

theorem node106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input106 value57 value1 value2 = (output106, value58, value1) := by
  rw [input106_def, output106_def]
  try (conv => lhs; cbv)
  try rfl

theorem node107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input107 value58 value1 value2 = (output107, value4, value1) := by
  rw [input107_def, output107_def]
  try (conv => lhs; cbv)
  try rfl

theorem node108_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value57 value1 value2 = (output106, value58, value1))
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value58 value1 value2 = (output107, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input108 value57 value1 value2 = (output108, value4, value1) := by
  rw [input108_def, output108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  dsimp only
  rw [child107]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node109_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value56 value1 value2 = (output105, value57, value1))
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value57 value1 value2 = (output108, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input109 value56 value1 value2 = (output109, value4, value1) := by
  rw [input109_def, output109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  dsimp only
  rw [child108]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node110_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value55 value1 value2 = (output104, value56, value1))
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value56 value1 value2 = (output109, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input110 value55 value1 value2 = (output110, value4, value1) := by
  rw [input110_def, output110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  dsimp only
  rw [child109]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input111 value4 value1 value2 = (output111, value59, value1) := by
  rw [input111_def, output111_def]
  try (conv => lhs; cbv)
  try rfl

theorem node112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input112 value59 value1 value2 = (output112, value60, value1) := by
  rw [input112_def, output112_def]
  try (conv => lhs; cbv)
  try rfl

theorem node113_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value4 value1 value2 = (output111, value59, value1))
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value59 value1 value2 = (output112, value60, value1)) : Flapjack.WordAlloc.removeDeadStructural input113 value4 value1 value2 = (output113, value60, value1) := by
  rw [input113_def, output113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  dsimp only
  rw [child112]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input114 value60 value1 value2 = (output114, value61, value1) := by
  rw [input114_def, output114_def]
  try (conv => lhs; cbv)
  try rfl

theorem node115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input115 value61 value1 value2 = (output115, value61, value1) := by
  rw [input115_def, output115_def]
  try (conv => lhs; cbv)
  try rfl

theorem node116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input116 value61 value1 value2 = (output116, value62, value1) := by
  rw [input116_def, output116_def]
  try (conv => lhs; cbv)
  try rfl

theorem node117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input117 value62 value1 value2 = (output117, value63, value1) := by
  rw [input117_def, output117_def]
  try (conv => lhs; cbv)
  try rfl

theorem node118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input118 value63 value1 value2 = (output118, value64, value1) := by
  rw [input118_def, output118_def]
  try (conv => lhs; cbv)
  try rfl

theorem node119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input119 value64 value1 value2 = (output119, value4, value1) := by
  rw [input119_def, output119_def]
  try (conv => lhs; cbv)
  try rfl

theorem node120_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value63 value1 value2 = (output118, value64, value1))
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value64 value1 value2 = (output119, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input120 value63 value1 value2 = (output120, value4, value1) := by
  rw [input120_def, output120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  dsimp only
  rw [child119]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node121_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value62 value1 value2 = (output117, value63, value1))
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value63 value1 value2 = (output120, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input121 value62 value1 value2 = (output121, value4, value1) := by
  rw [input121_def, output121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  dsimp only
  rw [child120]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node122_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value61 value1 value2 = (output116, value62, value1))
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value62 value1 value2 = (output121, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input122 value61 value1 value2 = (output122, value4, value1) := by
  rw [input122_def, output122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  dsimp only
  rw [child121]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input123 value4 value1 value2 = (output123, value65, value1) := by
  rw [input123_def, output123_def]
  try (conv => lhs; cbv)
  try rfl

theorem node124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input124 value65 value1 value2 = (output124, value66, value1) := by
  rw [input124_def, output124_def]
  try (conv => lhs; cbv)
  try rfl

theorem node125_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value4 value1 value2 = (output123, value65, value1))
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value65 value1 value2 = (output124, value66, value1)) : Flapjack.WordAlloc.removeDeadStructural input125 value4 value1 value2 = (output125, value66, value1) := by
  rw [input125_def, output125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  dsimp only
  rw [child124]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input126 value66 value1 value2 = (output126, value67, value1) := by
  rw [input126_def, output126_def]
  try (conv => lhs; cbv)
  try rfl

theorem node127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input127 value67 value1 value2 = (output127, value67, value1) := by
  rw [input127_def, output127_def]
  try (conv => lhs; cbv)
  try rfl

theorem node128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input128 value67 value1 value2 = (output128, value68, value1) := by
  rw [input128_def, output128_def]
  try (conv => lhs; cbv)
  try rfl

theorem node129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input129 value68 value1 value2 = (output129, value69, value1) := by
  rw [input129_def, output129_def]
  try (conv => lhs; cbv)
  try rfl

theorem node130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input130 value69 value1 value2 = (output130, value70, value1) := by
  rw [input130_def, output130_def]
  try (conv => lhs; cbv)
  try rfl

theorem node131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input131 value70 value1 value2 = (output131, value4, value1) := by
  rw [input131_def, output131_def]
  try (conv => lhs; cbv)
  try rfl

theorem node132_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value69 value1 value2 = (output130, value70, value1))
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value70 value1 value2 = (output131, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input132 value69 value1 value2 = (output132, value4, value1) := by
  rw [input132_def, output132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  dsimp only
  rw [child131]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node133_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value68 value1 value2 = (output129, value69, value1))
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value69 value1 value2 = (output132, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input133 value68 value1 value2 = (output133, value4, value1) := by
  rw [input133_def, output133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  dsimp only
  rw [child132]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node134_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value67 value1 value2 = (output128, value68, value1))
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value68 value1 value2 = (output133, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input134 value67 value1 value2 = (output134, value4, value1) := by
  rw [input134_def, output134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  dsimp only
  rw [child133]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input135 value4 value1 value2 = (output135, value71, value1) := by
  rw [input135_def, output135_def]
  try (conv => lhs; cbv)
  try rfl

theorem node136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input136 value71 value1 value2 = (output136, value72, value1) := by
  rw [input136_def, output136_def]
  try (conv => lhs; cbv)
  try rfl

theorem node137_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value4 value1 value2 = (output135, value71, value1))
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value71 value1 value2 = (output136, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input137 value4 value1 value2 = (output137, value72, value1) := by
  rw [input137_def, output137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  dsimp only
  rw [child136]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input138 value72 value1 value2 = (output138, value73, value1) := by
  rw [input138_def, output138_def]
  try (conv => lhs; cbv)
  try rfl

theorem node139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input139 value73 value1 value2 = (output139, value73, value1) := by
  rw [input139_def, output139_def]
  try (conv => lhs; cbv)
  try rfl

theorem node140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input140 value73 value1 value2 = (output140, value74, value1) := by
  rw [input140_def, output140_def]
  try (conv => lhs; cbv)
  try rfl

theorem node141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input141 value74 value1 value2 = (output141, value75, value1) := by
  rw [input141_def, output141_def]
  try (conv => lhs; cbv)
  try rfl

theorem node142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input142 value75 value1 value2 = (output142, value76, value1) := by
  rw [input142_def, output142_def]
  try (conv => lhs; cbv)
  try rfl

theorem node143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input143 value76 value1 value2 = (output143, value4, value1) := by
  rw [input143_def, output143_def]
  try (conv => lhs; cbv)
  try rfl

theorem node144_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value75 value1 value2 = (output142, value76, value1))
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value76 value1 value2 = (output143, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input144 value75 value1 value2 = (output144, value4, value1) := by
  rw [input144_def, output144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  dsimp only
  rw [child143]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node145_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value74 value1 value2 = (output141, value75, value1))
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value75 value1 value2 = (output144, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input145 value74 value1 value2 = (output145, value4, value1) := by
  rw [input145_def, output145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  dsimp only
  rw [child144]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node146_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value73 value1 value2 = (output140, value74, value1))
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value74 value1 value2 = (output145, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input146 value73 value1 value2 = (output146, value4, value1) := by
  rw [input146_def, output146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  dsimp only
  rw [child145]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input147 value4 value1 value2 = (output147, value77, value1) := by
  rw [input147_def, output147_def]
  try (conv => lhs; cbv)
  try rfl

theorem node148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input148 value77 value1 value2 = (output148, value78, value1) := by
  rw [input148_def, output148_def]
  try (conv => lhs; cbv)
  try rfl

theorem node149_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value4 value1 value2 = (output147, value77, value1))
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value77 value1 value2 = (output148, value78, value1)) : Flapjack.WordAlloc.removeDeadStructural input149 value4 value1 value2 = (output149, value78, value1) := by
  rw [input149_def, output149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  dsimp only
  rw [child148]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input150 value78 value1 value2 = (output150, value79, value1) := by
  rw [input150_def, output150_def]
  try (conv => lhs; cbv)
  try rfl

theorem node151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input151 value79 value1 value2 = (output151, value79, value1) := by
  rw [input151_def, output151_def]
  try (conv => lhs; cbv)
  try rfl

theorem node152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input152 value79 value1 value2 = (output152, value80, value1) := by
  rw [input152_def, output152_def]
  try (conv => lhs; cbv)
  try rfl

theorem node153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input153 value80 value1 value2 = (output153, value81, value1) := by
  rw [input153_def, output153_def]
  try (conv => lhs; cbv)
  try rfl

theorem node154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input154 value81 value1 value2 = (output154, value82, value1) := by
  rw [input154_def, output154_def]
  try (conv => lhs; cbv)
  try rfl

theorem node155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input155 value82 value1 value2 = (output155, value4, value1) := by
  rw [input155_def, output155_def]
  try (conv => lhs; cbv)
  try rfl

theorem node156_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value81 value1 value2 = (output154, value82, value1))
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value82 value1 value2 = (output155, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input156 value81 value1 value2 = (output156, value4, value1) := by
  rw [input156_def, output156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  dsimp only
  rw [child155]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node157_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value80 value1 value2 = (output153, value81, value1))
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value81 value1 value2 = (output156, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input157 value80 value1 value2 = (output157, value4, value1) := by
  rw [input157_def, output157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  dsimp only
  rw [child156]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node158_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value79 value1 value2 = (output152, value80, value1))
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value80 value1 value2 = (output157, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input158 value79 value1 value2 = (output158, value4, value1) := by
  rw [input158_def, output158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  dsimp only
  rw [child157]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input159 value4 value1 value2 = (output159, value83, value1) := by
  rw [input159_def, output159_def]
  try (conv => lhs; cbv)
  try rfl

theorem node160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input160 value83 value1 value2 = (output160, value84, value1) := by
  rw [input160_def, output160_def]
  try (conv => lhs; cbv)
  try rfl

theorem node161_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value4 value1 value2 = (output159, value83, value1))
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value83 value1 value2 = (output160, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input161 value4 value1 value2 = (output161, value84, value1) := by
  rw [input161_def, output161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  dsimp only
  rw [child160]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input162 value84 value1 value2 = (output162, value85, value1) := by
  rw [input162_def, output162_def]
  try (conv => lhs; cbv)
  try rfl

theorem node163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input163 value85 value1 value2 = (output163, value85, value1) := by
  rw [input163_def, output163_def]
  try (conv => lhs; cbv)
  try rfl

theorem node164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input164 value85 value1 value2 = (output164, value86, value1) := by
  rw [input164_def, output164_def]
  try (conv => lhs; cbv)
  try rfl

theorem node165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input165 value86 value1 value2 = (output165, value87, value1) := by
  rw [input165_def, output165_def]
  try (conv => lhs; cbv)
  try rfl

theorem node166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input166 value87 value1 value2 = (output166, value88, value1) := by
  rw [input166_def, output166_def]
  try (conv => lhs; cbv)
  try rfl

theorem node167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input167 value88 value1 value2 = (output167, value4, value1) := by
  rw [input167_def, output167_def]
  try (conv => lhs; cbv)
  try rfl

theorem node168_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value87 value1 value2 = (output166, value88, value1))
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value88 value1 value2 = (output167, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input168 value87 value1 value2 = (output168, value4, value1) := by
  rw [input168_def, output168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  dsimp only
  rw [child167]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node169_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value86 value1 value2 = (output165, value87, value1))
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value87 value1 value2 = (output168, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input169 value86 value1 value2 = (output169, value4, value1) := by
  rw [input169_def, output169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  dsimp only
  rw [child168]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node170_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value85 value1 value2 = (output164, value86, value1))
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value86 value1 value2 = (output169, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input170 value85 value1 value2 = (output170, value4, value1) := by
  rw [input170_def, output170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  dsimp only
  rw [child169]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input171 value4 value1 value2 = (output171, value89, value1) := by
  rw [input171_def, output171_def]
  try (conv => lhs; cbv)
  try rfl

theorem node172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input172 value89 value1 value2 = (output172, value90, value1) := by
  rw [input172_def, output172_def]
  try (conv => lhs; cbv)
  try rfl

theorem node173_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value4 value1 value2 = (output171, value89, value1))
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value89 value1 value2 = (output172, value90, value1)) : Flapjack.WordAlloc.removeDeadStructural input173 value4 value1 value2 = (output173, value90, value1) := by
  rw [input173_def, output173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  dsimp only
  rw [child172]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input174 value90 value1 value2 = (output174, value91, value1) := by
  rw [input174_def, output174_def]
  try (conv => lhs; cbv)
  try rfl

theorem node175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input175 value91 value1 value2 = (output175, value91, value1) := by
  rw [input175_def, output175_def]
  try (conv => lhs; cbv)
  try rfl

theorem node176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input176 value91 value1 value2 = (output176, value92, value1) := by
  rw [input176_def, output176_def]
  try (conv => lhs; cbv)
  try rfl

theorem node177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input177 value92 value1 value2 = (output177, value93, value1) := by
  rw [input177_def, output177_def]
  try (conv => lhs; cbv)
  try rfl

theorem node178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input178 value93 value1 value2 = (output178, value94, value1) := by
  rw [input178_def, output178_def]
  try (conv => lhs; cbv)
  try rfl

theorem node179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input179 value94 value1 value2 = (output179, value4, value1) := by
  rw [input179_def, output179_def]
  try (conv => lhs; cbv)
  try rfl

theorem node180_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value93 value1 value2 = (output178, value94, value1))
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value94 value1 value2 = (output179, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input180 value93 value1 value2 = (output180, value4, value1) := by
  rw [input180_def, output180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  dsimp only
  rw [child179]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node181_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value92 value1 value2 = (output177, value93, value1))
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value93 value1 value2 = (output180, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input181 value92 value1 value2 = (output181, value4, value1) := by
  rw [input181_def, output181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  dsimp only
  rw [child180]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node182_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value91 value1 value2 = (output176, value92, value1))
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value92 value1 value2 = (output181, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input182 value91 value1 value2 = (output182, value4, value1) := by
  rw [input182_def, output182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  dsimp only
  rw [child181]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input183 value4 value1 value2 = (output183, value95, value1) := by
  rw [input183_def, output183_def]
  try (conv => lhs; cbv)
  try rfl

theorem node184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input184 value95 value1 value2 = (output184, value96, value1) := by
  rw [input184_def, output184_def]
  try (conv => lhs; cbv)
  try rfl

theorem node185_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value4 value1 value2 = (output183, value95, value1))
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value95 value1 value2 = (output184, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input185 value4 value1 value2 = (output185, value96, value1) := by
  rw [input185_def, output185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  dsimp only
  rw [child184]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input186 value96 value1 value2 = (output186, value97, value1) := by
  rw [input186_def, output186_def]
  try (conv => lhs; cbv)
  try rfl

theorem node187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input187 value97 value1 value2 = (output187, value97, value1) := by
  rw [input187_def, output187_def]
  try (conv => lhs; cbv)
  try rfl

theorem node188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input188 value97 value1 value2 = (output188, value98, value1) := by
  rw [input188_def, output188_def]
  try (conv => lhs; cbv)
  try rfl

theorem node189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input189 value98 value1 value2 = (output189, value99, value1) := by
  rw [input189_def, output189_def]
  try (conv => lhs; cbv)
  try rfl

theorem node190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input190 value99 value1 value2 = (output190, value100, value1) := by
  rw [input190_def, output190_def]
  try (conv => lhs; cbv)
  try rfl

theorem node191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input191 value100 value1 value2 = (output191, value4, value1) := by
  rw [input191_def, output191_def]
  try (conv => lhs; cbv)
  try rfl

theorem node192_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value99 value1 value2 = (output190, value100, value1))
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value100 value1 value2 = (output191, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input192 value99 value1 value2 = (output192, value4, value1) := by
  rw [input192_def, output192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  dsimp only
  rw [child191]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node193_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value98 value1 value2 = (output189, value99, value1))
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value99 value1 value2 = (output192, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input193 value98 value1 value2 = (output193, value4, value1) := by
  rw [input193_def, output193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  dsimp only
  rw [child192]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node194_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value97 value1 value2 = (output188, value98, value1))
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value98 value1 value2 = (output193, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input194 value97 value1 value2 = (output194, value4, value1) := by
  rw [input194_def, output194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  dsimp only
  rw [child193]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input195 value4 value1 value2 = (output195, value101, value1) := by
  rw [input195_def, output195_def]
  try (conv => lhs; cbv)
  try rfl

theorem node196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input196 value101 value1 value2 = (output196, value102, value1) := by
  rw [input196_def, output196_def]
  try (conv => lhs; cbv)
  try rfl

theorem node197_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value4 value1 value2 = (output195, value101, value1))
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value101 value1 value2 = (output196, value102, value1)) : Flapjack.WordAlloc.removeDeadStructural input197 value4 value1 value2 = (output197, value102, value1) := by
  rw [input197_def, output197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  dsimp only
  rw [child196]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input198 value102 value1 value2 = (output198, value103, value1) := by
  rw [input198_def, output198_def]
  try (conv => lhs; cbv)
  try rfl

theorem node199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input199 value103 value1 value2 = (output199, value103, value1) := by
  rw [input199_def, output199_def]
  try (conv => lhs; cbv)
  try rfl

theorem node200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input200 value103 value1 value2 = (output200, value104, value1) := by
  rw [input200_def, output200_def]
  try (conv => lhs; cbv)
  try rfl

theorem node201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input201 value104 value1 value2 = (output201, value105, value1) := by
  rw [input201_def, output201_def]
  try (conv => lhs; cbv)
  try rfl

theorem node202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input202 value105 value1 value2 = (output202, value106, value1) := by
  rw [input202_def, output202_def]
  try (conv => lhs; cbv)
  try rfl

theorem node203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input203 value106 value1 value2 = (output203, value4, value1) := by
  rw [input203_def, output203_def]
  try (conv => lhs; cbv)
  try rfl

theorem node204_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value105 value1 value2 = (output202, value106, value1))
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value106 value1 value2 = (output203, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input204 value105 value1 value2 = (output204, value4, value1) := by
  rw [input204_def, output204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  dsimp only
  rw [child203]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node205_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value104 value1 value2 = (output201, value105, value1))
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value105 value1 value2 = (output204, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input205 value104 value1 value2 = (output205, value4, value1) := by
  rw [input205_def, output205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  dsimp only
  rw [child204]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node206_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value103 value1 value2 = (output200, value104, value1))
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value104 value1 value2 = (output205, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input206 value103 value1 value2 = (output206, value4, value1) := by
  rw [input206_def, output206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  dsimp only
  rw [child205]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input207 value4 value1 value2 = (output207, value107, value1) := by
  rw [input207_def, output207_def]
  try (conv => lhs; cbv)
  try rfl

theorem node208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input208 value107 value1 value2 = (output208, value108, value1) := by
  rw [input208_def, output208_def]
  try (conv => lhs; cbv)
  try rfl

theorem node209_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value4 value1 value2 = (output207, value107, value1))
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value107 value1 value2 = (output208, value108, value1)) : Flapjack.WordAlloc.removeDeadStructural input209 value4 value1 value2 = (output209, value108, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  dsimp only
  rw [child208]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input210 value108 value1 value2 = (output210, value109, value1) := by
  rw [input210_def, output210_def]
  try (conv => lhs; cbv)
  try rfl

theorem node211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input211 value109 value1 value2 = (output211, value109, value1) := by
  rw [input211_def, output211_def]
  try (conv => lhs; cbv)
  try rfl

theorem node212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input212 value109 value1 value2 = (output212, value110, value1) := by
  rw [input212_def, output212_def]
  try (conv => lhs; cbv)
  try rfl

theorem node213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input213 value110 value1 value2 = (output213, value111, value1) := by
  rw [input213_def, output213_def]
  try (conv => lhs; cbv)
  try rfl

theorem node214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input214 value111 value1 value2 = (output214, value112, value1) := by
  rw [input214_def, output214_def]
  try (conv => lhs; cbv)
  try rfl

theorem node215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input215 value112 value1 value2 = (output215, value4, value1) := by
  rw [input215_def, output215_def]
  try (conv => lhs; cbv)
  try rfl

theorem node216_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value111 value1 value2 = (output214, value112, value1))
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value112 value1 value2 = (output215, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input216 value111 value1 value2 = (output216, value4, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  dsimp only
  rw [child215]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node217_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value110 value1 value2 = (output213, value111, value1))
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value111 value1 value2 = (output216, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input217 value110 value1 value2 = (output217, value4, value1) := by
  rw [input217_def, output217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  dsimp only
  rw [child216]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node218_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value109 value1 value2 = (output212, value110, value1))
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value110 value1 value2 = (output217, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input218 value109 value1 value2 = (output218, value4, value1) := by
  rw [input218_def, output218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  dsimp only
  rw [child217]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input219 value4 value1 value2 = (output219, value113, value1) := by
  rw [input219_def, output219_def]
  try (conv => lhs; cbv)
  try rfl

theorem node220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input220 value113 value1 value2 = (output220, value114, value1) := by
  rw [input220_def, output220_def]
  try (conv => lhs; cbv)
  try rfl

theorem node221_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value4 value1 value2 = (output219, value113, value1))
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value113 value1 value2 = (output220, value114, value1)) : Flapjack.WordAlloc.removeDeadStructural input221 value4 value1 value2 = (output221, value114, value1) := by
  rw [input221_def, output221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  dsimp only
  rw [child220]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input222 value114 value1 value2 = (output222, value115, value1) := by
  rw [input222_def, output222_def]
  try (conv => lhs; cbv)
  try rfl

theorem node223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input223 value115 value1 value2 = (output223, value115, value1) := by
  rw [input223_def, output223_def]
  try (conv => lhs; cbv)
  try rfl

theorem node224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input224 value115 value1 value2 = (output224, value116, value1) := by
  rw [input224_def, output224_def]
  try (conv => lhs; cbv)
  try rfl

theorem node225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input225 value116 value1 value2 = (output225, value117, value1) := by
  rw [input225_def, output225_def]
  try (conv => lhs; cbv)
  try rfl

theorem node226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input226 value117 value1 value2 = (output226, value118, value1) := by
  rw [input226_def, output226_def]
  try (conv => lhs; cbv)
  try rfl

theorem node227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input227 value118 value1 value2 = (output227, value4, value1) := by
  rw [input227_def, output227_def]
  try (conv => lhs; cbv)
  try rfl

theorem node228_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value117 value1 value2 = (output226, value118, value1))
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value118 value1 value2 = (output227, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input228 value117 value1 value2 = (output228, value4, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  dsimp only
  rw [child227]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node229_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value116 value1 value2 = (output225, value117, value1))
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value117 value1 value2 = (output228, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input229 value116 value1 value2 = (output229, value4, value1) := by
  rw [input229_def, output229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  dsimp only
  rw [child228]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node230_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value115 value1 value2 = (output224, value116, value1))
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value116 value1 value2 = (output229, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input230 value115 value1 value2 = (output230, value4, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  dsimp only
  rw [child229]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input231 value4 value1 value2 = (output231, value119, value1) := by
  rw [input231_def, output231_def]
  try (conv => lhs; cbv)
  try rfl

theorem node232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input232 value119 value1 value2 = (output232, value120, value1) := by
  rw [input232_def, output232_def]
  try (conv => lhs; cbv)
  try rfl

theorem node233_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value4 value1 value2 = (output231, value119, value1))
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value119 value1 value2 = (output232, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input233 value4 value1 value2 = (output233, value120, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  dsimp only
  rw [child232]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input234 value120 value1 value2 = (output234, value121, value1) := by
  rw [input234_def, output234_def]
  try (conv => lhs; cbv)
  try rfl

theorem node235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input235 value121 value1 value2 = (output235, value121, value1) := by
  rw [input235_def, output235_def]
  try (conv => lhs; cbv)
  try rfl

theorem node236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input236 value121 value1 value2 = (output236, value122, value1) := by
  rw [input236_def, output236_def]
  try (conv => lhs; cbv)
  try rfl

theorem node237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input237 value122 value1 value2 = (output237, value123, value1) := by
  rw [input237_def, output237_def]
  try (conv => lhs; cbv)
  try rfl

theorem node238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input238 value123 value1 value2 = (output238, value124, value1) := by
  rw [input238_def, output238_def]
  try (conv => lhs; cbv)
  try rfl

theorem node239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input239 value124 value1 value2 = (output239, value4, value1) := by
  rw [input239_def, output239_def]
  try (conv => lhs; cbv)
  try rfl

theorem node240_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value123 value1 value2 = (output238, value124, value1))
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value124 value1 value2 = (output239, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input240 value123 value1 value2 = (output240, value4, value1) := by
  rw [input240_def, output240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  dsimp only
  rw [child239]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node241_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value122 value1 value2 = (output237, value123, value1))
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value123 value1 value2 = (output240, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input241 value122 value1 value2 = (output241, value4, value1) := by
  rw [input241_def, output241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  dsimp only
  rw [child240]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node242_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value121 value1 value2 = (output236, value122, value1))
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value122 value1 value2 = (output241, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input242 value121 value1 value2 = (output242, value4, value1) := by
  rw [input242_def, output242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  dsimp only
  rw [child241]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input243 value4 value1 value2 = (output243, value125, value1) := by
  rw [input243_def, output243_def]
  try (conv => lhs; cbv)
  try rfl

theorem node244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input244 value125 value1 value2 = (output244, value126, value1) := by
  rw [input244_def, output244_def]
  try (conv => lhs; cbv)
  try rfl

theorem node245_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value4 value1 value2 = (output243, value125, value1))
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value125 value1 value2 = (output244, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input245 value4 value1 value2 = (output245, value126, value1) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  dsimp only
  rw [child244]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input246 value126 value1 value2 = (output246, value127, value1) := by
  rw [input246_def, output246_def]
  try (conv => lhs; cbv)
  try rfl

theorem node247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input247 value127 value1 value2 = (output247, value127, value1) := by
  rw [input247_def, output247_def]
  try (conv => lhs; cbv)
  try rfl

theorem node248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input248 value127 value1 value2 = (output248, value128, value1) := by
  rw [input248_def, output248_def]
  try (conv => lhs; cbv)
  try rfl

theorem node249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input249 value128 value1 value2 = (output249, value129, value1) := by
  rw [input249_def, output249_def]
  try (conv => lhs; cbv)
  try rfl

theorem node250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input250 value129 value1 value2 = (output250, value130, value1) := by
  rw [input250_def, output250_def]
  try (conv => lhs; cbv)
  try rfl

theorem node251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input251 value130 value1 value2 = (output251, value4, value1) := by
  rw [input251_def, output251_def]
  try (conv => lhs; cbv)
  try rfl

theorem node252_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value129 value1 value2 = (output250, value130, value1))
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value130 value1 value2 = (output251, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input252 value129 value1 value2 = (output252, value4, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  dsimp only
  rw [child251]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node253_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value128 value1 value2 = (output249, value129, value1))
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value129 value1 value2 = (output252, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input253 value128 value1 value2 = (output253, value4, value1) := by
  rw [input253_def, output253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  dsimp only
  rw [child252]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node254_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value127 value1 value2 = (output248, value128, value1))
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value128 value1 value2 = (output253, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input254 value127 value1 value2 = (output254, value4, value1) := by
  rw [input254_def, output254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  dsimp only
  rw [child253]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input255 value4 value1 value2 = (output255, value131, value1) := by
  rw [input255_def, output255_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node255_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
