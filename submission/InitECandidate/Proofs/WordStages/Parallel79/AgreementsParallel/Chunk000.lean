import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages79.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1619 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages79.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_988 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1691 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1020 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages79.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1692 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages79.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1021 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages79.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1689 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages79.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1018 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages79.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages79.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages79.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1683 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages79.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1012 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages79.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input6_def]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages79.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output6_def]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages79.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1658 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages79.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1656 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages79.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1654 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages79.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1652 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input10_def]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages79.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1650 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages79.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages79.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1651 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input13_def]
  simp only [input12_eq, input11_eq]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages79.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1653 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input14_def]
  simp only [input13_eq, input10_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages79.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1655 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input15_def]
  simp only [input14_eq, input9_eq]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages79.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1657 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input16_def]
  simp only [input15_eq, input8_eq]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages79.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1659 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input17_def]
  simp only [input16_eq, input7_eq]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages79.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1649 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input18_def]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages79.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1004 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output18_def]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages79.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1660 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input19_def]
  simp only [input18_eq, input17_eq]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages79.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1004 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output19_def]
  simp only [output18_eq]

theorem input20_eq : InitECandidate.Proofs.DeadStages79.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_984 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages79.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages79.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1646 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages79.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1001 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages79.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1647 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input22_def]
  simp only [input21_eq, input20_eq]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages79.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1002 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output22_def]
  simp only [output21_eq, output20_eq]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages79.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1644 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages79.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_999 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages79.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1641 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages79.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_996 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages79.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1640 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages79.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_995 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages79.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1642 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input26_def]
  simp only [input25_eq, input24_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages79.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_997 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output26_def]
  simp only [output25_eq, output24_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages79.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages79.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages79.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1635 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages79.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input29_def]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages79.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages79.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1633 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages79.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1634 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input31_def]
  simp only [input30_eq, input29_eq]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages79.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output31_def]
  simp only [output29_eq]

theorem input32_eq : InitECandidate.Proofs.DeadStages79.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1636 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input32_def]
  simp only [input31_eq, input28_eq]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages79.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output32_def]
  simp only [output31_eq]

theorem input33_eq : InitECandidate.Proofs.DeadStages79.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1623 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages79.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages79.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1624 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input35_def]
  simp only [input34_eq, input33_eq]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages79.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1622 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input36_def]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages79.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1625 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input37_def]
  simp only [input36_eq, input35_eq]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages79.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1619 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input38_def]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages79.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_988 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output38_def]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages79.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1618 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input39_def]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages79.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_987 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output39_def]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages79.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1620 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input40_def]
  simp only [input39_eq, input38_eq]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages79.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_989 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output40_def]
  simp only [output39_eq, output38_eq]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages79.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1616 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages79.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_985 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages79.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1614 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages79.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input43_def]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages79.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output43_def]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages79.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1612 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages79.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1613 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input45_def]
  simp only [input44_eq, input43_eq]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages79.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output45_def]
  simp only [output43_eq]

theorem input46_eq : InitECandidate.Proofs.DeadStages79.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1615 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input46_def]
  simp only [input45_eq, input42_eq]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages79.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output46_def]
  simp only [output45_eq]

theorem input47_eq : InitECandidate.Proofs.DeadStages79.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1617 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input47_def]
  simp only [input46_eq, input41_eq]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages79.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_986 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output47_def]
  simp only [output46_eq, output41_eq]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages79.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1621 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input48_def]
  simp only [input47_eq, input40_eq]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages79.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_990 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output48_def]
  simp only [output47_eq, output40_eq]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages79.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1626 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input49_def]
  simp only [input48_eq, input37_eq]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages79.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_990 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output49_def]
  simp only [output48_eq]

theorem input50_eq : InitECandidate.Proofs.DeadStages79.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1628 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages79.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages79.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input51_def]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages79.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1629 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input52_def]
  simp only [input51_eq, input50_eq]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages79.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output52_def]
  simp only [output50_eq]

theorem input53_eq : InitECandidate.Proofs.DeadStages79.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1627 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages79.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1630 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input54_def]
  simp only [input53_eq, input52_eq]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages79.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output54_def]
  simp only [output52_eq]

theorem input55_eq : InitECandidate.Proofs.DeadStages79.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input55_def]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages79.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1631 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input56_def]
  simp only [input55_eq, input54_eq]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages79.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output56_def]
  simp only [output54_eq]

theorem input57_eq : InitECandidate.Proofs.DeadStages79.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1632 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input57_def]
  simp only [input49_eq, input56_eq]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages79.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_991 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output57_def]
  simp only [output49_eq, output56_eq]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages79.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1637 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input58_def]
  simp only [input57_eq, input32_eq]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages79.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_992 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output58_def]
  simp only [output57_eq, output32_eq]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages79.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1610 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input59_def]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages79.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_983 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output59_def]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages79.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1608 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages79.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_981 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages79.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1606 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages79.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_979 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages79.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1602 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input62_def]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages79.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_975 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output62_def]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages79.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1601 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages79.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_974 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages79.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1603 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input64_def]
  simp only [input63_eq, input62_eq]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages79.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_976 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output64_def]
  simp only [output63_eq, output62_eq]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages79.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1600 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages79.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_973 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages79.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1604 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input66_def]
  simp only [input65_eq, input64_eq]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages79.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_977 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output66_def]
  simp only [output65_eq, output64_eq]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages79.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1598 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages79.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_971 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages79.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1594 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages79.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_967 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages79.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1593 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input69_def]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages79.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_966 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output69_def]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages79.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1595 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input70_def]
  simp only [input69_eq, input68_eq]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages79.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_968 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output70_def]
  simp only [output69_eq, output68_eq]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages79.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1592 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages79.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_965 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages79.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1596 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input72_def]
  simp only [input71_eq, input70_eq]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages79.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_969 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output72_def]
  simp only [output71_eq, output70_eq]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages79.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1590 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages79.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages79.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages79.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages79.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1589 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages79.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output76_def]
  simp only [output74_eq]

theorem input77_eq : InitECandidate.Proofs.DeadStages79.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1591 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input77_def]
  simp only [input76_eq, input73_eq]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages79.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output77_def]
  simp only [output76_eq]

theorem input78_eq : InitECandidate.Proofs.DeadStages79.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1597 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input78_def]
  simp only [input77_eq, input72_eq]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages79.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_970 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output78_def]
  simp only [output77_eq, output72_eq]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages79.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1599 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input79_def]
  simp only [input78_eq, input67_eq]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages79.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_972 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output79_def]
  simp only [output78_eq, output67_eq]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages79.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1605 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input80_def]
  simp only [input79_eq, input66_eq]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages79.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_978 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output80_def]
  simp only [output79_eq, output66_eq]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages79.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1607 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input81_def]
  simp only [input80_eq, input61_eq]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages79.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_980 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output81_def]
  simp only [output80_eq, output61_eq]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages79.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1609 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input82_def]
  simp only [input81_eq, input60_eq]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages79.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_982 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output82_def]
  simp only [output81_eq, output60_eq]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages79.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1611 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input83_def]
  simp only [input82_eq, input59_eq]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages79.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_984 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output83_def]
  simp only [output82_eq, output59_eq]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages79.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1638 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input84_def]
  simp only [input83_eq, input58_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages79.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_993 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output84_def]
  simp only [output83_eq, output58_eq]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages79.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1639 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input85_def]
  simp only [input84_eq, input27_eq]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages79.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_994 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output85_def]
  simp only [output84_eq, output27_eq]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages79.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1643 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input86_def]
  simp only [input85_eq, input26_eq]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages79.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_998 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output86_def]
  simp only [output85_eq, output26_eq]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages79.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1645 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input87_def]
  simp only [input86_eq, input23_eq]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages79.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1000 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output87_def]
  simp only [output86_eq, output23_eq]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages79.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1648 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input88_def]
  simp only [input87_eq, input22_eq]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages79.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1003 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output88_def]
  simp only [output87_eq, output22_eq]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages79.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1661 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input89_def]
  simp only [input88_eq, input19_eq]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages79.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1005 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output89_def]
  simp only [output88_eq, output19_eq]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages79.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1676 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages79.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1674 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages79.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1672 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input92_def]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages79.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1670 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages79.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1668 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages79.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages79.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1669 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input96_def]
  simp only [input95_eq, input94_eq]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages79.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1671 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input97_def]
  simp only [input96_eq, input93_eq]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages79.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1673 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input98_def]
  simp only [input97_eq, input92_eq]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages79.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1675 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input99_def]
  simp only [input98_eq, input91_eq]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages79.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1677 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input100_def]
  simp only [input99_eq, input90_eq]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages79.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1667 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages79.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1007 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages79.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1678 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input102_def]
  simp only [input101_eq, input100_eq]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages79.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1007 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output102_def]
  simp only [output101_eq]

theorem input103_eq : InitECandidate.Proofs.DeadStages79.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_999 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages79.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages79.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1664 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input104_def]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages79.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages79.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages79.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1662 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input106_def]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages79.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1663 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input107_def]
  simp only [input106_eq, input105_eq]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages79.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output107_def]
  simp only [output105_eq]

theorem input108_eq : InitECandidate.Proofs.DeadStages79.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1665 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input108_def]
  simp only [input107_eq, input104_eq]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages79.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output108_def]
  simp only [output107_eq]

theorem input109_eq : InitECandidate.Proofs.DeadStages79.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1666 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input109_def]
  simp only [input108_eq, input103_eq]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages79.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output109_def]
  simp only [output108_eq, output103_eq]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages79.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1679 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input110_def]
  simp only [input109_eq, input102_eq]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages79.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1008 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output110_def]
  simp only [output109_eq, output102_eq]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages79.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1680 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input111_def]
  simp only [input89_eq, input110_eq]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages79.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output111_def]
  simp only [output89_eq, output110_eq]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages79.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1586 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input112_def]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages79.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_963 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages79.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1585 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages79.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_962 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages79.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1587 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input114_def]
  simp only [input113_eq, input112_eq]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages79.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_964 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output114_def]
  simp only [output113_eq, output112_eq]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages79.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1681 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input115_def]
  simp only [input114_eq, input111_eq]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages79.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1010 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output115_def]
  simp only [output114_eq, output111_eq]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages79.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1682 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input116_def]
  simp only [input115_eq, input6_eq]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages79.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1011 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output116_def]
  simp only [output115_eq, output6_eq]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages79.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1684 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input117_def]
  simp only [input116_eq, input5_eq]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages79.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1013 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output117_def]
  simp only [output116_eq, output5_eq]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages79.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1685 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input118_def]
  simp only [input117_eq]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages79.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1014 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output118_def]
  simp only [output117_eq]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages79.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1583 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages79.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_961 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages79.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages79.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1584 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input121_def]
  simp only [input120_eq, input119_eq]
  kernel_rfl

theorem output121_eq : InitECandidate.Proofs.DeadStages79.Parallel.output121 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_961 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output121_def]
  simp only [output119_eq]

theorem input122_eq : InitECandidate.Proofs.DeadStages79.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1686 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input122_def]
  simp only [input121_eq, input118_eq]
  kernel_rfl

theorem output122_eq : InitECandidate.Proofs.DeadStages79.Parallel.output122 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_1015 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output122_def]
  simp only [output121_eq, output118_eq]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages79.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input123_def]
  kernel_rfl

theorem output123_eq : InitECandidate.Proofs.DeadStages79.Parallel.output123 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages79.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input124_def]
  kernel_rfl

theorem output124_eq : InitECandidate.Proofs.DeadStages79.Parallel.output124 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages79.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1576 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input125_def]
  kernel_rfl

theorem output125_eq : InitECandidate.Proofs.DeadStages79.Parallel.output125 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_954 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages79.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input126_def]
  kernel_rfl

theorem output126_eq : InitECandidate.Proofs.DeadStages79.Parallel.output126 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output126_def]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages79.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1551 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input127_def]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages79.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1549 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input128_def]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages79.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1547 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input129_def]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages79.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1545 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input130_def]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages79.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages79.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1546 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input132_def]
  simp only [input131_eq, input130_eq]
  kernel_rfl

theorem input133_eq : InitECandidate.Proofs.DeadStages79.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1548 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input133_def]
  simp only [input132_eq, input129_eq]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages79.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1550 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input134_def]
  simp only [input133_eq, input128_eq]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages79.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1552 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input135_def]
  simp only [input134_eq, input127_eq]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages79.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1544 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input136_def]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages79.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_944 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output136_def]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages79.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1553 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input137_def]
  simp only [input136_eq, input135_eq]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages79.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_944 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output137_def]
  simp only [output136_eq]

theorem input138_eq : InitECandidate.Proofs.DeadStages79.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_984 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input138_def]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages79.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output138_def]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages79.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1541 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages79.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_941 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages79.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1542 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input140_def]
  simp only [input139_eq, input138_eq]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages79.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_942 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output140_def]
  simp only [output139_eq, output138_eq]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages79.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1539 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages79.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_939 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages79.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1536 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages79.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_936 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages79.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1535 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input143_def]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages79.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_935 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output143_def]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages79.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1537 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input144_def]
  simp only [input143_eq, input142_eq]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages79.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_937 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output144_def]
  simp only [output143_eq, output142_eq]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages79.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input145_def]
  kernel_rfl

theorem output145_eq : InitECandidate.Proofs.DeadStages79.Parallel.output145 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages79.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1530 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages79.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input147_def]
  kernel_rfl

theorem output147_eq : InitECandidate.Proofs.DeadStages79.Parallel.output147 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages79.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1528 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input148_def]
  kernel_rfl

theorem input149_eq : InitECandidate.Proofs.DeadStages79.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1529 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input149_def]
  simp only [input148_eq, input147_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages79.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output149_def]
  simp only [output147_eq]

theorem input150_eq : InitECandidate.Proofs.DeadStages79.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1531 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input150_def]
  simp only [input149_eq, input146_eq]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages79.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output150_def]
  simp only [output149_eq]

theorem input151_eq : InitECandidate.Proofs.DeadStages79.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input151_def]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages79.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1521 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input152_def]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages79.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input153_def]
  simp only [input152_eq, input151_eq]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages79.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input154_def]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages79.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output154_def]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages79.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1518 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input155_def]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages79.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_928 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output155_def]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages79.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1519 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input156_def]
  simp only [input155_eq, input154_eq]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages79.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_929 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output156_def]
  simp only [output155_eq, output154_eq]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages79.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1516 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input157_def]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages79.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_926 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output157_def]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages79.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1514 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input158_def]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages79.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input159_def]
  kernel_rfl

theorem output159_eq : InitECandidate.Proofs.DeadStages79.Parallel.output159 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages79.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1512 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages79.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1513 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input161_def]
  simp only [input160_eq, input159_eq]
  kernel_rfl

theorem output161_eq : InitECandidate.Proofs.DeadStages79.Parallel.output161 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output161_def]
  simp only [output159_eq]

theorem input162_eq : InitECandidate.Proofs.DeadStages79.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1515 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input162_def]
  simp only [input161_eq, input158_eq]
  kernel_rfl

theorem output162_eq : InitECandidate.Proofs.DeadStages79.Parallel.output162 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output162_def]
  simp only [output161_eq]

theorem input163_eq : InitECandidate.Proofs.DeadStages79.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1517 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input163_def]
  simp only [input162_eq, input157_eq]
  kernel_rfl

theorem output163_eq : InitECandidate.Proofs.DeadStages79.Parallel.output163 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_927 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output163_def]
  simp only [output162_eq, output157_eq]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages79.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1520 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input164_def]
  simp only [input163_eq, input156_eq]
  kernel_rfl

theorem output164_eq : InitECandidate.Proofs.DeadStages79.Parallel.output164 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_930 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output164_def]
  simp only [output163_eq, output156_eq]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages79.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1523 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input165_def]
  simp only [input164_eq, input153_eq]
  kernel_rfl

theorem output165_eq : InitECandidate.Proofs.DeadStages79.Parallel.output165 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_930 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output165_def]
  simp only [output164_eq]

theorem input166_eq : InitECandidate.Proofs.DeadStages79.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input166_def]
  kernel_rfl

theorem output166_eq : InitECandidate.Proofs.DeadStages79.Parallel.output166 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output166_def]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages79.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input167_def]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages79.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1525 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input168_def]
  simp only [input167_eq, input166_eq]
  kernel_rfl

theorem output168_eq : InitECandidate.Proofs.DeadStages79.Parallel.output168 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output168_def]
  simp only [output166_eq]

theorem input169_eq : InitECandidate.Proofs.DeadStages79.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input169_def]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages79.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1526 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input170_def]
  simp only [input169_eq, input168_eq]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages79.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output170_def]
  simp only [output168_eq]

theorem input171_eq : InitECandidate.Proofs.DeadStages79.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1527 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input171_def]
  simp only [input165_eq, input170_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages79.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_931 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output171_def]
  simp only [output165_eq, output170_eq]
  kernel_rfl

theorem input172_eq : InitECandidate.Proofs.DeadStages79.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1532 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input172_def]
  simp only [input171_eq, input150_eq]
  kernel_rfl

theorem output172_eq : InitECandidate.Proofs.DeadStages79.Parallel.output172 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_932 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output172_def]
  simp only [output171_eq, output150_eq]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages79.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1510 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages79.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_924 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages79.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1508 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input174_def]
  kernel_rfl

theorem output174_eq : InitECandidate.Proofs.DeadStages79.Parallel.output174 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_922 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages79.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1506 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input175_def]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages79.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_920 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output175_def]
  kernel_rfl

theorem input176_eq : InitECandidate.Proofs.DeadStages79.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1503 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input176_def]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages79.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_917 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output176_def]
  kernel_rfl

theorem input177_eq : InitECandidate.Proofs.DeadStages79.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1500 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input177_def]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages79.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_914 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output177_def]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages79.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1499 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input178_def]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages79.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_913 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output178_def]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages79.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1501 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input179_def]
  simp only [input178_eq, input177_eq]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages79.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_915 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output179_def]
  simp only [output178_eq, output177_eq]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages79.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1498 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages79.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_912 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages79.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1502 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input181_def]
  simp only [input180_eq, input179_eq]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages79.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_916 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output181_def]
  simp only [output180_eq, output179_eq]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages79.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1504 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input182_def]
  simp only [input181_eq, input176_eq]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages79.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_918 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output182_def]
  simp only [output181_eq, output176_eq]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages79.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1496 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input183_def]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages79.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_910 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output183_def]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages79.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1493 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input184_def]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages79.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_907 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output184_def]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages79.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1490 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages79.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_904 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages79.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1489 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input186_def]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages79.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_903 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output186_def]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages79.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1491 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input187_def]
  simp only [input186_eq, input185_eq]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages79.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_905 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output187_def]
  simp only [output186_eq, output185_eq]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages79.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1488 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages79.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_902 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages79.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1492 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input189_def]
  simp only [input188_eq, input187_eq]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages79.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_906 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output189_def]
  simp only [output188_eq, output187_eq]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages79.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1494 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input190_def]
  simp only [input189_eq, input184_eq]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages79.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_908 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output190_def]
  simp only [output189_eq, output184_eq]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages79.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages79.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages79.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1483 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages79.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages79.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages79.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1481 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages79.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1482 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input195_def]
  simp only [input194_eq, input193_eq]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages79.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output195_def]
  simp only [output193_eq]

theorem input196_eq : InitECandidate.Proofs.DeadStages79.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1484 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input196_def]
  simp only [input195_eq, input192_eq]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages79.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output196_def]
  simp only [output195_eq]

theorem input197_eq : InitECandidate.Proofs.DeadStages79.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages79.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1474 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input198_def]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages79.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1475 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input199_def]
  simp only [input198_eq, input197_eq]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages79.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages79.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages79.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1471 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages79.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_895 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages79.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1472 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input202_def]
  simp only [input201_eq, input200_eq]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages79.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_896 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output202_def]
  simp only [output201_eq, output200_eq]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages79.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1469 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages79.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_893 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages79.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1467 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages79.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages79.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages79.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1465 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages79.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1466 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input207_def]
  simp only [input206_eq, input205_eq]
  kernel_rfl

theorem output207_eq : InitECandidate.Proofs.DeadStages79.Parallel.output207 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output207_def]
  simp only [output205_eq]

theorem input208_eq : InitECandidate.Proofs.DeadStages79.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1468 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input208_def]
  simp only [input207_eq, input204_eq]
  kernel_rfl

theorem output208_eq : InitECandidate.Proofs.DeadStages79.Parallel.output208 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output208_def]
  simp only [output207_eq]

theorem input209_eq : InitECandidate.Proofs.DeadStages79.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1470 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input209_def]
  simp only [input208_eq, input203_eq]
  kernel_rfl

theorem output209_eq : InitECandidate.Proofs.DeadStages79.Parallel.output209 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_894 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output209_def]
  simp only [output208_eq, output203_eq]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages79.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1473 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input210_def]
  simp only [input209_eq, input202_eq]
  kernel_rfl

theorem output210_eq : InitECandidate.Proofs.DeadStages79.Parallel.output210 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_897 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output210_def]
  simp only [output209_eq, output202_eq]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages79.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1476 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input211_def]
  simp only [input210_eq, input199_eq]
  kernel_rfl

theorem output211_eq : InitECandidate.Proofs.DeadStages79.Parallel.output211 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_897 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output211_def]
  simp only [output210_eq]

theorem input212_eq : InitECandidate.Proofs.DeadStages79.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input212_def]
  kernel_rfl

theorem output212_eq : InitECandidate.Proofs.DeadStages79.Parallel.output212 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output212_def]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages79.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1477 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input213_def]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages79.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1478 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input214_def]
  simp only [input213_eq, input212_eq]
  kernel_rfl

theorem output214_eq : InitECandidate.Proofs.DeadStages79.Parallel.output214 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output214_def]
  simp only [output212_eq]

theorem input215_eq : InitECandidate.Proofs.DeadStages79.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages79.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1479 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input216_def]
  simp only [input215_eq, input214_eq]
  kernel_rfl

theorem output216_eq : InitECandidate.Proofs.DeadStages79.Parallel.output216 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output216_def]
  simp only [output214_eq]

theorem input217_eq : InitECandidate.Proofs.DeadStages79.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1480 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input217_def]
  simp only [input211_eq, input216_eq]
  kernel_rfl

theorem output217_eq : InitECandidate.Proofs.DeadStages79.Parallel.output217 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_898 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output217_def]
  simp only [output211_eq, output216_eq]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages79.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1485 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input218_def]
  simp only [input217_eq, input196_eq]
  kernel_rfl

theorem output218_eq : InitECandidate.Proofs.DeadStages79.Parallel.output218 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_899 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output218_def]
  simp only [output217_eq, output196_eq]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages79.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1463 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input219_def]
  kernel_rfl

theorem output219_eq : InitECandidate.Proofs.DeadStages79.Parallel.output219 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_891 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages79.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1461 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input220_def]
  kernel_rfl

theorem output220_eq : InitECandidate.Proofs.DeadStages79.Parallel.output220 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_889 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages79.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1459 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input221_def]
  kernel_rfl

theorem output221_eq : InitECandidate.Proofs.DeadStages79.Parallel.output221 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_887 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages79.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1456 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input222_def]
  kernel_rfl

theorem output222_eq : InitECandidate.Proofs.DeadStages79.Parallel.output222 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_884 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages79.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1453 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input223_def]
  kernel_rfl

theorem output223_eq : InitECandidate.Proofs.DeadStages79.Parallel.output223 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_881 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages79.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1452 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input224_def]
  kernel_rfl

theorem output224_eq : InitECandidate.Proofs.DeadStages79.Parallel.output224 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_880 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages79.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1454 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input225_def]
  simp only [input224_eq, input223_eq]
  kernel_rfl

theorem output225_eq : InitECandidate.Proofs.DeadStages79.Parallel.output225 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_882 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output225_def]
  simp only [output224_eq, output223_eq]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages79.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1451 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input226_def]
  kernel_rfl

theorem output226_eq : InitECandidate.Proofs.DeadStages79.Parallel.output226 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_879 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages79.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1455 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input227_def]
  simp only [input226_eq, input225_eq]
  kernel_rfl

theorem output227_eq : InitECandidate.Proofs.DeadStages79.Parallel.output227 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_883 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output227_def]
  simp only [output226_eq, output225_eq]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages79.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1457 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input228_def]
  simp only [input227_eq, input222_eq]
  kernel_rfl

theorem output228_eq : InitECandidate.Proofs.DeadStages79.Parallel.output228 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_885 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output228_def]
  simp only [output227_eq, output222_eq]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages79.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1449 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input229_def]
  kernel_rfl

theorem output229_eq : InitECandidate.Proofs.DeadStages79.Parallel.output229 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_877 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages79.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1446 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input230_def]
  kernel_rfl

theorem output230_eq : InitECandidate.Proofs.DeadStages79.Parallel.output230 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_874 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output230_def]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages79.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1443 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input231_def]
  kernel_rfl

theorem output231_eq : InitECandidate.Proofs.DeadStages79.Parallel.output231 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_871 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output231_def]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages79.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1442 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input232_def]
  kernel_rfl

theorem output232_eq : InitECandidate.Proofs.DeadStages79.Parallel.output232 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_870 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output232_def]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages79.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1444 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input233_def]
  simp only [input232_eq, input231_eq]
  kernel_rfl

theorem output233_eq : InitECandidate.Proofs.DeadStages79.Parallel.output233 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_872 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output233_def]
  simp only [output232_eq, output231_eq]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages79.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1441 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input234_def]
  kernel_rfl

theorem output234_eq : InitECandidate.Proofs.DeadStages79.Parallel.output234 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_869 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output234_def]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages79.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1445 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input235_def]
  simp only [input234_eq, input233_eq]
  kernel_rfl

theorem output235_eq : InitECandidate.Proofs.DeadStages79.Parallel.output235 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_873 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output235_def]
  simp only [output234_eq, output233_eq]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages79.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1447 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input236_def]
  simp only [input235_eq, input230_eq]
  kernel_rfl

theorem output236_eq : InitECandidate.Proofs.DeadStages79.Parallel.output236 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_875 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output236_def]
  simp only [output235_eq, output230_eq]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages79.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input237_def]
  kernel_rfl

theorem output237_eq : InitECandidate.Proofs.DeadStages79.Parallel.output237 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output237_def]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages79.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1436 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input238_def]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages79.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input239_def]
  kernel_rfl

theorem output239_eq : InitECandidate.Proofs.DeadStages79.Parallel.output239 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output239_def]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages79.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1434 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input240_def]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages79.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1435 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input241_def]
  simp only [input240_eq, input239_eq]
  kernel_rfl

theorem output241_eq : InitECandidate.Proofs.DeadStages79.Parallel.output241 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output241_def]
  simp only [output239_eq]

theorem input242_eq : InitECandidate.Proofs.DeadStages79.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1437 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input242_def]
  simp only [input241_eq, input238_eq]
  kernel_rfl

theorem output242_eq : InitECandidate.Proofs.DeadStages79.Parallel.output242 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output242_def]
  simp only [output241_eq]

theorem input243_eq : InitECandidate.Proofs.DeadStages79.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input243_def]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages79.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1427 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input244_def]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages79.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1428 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input245_def]
  simp only [input244_eq, input243_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages79.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input246_def]
  kernel_rfl

theorem output246_eq : InitECandidate.Proofs.DeadStages79.Parallel.output246 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output246_def]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages79.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1424 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input247_def]
  kernel_rfl

theorem output247_eq : InitECandidate.Proofs.DeadStages79.Parallel.output247 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_862 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output247_def]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages79.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1425 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input248_def]
  simp only [input247_eq, input246_eq]
  kernel_rfl

theorem output248_eq : InitECandidate.Proofs.DeadStages79.Parallel.output248 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_863 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output248_def]
  simp only [output247_eq, output246_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages79.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1422 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input249_def]
  kernel_rfl

theorem output249_eq : InitECandidate.Proofs.DeadStages79.Parallel.output249 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_860 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output249_def]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages79.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1420 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input250_def]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages79.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input251_def]
  kernel_rfl

theorem output251_eq : InitECandidate.Proofs.DeadStages79.Parallel.output251 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output251_def]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages79.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1418 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input252_def]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages79.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1419 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input253_def]
  simp only [input252_eq, input251_eq]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages79.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output253_def]
  simp only [output251_eq]

theorem input254_eq : InitECandidate.Proofs.DeadStages79.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1421 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input254_def]
  simp only [input253_eq, input250_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages79.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output254_def]
  simp only [output253_eq]

theorem input255_eq : InitECandidate.Proofs.DeadStages79.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1423 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input255_def]
  simp only [input254_eq, input249_eq]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages79.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_861 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output255_def]
  simp only [output254_eq, output249_eq]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
