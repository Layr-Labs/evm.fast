import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel808.Data2
import InitECandidate.Proofs.WordStages.Parallel808.Data3
import InitECandidate.Proofs.DeadStages808.Parallel.Data.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
theorem input0_eq : InitECandidate.Proofs.DeadStages808.Parallel.input0 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2504 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input0_def]
  kernel_rfl

theorem output0_eq : InitECandidate.Proofs.DeadStages808.Parallel.output0 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2044 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output0_def]
  kernel_rfl

theorem input1_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2503 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1_def]
  kernel_rfl

theorem output1_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2043 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1_def]
  kernel_rfl

theorem input2_eq : InitECandidate.Proofs.DeadStages808.Parallel.input2 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2505 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input2_def]
  simp only [input1_eq, input0_eq]
  kernel_rfl

theorem output2_eq : InitECandidate.Proofs.DeadStages808.Parallel.output2 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2045 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output2_def]
  simp only [output1_eq, output0_eq]
  kernel_rfl

theorem input3_eq : InitECandidate.Proofs.DeadStages808.Parallel.input3 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2501 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input3_def]
  kernel_rfl

theorem output3_eq : InitECandidate.Proofs.DeadStages808.Parallel.output3 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2041 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output3_def]
  kernel_rfl

theorem input4_eq : InitECandidate.Proofs.DeadStages808.Parallel.input4 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2498 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input4_def]
  kernel_rfl

theorem output4_eq : InitECandidate.Proofs.DeadStages808.Parallel.output4 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2038 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output4_def]
  kernel_rfl

theorem input5_eq : InitECandidate.Proofs.DeadStages808.Parallel.input5 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2497 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input5_def]
  kernel_rfl

theorem output5_eq : InitECandidate.Proofs.DeadStages808.Parallel.output5 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2037 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output5_def]
  kernel_rfl

theorem input6_eq : InitECandidate.Proofs.DeadStages808.Parallel.input6 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2499 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input6_def]
  simp only [input5_eq, input4_eq]
  kernel_rfl

theorem output6_eq : InitECandidate.Proofs.DeadStages808.Parallel.output6 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2039 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output6_def]
  simp only [output5_eq, output4_eq]
  kernel_rfl

theorem input7_eq : InitECandidate.Proofs.DeadStages808.Parallel.input7 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2495 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input7_def]
  kernel_rfl

theorem output7_eq : InitECandidate.Proofs.DeadStages808.Parallel.output7 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2035 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output7_def]
  kernel_rfl

theorem input8_eq : InitECandidate.Proofs.DeadStages808.Parallel.input8 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2492 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input8_def]
  kernel_rfl

theorem output8_eq : InitECandidate.Proofs.DeadStages808.Parallel.output8 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2032 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output8_def]
  kernel_rfl

theorem input9_eq : InitECandidate.Proofs.DeadStages808.Parallel.input9 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2491 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input9_def]
  kernel_rfl

theorem output9_eq : InitECandidate.Proofs.DeadStages808.Parallel.output9 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2031 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output9_def]
  kernel_rfl

theorem input10_eq : InitECandidate.Proofs.DeadStages808.Parallel.input10 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2493 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input10_def]
  simp only [input9_eq, input8_eq]
  kernel_rfl

theorem output10_eq : InitECandidate.Proofs.DeadStages808.Parallel.output10 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2033 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output10_def]
  simp only [output9_eq, output8_eq]
  kernel_rfl

theorem input11_eq : InitECandidate.Proofs.DeadStages808.Parallel.input11 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2489 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input11_def]
  kernel_rfl

theorem output11_eq : InitECandidate.Proofs.DeadStages808.Parallel.output11 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2029 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output11_def]
  kernel_rfl

theorem input12_eq : InitECandidate.Proofs.DeadStages808.Parallel.input12 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2486 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input12_def]
  kernel_rfl

theorem output12_eq : InitECandidate.Proofs.DeadStages808.Parallel.output12 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2026 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output12_def]
  kernel_rfl

theorem input13_eq : InitECandidate.Proofs.DeadStages808.Parallel.input13 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2485 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input13_def]
  kernel_rfl

theorem output13_eq : InitECandidate.Proofs.DeadStages808.Parallel.output13 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2025 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output13_def]
  kernel_rfl

theorem input14_eq : InitECandidate.Proofs.DeadStages808.Parallel.input14 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2487 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input14_def]
  simp only [input13_eq, input12_eq]
  kernel_rfl

theorem output14_eq : InitECandidate.Proofs.DeadStages808.Parallel.output14 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2027 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output14_def]
  simp only [output13_eq, output12_eq]
  kernel_rfl

theorem input15_eq : InitECandidate.Proofs.DeadStages808.Parallel.input15 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2483 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input15_def]
  kernel_rfl

theorem output15_eq : InitECandidate.Proofs.DeadStages808.Parallel.output15 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2023 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output15_def]
  kernel_rfl

theorem input16_eq : InitECandidate.Proofs.DeadStages808.Parallel.input16 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2480 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input16_def]
  kernel_rfl

theorem output16_eq : InitECandidate.Proofs.DeadStages808.Parallel.output16 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2020 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output16_def]
  kernel_rfl

theorem input17_eq : InitECandidate.Proofs.DeadStages808.Parallel.input17 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2479 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input17_def]
  kernel_rfl

theorem output17_eq : InitECandidate.Proofs.DeadStages808.Parallel.output17 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2019 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output17_def]
  kernel_rfl

theorem input18_eq : InitECandidate.Proofs.DeadStages808.Parallel.input18 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2481 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input18_def]
  simp only [input17_eq, input16_eq]
  kernel_rfl

theorem output18_eq : InitECandidate.Proofs.DeadStages808.Parallel.output18 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2021 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output18_def]
  simp only [output17_eq, output16_eq]
  kernel_rfl

theorem input19_eq : InitECandidate.Proofs.DeadStages808.Parallel.input19 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2477 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input19_def]
  kernel_rfl

theorem output19_eq : InitECandidate.Proofs.DeadStages808.Parallel.output19 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2017 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output19_def]
  kernel_rfl

theorem input20_eq : InitECandidate.Proofs.DeadStages808.Parallel.input20 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2474 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input20_def]
  kernel_rfl

theorem output20_eq : InitECandidate.Proofs.DeadStages808.Parallel.output20 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2014 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output20_def]
  kernel_rfl

theorem input21_eq : InitECandidate.Proofs.DeadStages808.Parallel.input21 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2473 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input21_def]
  kernel_rfl

theorem output21_eq : InitECandidate.Proofs.DeadStages808.Parallel.output21 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2013 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output21_def]
  kernel_rfl

theorem input22_eq : InitECandidate.Proofs.DeadStages808.Parallel.input22 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2475 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input22_def]
  simp only [input21_eq, input20_eq]
  kernel_rfl

theorem output22_eq : InitECandidate.Proofs.DeadStages808.Parallel.output22 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2015 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output22_def]
  simp only [output21_eq, output20_eq]
  kernel_rfl

theorem input23_eq : InitECandidate.Proofs.DeadStages808.Parallel.input23 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2471 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input23_def]
  kernel_rfl

theorem output23_eq : InitECandidate.Proofs.DeadStages808.Parallel.output23 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2011 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output23_def]
  kernel_rfl

theorem input24_eq : InitECandidate.Proofs.DeadStages808.Parallel.input24 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2468 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input24_def]
  kernel_rfl

theorem output24_eq : InitECandidate.Proofs.DeadStages808.Parallel.output24 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2008 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output24_def]
  kernel_rfl

theorem input25_eq : InitECandidate.Proofs.DeadStages808.Parallel.input25 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2467 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input25_def]
  kernel_rfl

theorem output25_eq : InitECandidate.Proofs.DeadStages808.Parallel.output25 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2007 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output25_def]
  kernel_rfl

theorem input26_eq : InitECandidate.Proofs.DeadStages808.Parallel.input26 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2469 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input26_def]
  simp only [input25_eq, input24_eq]
  kernel_rfl

theorem output26_eq : InitECandidate.Proofs.DeadStages808.Parallel.output26 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2009 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output26_def]
  simp only [output25_eq, output24_eq]
  kernel_rfl

theorem input27_eq : InitECandidate.Proofs.DeadStages808.Parallel.input27 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2465 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input27_def]
  kernel_rfl

theorem output27_eq : InitECandidate.Proofs.DeadStages808.Parallel.output27 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2005 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output27_def]
  kernel_rfl

theorem input28_eq : InitECandidate.Proofs.DeadStages808.Parallel.input28 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2463 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input28_def]
  kernel_rfl

theorem output28_eq : InitECandidate.Proofs.DeadStages808.Parallel.output28 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2003 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output28_def]
  kernel_rfl

theorem input29_eq : InitECandidate.Proofs.DeadStages808.Parallel.input29 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2461 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input29_def]
  kernel_rfl

theorem output29_eq : InitECandidate.Proofs.DeadStages808.Parallel.output29 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2001 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output29_def]
  kernel_rfl

theorem input30_eq : InitECandidate.Proofs.DeadStages808.Parallel.input30 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2459 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input30_def]
  kernel_rfl

theorem output30_eq : InitECandidate.Proofs.DeadStages808.Parallel.output30 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1999 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output30_def]
  kernel_rfl

theorem input31_eq : InitECandidate.Proofs.DeadStages808.Parallel.input31 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2457 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input31_def]
  kernel_rfl

theorem output31_eq : InitECandidate.Proofs.DeadStages808.Parallel.output31 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1997 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output31_def]
  kernel_rfl

theorem input32_eq : InitECandidate.Proofs.DeadStages808.Parallel.input32 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2455 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input32_def]
  kernel_rfl

theorem output32_eq : InitECandidate.Proofs.DeadStages808.Parallel.output32 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1995 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output32_def]
  kernel_rfl

theorem input33_eq : InitECandidate.Proofs.DeadStages808.Parallel.input33 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2453 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input33_def]
  kernel_rfl

theorem output33_eq : InitECandidate.Proofs.DeadStages808.Parallel.output33 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1993 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output33_def]
  kernel_rfl

theorem input34_eq : InitECandidate.Proofs.DeadStages808.Parallel.input34 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2450 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input34_def]
  kernel_rfl

theorem output34_eq : InitECandidate.Proofs.DeadStages808.Parallel.output34 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1990 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output34_def]
  kernel_rfl

theorem input35_eq : InitECandidate.Proofs.DeadStages808.Parallel.input35 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2449 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input35_def]
  kernel_rfl

theorem output35_eq : InitECandidate.Proofs.DeadStages808.Parallel.output35 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1989 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output35_def]
  kernel_rfl

theorem input36_eq : InitECandidate.Proofs.DeadStages808.Parallel.input36 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2451 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input36_def]
  simp only [input35_eq, input34_eq]
  kernel_rfl

theorem output36_eq : InitECandidate.Proofs.DeadStages808.Parallel.output36 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1991 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output36_def]
  simp only [output35_eq, output34_eq]
  kernel_rfl

theorem input37_eq : InitECandidate.Proofs.DeadStages808.Parallel.input37 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2446 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input37_def]
  kernel_rfl

theorem output37_eq : InitECandidate.Proofs.DeadStages808.Parallel.output37 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1986 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output37_def]
  kernel_rfl

theorem input38_eq : InitECandidate.Proofs.DeadStages808.Parallel.input38 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2445 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input38_def]
  kernel_rfl

theorem output38_eq : InitECandidate.Proofs.DeadStages808.Parallel.output38 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1985 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output38_def]
  kernel_rfl

theorem input39_eq : InitECandidate.Proofs.DeadStages808.Parallel.input39 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2447 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input39_def]
  simp only [input38_eq, input37_eq]
  kernel_rfl

theorem output39_eq : InitECandidate.Proofs.DeadStages808.Parallel.output39 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1987 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output39_def]
  simp only [output38_eq, output37_eq]
  kernel_rfl

theorem input40_eq : InitECandidate.Proofs.DeadStages808.Parallel.input40 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2443 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input40_def]
  kernel_rfl

theorem output40_eq : InitECandidate.Proofs.DeadStages808.Parallel.output40 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1983 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output40_def]
  kernel_rfl

theorem input41_eq : InitECandidate.Proofs.DeadStages808.Parallel.input41 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2440 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input41_def]
  kernel_rfl

theorem output41_eq : InitECandidate.Proofs.DeadStages808.Parallel.output41 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1980 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output41_def]
  kernel_rfl

theorem input42_eq : InitECandidate.Proofs.DeadStages808.Parallel.input42 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2439 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input42_def]
  kernel_rfl

theorem output42_eq : InitECandidate.Proofs.DeadStages808.Parallel.output42 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1979 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output42_def]
  kernel_rfl

theorem input43_eq : InitECandidate.Proofs.DeadStages808.Parallel.input43 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2441 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input43_def]
  simp only [input42_eq, input41_eq]
  kernel_rfl

theorem output43_eq : InitECandidate.Proofs.DeadStages808.Parallel.output43 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1981 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output43_def]
  simp only [output42_eq, output41_eq]
  kernel_rfl

theorem input44_eq : InitECandidate.Proofs.DeadStages808.Parallel.input44 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2437 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input44_def]
  kernel_rfl

theorem output44_eq : InitECandidate.Proofs.DeadStages808.Parallel.output44 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1977 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output44_def]
  kernel_rfl

theorem input45_eq : InitECandidate.Proofs.DeadStages808.Parallel.input45 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2434 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input45_def]
  kernel_rfl

theorem output45_eq : InitECandidate.Proofs.DeadStages808.Parallel.output45 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1974 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output45_def]
  kernel_rfl

theorem input46_eq : InitECandidate.Proofs.DeadStages808.Parallel.input46 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2433 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input46_def]
  kernel_rfl

theorem output46_eq : InitECandidate.Proofs.DeadStages808.Parallel.output46 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1973 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output46_def]
  kernel_rfl

theorem input47_eq : InitECandidate.Proofs.DeadStages808.Parallel.input47 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2435 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input47_def]
  simp only [input46_eq, input45_eq]
  kernel_rfl

theorem output47_eq : InitECandidate.Proofs.DeadStages808.Parallel.output47 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1975 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output47_def]
  simp only [output46_eq, output45_eq]
  kernel_rfl

theorem input48_eq : InitECandidate.Proofs.DeadStages808.Parallel.input48 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2431 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input48_def]
  kernel_rfl

theorem output48_eq : InitECandidate.Proofs.DeadStages808.Parallel.output48 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1971 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output48_def]
  kernel_rfl

theorem input49_eq : InitECandidate.Proofs.DeadStages808.Parallel.input49 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2428 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input49_def]
  kernel_rfl

theorem output49_eq : InitECandidate.Proofs.DeadStages808.Parallel.output49 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1968 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output49_def]
  kernel_rfl

theorem input50_eq : InitECandidate.Proofs.DeadStages808.Parallel.input50 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2427 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input50_def]
  kernel_rfl

theorem output50_eq : InitECandidate.Proofs.DeadStages808.Parallel.output50 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1967 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output50_def]
  kernel_rfl

theorem input51_eq : InitECandidate.Proofs.DeadStages808.Parallel.input51 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2429 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input51_def]
  simp only [input50_eq, input49_eq]
  kernel_rfl

theorem output51_eq : InitECandidate.Proofs.DeadStages808.Parallel.output51 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1969 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output51_def]
  simp only [output50_eq, output49_eq]
  kernel_rfl

theorem input52_eq : InitECandidate.Proofs.DeadStages808.Parallel.input52 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2425 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input52_def]
  kernel_rfl

theorem output52_eq : InitECandidate.Proofs.DeadStages808.Parallel.output52 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1965 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output52_def]
  kernel_rfl

theorem input53_eq : InitECandidate.Proofs.DeadStages808.Parallel.input53 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2422 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input53_def]
  kernel_rfl

theorem output53_eq : InitECandidate.Proofs.DeadStages808.Parallel.output53 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1962 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output53_def]
  kernel_rfl

theorem input54_eq : InitECandidate.Proofs.DeadStages808.Parallel.input54 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2421 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input54_def]
  kernel_rfl

theorem output54_eq : InitECandidate.Proofs.DeadStages808.Parallel.output54 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1961 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output54_def]
  kernel_rfl

theorem input55_eq : InitECandidate.Proofs.DeadStages808.Parallel.input55 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2423 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input55_def]
  simp only [input54_eq, input53_eq]
  kernel_rfl

theorem output55_eq : InitECandidate.Proofs.DeadStages808.Parallel.output55 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1963 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output55_def]
  simp only [output54_eq, output53_eq]
  kernel_rfl

theorem input56_eq : InitECandidate.Proofs.DeadStages808.Parallel.input56 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2419 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input56_def]
  kernel_rfl

theorem output56_eq : InitECandidate.Proofs.DeadStages808.Parallel.output56 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1959 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output56_def]
  kernel_rfl

theorem input57_eq : InitECandidate.Proofs.DeadStages808.Parallel.input57 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2416 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input57_def]
  kernel_rfl

theorem output57_eq : InitECandidate.Proofs.DeadStages808.Parallel.output57 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1956 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output57_def]
  kernel_rfl

theorem input58_eq : InitECandidate.Proofs.DeadStages808.Parallel.input58 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2415 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input58_def]
  kernel_rfl

theorem output58_eq : InitECandidate.Proofs.DeadStages808.Parallel.output58 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1955 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output58_def]
  kernel_rfl

theorem input59_eq : InitECandidate.Proofs.DeadStages808.Parallel.input59 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2417 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input59_def]
  simp only [input58_eq, input57_eq]
  kernel_rfl

theorem output59_eq : InitECandidate.Proofs.DeadStages808.Parallel.output59 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1957 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output59_def]
  simp only [output58_eq, output57_eq]
  kernel_rfl

theorem input60_eq : InitECandidate.Proofs.DeadStages808.Parallel.input60 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2413 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input60_def]
  kernel_rfl

theorem output60_eq : InitECandidate.Proofs.DeadStages808.Parallel.output60 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1953 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output60_def]
  kernel_rfl

theorem input61_eq : InitECandidate.Proofs.DeadStages808.Parallel.input61 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2411 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input61_def]
  kernel_rfl

theorem output61_eq : InitECandidate.Proofs.DeadStages808.Parallel.output61 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1951 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output61_def]
  kernel_rfl

theorem input62_eq : InitECandidate.Proofs.DeadStages808.Parallel.input62 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2409 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input62_def]
  kernel_rfl

theorem output62_eq : InitECandidate.Proofs.DeadStages808.Parallel.output62 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1949 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output62_def]
  kernel_rfl

theorem input63_eq : InitECandidate.Proofs.DeadStages808.Parallel.input63 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2407 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input63_def]
  kernel_rfl

theorem output63_eq : InitECandidate.Proofs.DeadStages808.Parallel.output63 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1947 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output63_def]
  kernel_rfl

theorem input64_eq : InitECandidate.Proofs.DeadStages808.Parallel.input64 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2405 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input64_def]
  kernel_rfl

theorem output64_eq : InitECandidate.Proofs.DeadStages808.Parallel.output64 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1945 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output64_def]
  kernel_rfl

theorem input65_eq : InitECandidate.Proofs.DeadStages808.Parallel.input65 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2403 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input65_def]
  kernel_rfl

theorem output65_eq : InitECandidate.Proofs.DeadStages808.Parallel.output65 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1943 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output65_def]
  kernel_rfl

theorem input66_eq : InitECandidate.Proofs.DeadStages808.Parallel.input66 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2401 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input66_def]
  kernel_rfl

theorem output66_eq : InitECandidate.Proofs.DeadStages808.Parallel.output66 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1941 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output66_def]
  kernel_rfl

theorem input67_eq : InitECandidate.Proofs.DeadStages808.Parallel.input67 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2398 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input67_def]
  kernel_rfl

theorem output67_eq : InitECandidate.Proofs.DeadStages808.Parallel.output67 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1938 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output67_def]
  kernel_rfl

theorem input68_eq : InitECandidate.Proofs.DeadStages808.Parallel.input68 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2397 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input68_def]
  kernel_rfl

theorem output68_eq : InitECandidate.Proofs.DeadStages808.Parallel.output68 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1937 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output68_def]
  kernel_rfl

theorem input69_eq : InitECandidate.Proofs.DeadStages808.Parallel.input69 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2399 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input69_def]
  simp only [input68_eq, input67_eq]
  kernel_rfl

theorem output69_eq : InitECandidate.Proofs.DeadStages808.Parallel.output69 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1939 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output69_def]
  simp only [output68_eq, output67_eq]
  kernel_rfl

theorem input70_eq : InitECandidate.Proofs.DeadStages808.Parallel.input70 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2394 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input70_def]
  kernel_rfl

theorem output70_eq : InitECandidate.Proofs.DeadStages808.Parallel.output70 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1934 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output70_def]
  kernel_rfl

theorem input71_eq : InitECandidate.Proofs.DeadStages808.Parallel.input71 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2393 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input71_def]
  kernel_rfl

theorem output71_eq : InitECandidate.Proofs.DeadStages808.Parallel.output71 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1933 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output71_def]
  kernel_rfl

theorem input72_eq : InitECandidate.Proofs.DeadStages808.Parallel.input72 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2395 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input72_def]
  simp only [input71_eq, input70_eq]
  kernel_rfl

theorem output72_eq : InitECandidate.Proofs.DeadStages808.Parallel.output72 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1935 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output72_def]
  simp only [output71_eq, output70_eq]
  kernel_rfl

theorem input73_eq : InitECandidate.Proofs.DeadStages808.Parallel.input73 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2391 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input73_def]
  kernel_rfl

theorem output73_eq : InitECandidate.Proofs.DeadStages808.Parallel.output73 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1931 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output73_def]
  kernel_rfl

theorem input74_eq : InitECandidate.Proofs.DeadStages808.Parallel.input74 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2388 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input74_def]
  kernel_rfl

theorem output74_eq : InitECandidate.Proofs.DeadStages808.Parallel.output74 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1928 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output74_def]
  kernel_rfl

theorem input75_eq : InitECandidate.Proofs.DeadStages808.Parallel.input75 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2387 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input75_def]
  kernel_rfl

theorem output75_eq : InitECandidate.Proofs.DeadStages808.Parallel.output75 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1927 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output75_def]
  kernel_rfl

theorem input76_eq : InitECandidate.Proofs.DeadStages808.Parallel.input76 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2389 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input76_def]
  simp only [input75_eq, input74_eq]
  kernel_rfl

theorem output76_eq : InitECandidate.Proofs.DeadStages808.Parallel.output76 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1929 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output76_def]
  simp only [output75_eq, output74_eq]
  kernel_rfl

theorem input77_eq : InitECandidate.Proofs.DeadStages808.Parallel.input77 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2385 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input77_def]
  kernel_rfl

theorem output77_eq : InitECandidate.Proofs.DeadStages808.Parallel.output77 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1925 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output77_def]
  kernel_rfl

theorem input78_eq : InitECandidate.Proofs.DeadStages808.Parallel.input78 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2382 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input78_def]
  kernel_rfl

theorem output78_eq : InitECandidate.Proofs.DeadStages808.Parallel.output78 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1922 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output78_def]
  kernel_rfl

theorem input79_eq : InitECandidate.Proofs.DeadStages808.Parallel.input79 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2381 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input79_def]
  kernel_rfl

theorem output79_eq : InitECandidate.Proofs.DeadStages808.Parallel.output79 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1921 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output79_def]
  kernel_rfl

theorem input80_eq : InitECandidate.Proofs.DeadStages808.Parallel.input80 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2383 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input80_def]
  simp only [input79_eq, input78_eq]
  kernel_rfl

theorem output80_eq : InitECandidate.Proofs.DeadStages808.Parallel.output80 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1923 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output80_def]
  simp only [output79_eq, output78_eq]
  kernel_rfl

theorem input81_eq : InitECandidate.Proofs.DeadStages808.Parallel.input81 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2379 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input81_def]
  kernel_rfl

theorem output81_eq : InitECandidate.Proofs.DeadStages808.Parallel.output81 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1919 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output81_def]
  kernel_rfl

theorem input82_eq : InitECandidate.Proofs.DeadStages808.Parallel.input82 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2376 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input82_def]
  kernel_rfl

theorem output82_eq : InitECandidate.Proofs.DeadStages808.Parallel.output82 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1916 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output82_def]
  kernel_rfl

theorem input83_eq : InitECandidate.Proofs.DeadStages808.Parallel.input83 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2375 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input83_def]
  kernel_rfl

theorem output83_eq : InitECandidate.Proofs.DeadStages808.Parallel.output83 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1915 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output83_def]
  kernel_rfl

theorem input84_eq : InitECandidate.Proofs.DeadStages808.Parallel.input84 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2377 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input84_def]
  simp only [input83_eq, input82_eq]
  kernel_rfl

theorem output84_eq : InitECandidate.Proofs.DeadStages808.Parallel.output84 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1917 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output84_def]
  simp only [output83_eq, output82_eq]
  kernel_rfl

theorem input85_eq : InitECandidate.Proofs.DeadStages808.Parallel.input85 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2373 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input85_def]
  kernel_rfl

theorem output85_eq : InitECandidate.Proofs.DeadStages808.Parallel.output85 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1913 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output85_def]
  kernel_rfl

theorem input86_eq : InitECandidate.Proofs.DeadStages808.Parallel.input86 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2370 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input86_def]
  kernel_rfl

theorem output86_eq : InitECandidate.Proofs.DeadStages808.Parallel.output86 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1910 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output86_def]
  kernel_rfl

theorem input87_eq : InitECandidate.Proofs.DeadStages808.Parallel.input87 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2369 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input87_def]
  kernel_rfl

theorem output87_eq : InitECandidate.Proofs.DeadStages808.Parallel.output87 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1909 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output87_def]
  kernel_rfl

theorem input88_eq : InitECandidate.Proofs.DeadStages808.Parallel.input88 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2371 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input88_def]
  simp only [input87_eq, input86_eq]
  kernel_rfl

theorem output88_eq : InitECandidate.Proofs.DeadStages808.Parallel.output88 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1911 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output88_def]
  simp only [output87_eq, output86_eq]
  kernel_rfl

theorem input89_eq : InitECandidate.Proofs.DeadStages808.Parallel.input89 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2367 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input89_def]
  kernel_rfl

theorem output89_eq : InitECandidate.Proofs.DeadStages808.Parallel.output89 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1907 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output89_def]
  kernel_rfl

theorem input90_eq : InitECandidate.Proofs.DeadStages808.Parallel.input90 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2364 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input90_def]
  kernel_rfl

theorem output90_eq : InitECandidate.Proofs.DeadStages808.Parallel.output90 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1904 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output90_def]
  kernel_rfl

theorem input91_eq : InitECandidate.Proofs.DeadStages808.Parallel.input91 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2363 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input91_def]
  kernel_rfl

theorem output91_eq : InitECandidate.Proofs.DeadStages808.Parallel.output91 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1903 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output91_def]
  kernel_rfl

theorem input92_eq : InitECandidate.Proofs.DeadStages808.Parallel.input92 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2365 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input92_def]
  simp only [input91_eq, input90_eq]
  kernel_rfl

theorem output92_eq : InitECandidate.Proofs.DeadStages808.Parallel.output92 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1905 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output92_def]
  simp only [output91_eq, output90_eq]
  kernel_rfl

theorem input93_eq : InitECandidate.Proofs.DeadStages808.Parallel.input93 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2361 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input93_def]
  kernel_rfl

theorem output93_eq : InitECandidate.Proofs.DeadStages808.Parallel.output93 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1901 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output93_def]
  kernel_rfl

theorem input94_eq : InitECandidate.Proofs.DeadStages808.Parallel.input94 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2359 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input94_def]
  kernel_rfl

theorem output94_eq : InitECandidate.Proofs.DeadStages808.Parallel.output94 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1899 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output94_def]
  kernel_rfl

theorem input95_eq : InitECandidate.Proofs.DeadStages808.Parallel.input95 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2357 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input95_def]
  kernel_rfl

theorem output95_eq : InitECandidate.Proofs.DeadStages808.Parallel.output95 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1897 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output95_def]
  kernel_rfl

theorem input96_eq : InitECandidate.Proofs.DeadStages808.Parallel.input96 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2355 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input96_def]
  kernel_rfl

theorem output96_eq : InitECandidate.Proofs.DeadStages808.Parallel.output96 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1895 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output96_def]
  kernel_rfl

theorem input97_eq : InitECandidate.Proofs.DeadStages808.Parallel.input97 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2353 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input97_def]
  kernel_rfl

theorem output97_eq : InitECandidate.Proofs.DeadStages808.Parallel.output97 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1893 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output97_def]
  kernel_rfl

theorem input98_eq : InitECandidate.Proofs.DeadStages808.Parallel.input98 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2351 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input98_def]
  kernel_rfl

theorem output98_eq : InitECandidate.Proofs.DeadStages808.Parallel.output98 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1891 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output98_def]
  kernel_rfl

theorem input99_eq : InitECandidate.Proofs.DeadStages808.Parallel.input99 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2349 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input99_def]
  kernel_rfl

theorem output99_eq : InitECandidate.Proofs.DeadStages808.Parallel.output99 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1889 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output99_def]
  kernel_rfl

theorem input100_eq : InitECandidate.Proofs.DeadStages808.Parallel.input100 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2347 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input100_def]
  kernel_rfl

theorem output100_eq : InitECandidate.Proofs.DeadStages808.Parallel.output100 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1887 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output100_def]
  kernel_rfl

theorem input101_eq : InitECandidate.Proofs.DeadStages808.Parallel.input101 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input101_def]
  kernel_rfl

theorem output101_eq : InitECandidate.Proofs.DeadStages808.Parallel.output101 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output101_def]
  kernel_rfl

theorem input102_eq : InitECandidate.Proofs.DeadStages808.Parallel.input102 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2342 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input102_def]
  kernel_rfl

theorem output102_eq : InitECandidate.Proofs.DeadStages808.Parallel.output102 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1882 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output102_def]
  kernel_rfl

theorem input103_eq : InitECandidate.Proofs.DeadStages808.Parallel.input103 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2300 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input103_def]
  kernel_rfl

theorem output103_eq : InitECandidate.Proofs.DeadStages808.Parallel.output103 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1849 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output103_def]
  kernel_rfl

theorem input104_eq : InitECandidate.Proofs.DeadStages808.Parallel.input104 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2343 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input104_def]
  simp only [input103_eq, input102_eq]
  kernel_rfl

theorem output104_eq : InitECandidate.Proofs.DeadStages808.Parallel.output104 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1883 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output104_def]
  simp only [output103_eq, output102_eq]
  kernel_rfl

theorem input105_eq : InitECandidate.Proofs.DeadStages808.Parallel.input105 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2299 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input105_def]
  kernel_rfl

theorem output105_eq : InitECandidate.Proofs.DeadStages808.Parallel.output105 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1848 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output105_def]
  kernel_rfl

theorem input106_eq : InitECandidate.Proofs.DeadStages808.Parallel.input106 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2344 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input106_def]
  simp only [input105_eq, input104_eq]
  kernel_rfl

theorem output106_eq : InitECandidate.Proofs.DeadStages808.Parallel.output106 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1884 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output106_def]
  simp only [output105_eq, output104_eq]
  kernel_rfl

theorem input107_eq : InitECandidate.Proofs.DeadStages808.Parallel.input107 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2297 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input107_def]
  kernel_rfl

theorem output107_eq : InitECandidate.Proofs.DeadStages808.Parallel.output107 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1846 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output107_def]
  kernel_rfl

theorem input108_eq : InitECandidate.Proofs.DeadStages808.Parallel.input108 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2295 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input108_def]
  kernel_rfl

theorem output108_eq : InitECandidate.Proofs.DeadStages808.Parallel.output108 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1844 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output108_def]
  kernel_rfl

theorem input109_eq : InitECandidate.Proofs.DeadStages808.Parallel.input109 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2293 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input109_def]
  kernel_rfl

theorem output109_eq : InitECandidate.Proofs.DeadStages808.Parallel.output109 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1842 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output109_def]
  kernel_rfl

theorem input110_eq : InitECandidate.Proofs.DeadStages808.Parallel.input110 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2291 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input110_def]
  kernel_rfl

theorem output110_eq : InitECandidate.Proofs.DeadStages808.Parallel.output110 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1840 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output110_def]
  kernel_rfl

theorem input111_eq : InitECandidate.Proofs.DeadStages808.Parallel.input111 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2289 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input111_def]
  kernel_rfl

theorem output111_eq : InitECandidate.Proofs.DeadStages808.Parallel.output111 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1838 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output111_def]
  kernel_rfl

theorem input112_eq : InitECandidate.Proofs.DeadStages808.Parallel.input112 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2287 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input112_def]
  kernel_rfl

theorem output112_eq : InitECandidate.Proofs.DeadStages808.Parallel.output112 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1836 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output112_def]
  kernel_rfl

theorem input113_eq : InitECandidate.Proofs.DeadStages808.Parallel.input113 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2285 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input113_def]
  kernel_rfl

theorem output113_eq : InitECandidate.Proofs.DeadStages808.Parallel.output113 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1834 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output113_def]
  kernel_rfl

theorem input114_eq : InitECandidate.Proofs.DeadStages808.Parallel.input114 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2283 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input114_def]
  kernel_rfl

theorem output114_eq : InitECandidate.Proofs.DeadStages808.Parallel.output114 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1832 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output114_def]
  kernel_rfl

theorem input115_eq : InitECandidate.Proofs.DeadStages808.Parallel.input115 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2281 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input115_def]
  kernel_rfl

theorem output115_eq : InitECandidate.Proofs.DeadStages808.Parallel.output115 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1830 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output115_def]
  kernel_rfl

theorem input116_eq : InitECandidate.Proofs.DeadStages808.Parallel.input116 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2279 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input116_def]
  kernel_rfl

theorem output116_eq : InitECandidate.Proofs.DeadStages808.Parallel.output116 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1828 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output116_def]
  kernel_rfl

theorem input117_eq : InitECandidate.Proofs.DeadStages808.Parallel.input117 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2277 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input117_def]
  kernel_rfl

theorem output117_eq : InitECandidate.Proofs.DeadStages808.Parallel.output117 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1826 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output117_def]
  kernel_rfl

theorem input118_eq : InitECandidate.Proofs.DeadStages808.Parallel.input118 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2275 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input118_def]
  kernel_rfl

theorem output118_eq : InitECandidate.Proofs.DeadStages808.Parallel.output118 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1824 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output118_def]
  kernel_rfl

theorem input119_eq : InitECandidate.Proofs.DeadStages808.Parallel.input119 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input119_def]
  kernel_rfl

theorem output119_eq : InitECandidate.Proofs.DeadStages808.Parallel.output119 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output119_def]
  kernel_rfl

theorem input120_eq : InitECandidate.Proofs.DeadStages808.Parallel.input120 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2251 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input120_def]
  kernel_rfl

theorem input121_eq : InitECandidate.Proofs.DeadStages808.Parallel.input121 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2249 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input121_def]
  kernel_rfl

theorem input122_eq : InitECandidate.Proofs.DeadStages808.Parallel.input122 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2247 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input122_def]
  kernel_rfl

theorem input123_eq : InitECandidate.Proofs.DeadStages808.Parallel.input123 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2245 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input123_def]
  kernel_rfl

theorem input124_eq : InitECandidate.Proofs.DeadStages808.Parallel.input124 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2243 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input124_def]
  kernel_rfl

theorem input125_eq : InitECandidate.Proofs.DeadStages808.Parallel.input125 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_196 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input125_def]
  kernel_rfl

theorem input126_eq : InitECandidate.Proofs.DeadStages808.Parallel.input126 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2244 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input126_def]
  simp only [input125_eq, input124_eq]
  kernel_rfl

theorem input127_eq : InitECandidate.Proofs.DeadStages808.Parallel.input127 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2246 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input127_def]
  simp only [input126_eq, input123_eq]
  kernel_rfl

theorem input128_eq : InitECandidate.Proofs.DeadStages808.Parallel.input128 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2248 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input128_def]
  simp only [input127_eq, input122_eq]
  kernel_rfl

theorem input129_eq : InitECandidate.Proofs.DeadStages808.Parallel.input129 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2250 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input129_def]
  simp only [input128_eq, input121_eq]
  kernel_rfl

theorem input130_eq : InitECandidate.Proofs.DeadStages808.Parallel.input130 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2252 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input130_def]
  simp only [input129_eq, input120_eq]
  kernel_rfl

theorem input131_eq : InitECandidate.Proofs.DeadStages808.Parallel.input131 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input131_def]
  kernel_rfl

theorem output131_eq : InitECandidate.Proofs.DeadStages808.Parallel.output131 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1817 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output131_def]
  kernel_rfl

theorem input132_eq : InitECandidate.Proofs.DeadStages808.Parallel.input132 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2253 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input132_def]
  simp only [input131_eq, input130_eq]
  kernel_rfl

theorem output132_eq : InitECandidate.Proofs.DeadStages808.Parallel.output132 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1817 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output132_def]
  simp only [output131_eq]

theorem input133_eq : InitECandidate.Proofs.DeadStages808.Parallel.input133 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input133_def]
  kernel_rfl

theorem output133_eq : InitECandidate.Proofs.DeadStages808.Parallel.output133 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output133_def]
  kernel_rfl

theorem input134_eq : InitECandidate.Proofs.DeadStages808.Parallel.input134 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2237 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input134_def]
  kernel_rfl

theorem output134_eq : InitECandidate.Proofs.DeadStages808.Parallel.output134 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1812 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output134_def]
  kernel_rfl

theorem input135_eq : InitECandidate.Proofs.DeadStages808.Parallel.input135 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2195 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input135_def]
  kernel_rfl

theorem output135_eq : InitECandidate.Proofs.DeadStages808.Parallel.output135 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1779 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output135_def]
  kernel_rfl

theorem input136_eq : InitECandidate.Proofs.DeadStages808.Parallel.input136 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2238 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input136_def]
  simp only [input135_eq, input134_eq]
  kernel_rfl

theorem output136_eq : InitECandidate.Proofs.DeadStages808.Parallel.output136 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1813 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output136_def]
  simp only [output135_eq, output134_eq]
  kernel_rfl

theorem input137_eq : InitECandidate.Proofs.DeadStages808.Parallel.input137 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2194 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input137_def]
  kernel_rfl

theorem output137_eq : InitECandidate.Proofs.DeadStages808.Parallel.output137 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1778 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output137_def]
  kernel_rfl

theorem input138_eq : InitECandidate.Proofs.DeadStages808.Parallel.input138 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2239 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input138_def]
  simp only [input137_eq, input136_eq]
  kernel_rfl

theorem output138_eq : InitECandidate.Proofs.DeadStages808.Parallel.output138 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1814 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output138_def]
  simp only [output137_eq, output136_eq]
  kernel_rfl

theorem input139_eq : InitECandidate.Proofs.DeadStages808.Parallel.input139 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2192 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input139_def]
  kernel_rfl

theorem output139_eq : InitECandidate.Proofs.DeadStages808.Parallel.output139 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1776 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output139_def]
  kernel_rfl

theorem input140_eq : InitECandidate.Proofs.DeadStages808.Parallel.input140 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2190 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input140_def]
  kernel_rfl

theorem output140_eq : InitECandidate.Proofs.DeadStages808.Parallel.output140 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1774 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output140_def]
  kernel_rfl

theorem input141_eq : InitECandidate.Proofs.DeadStages808.Parallel.input141 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2188 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input141_def]
  kernel_rfl

theorem output141_eq : InitECandidate.Proofs.DeadStages808.Parallel.output141 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1772 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output141_def]
  kernel_rfl

theorem input142_eq : InitECandidate.Proofs.DeadStages808.Parallel.input142 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2186 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input142_def]
  kernel_rfl

theorem output142_eq : InitECandidate.Proofs.DeadStages808.Parallel.output142 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1770 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output142_def]
  kernel_rfl

theorem input143_eq : InitECandidate.Proofs.DeadStages808.Parallel.input143 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2184 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input143_def]
  kernel_rfl

theorem output143_eq : InitECandidate.Proofs.DeadStages808.Parallel.output143 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1768 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output143_def]
  kernel_rfl

theorem input144_eq : InitECandidate.Proofs.DeadStages808.Parallel.input144 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2182 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input144_def]
  kernel_rfl

theorem output144_eq : InitECandidate.Proofs.DeadStages808.Parallel.output144 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1766 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output144_def]
  kernel_rfl

theorem input145_eq : InitECandidate.Proofs.DeadStages808.Parallel.input145 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2180 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input145_def]
  kernel_rfl

theorem input146_eq : InitECandidate.Proofs.DeadStages808.Parallel.input146 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input146_def]
  kernel_rfl

theorem output146_eq : InitECandidate.Proofs.DeadStages808.Parallel.output146 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output146_def]
  kernel_rfl

theorem input147_eq : InitECandidate.Proofs.DeadStages808.Parallel.input147 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2178 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input147_def]
  kernel_rfl

theorem input148_eq : InitECandidate.Proofs.DeadStages808.Parallel.input148 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2179 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input148_def]
  simp only [input147_eq, input146_eq]
  kernel_rfl

theorem output148_eq : InitECandidate.Proofs.DeadStages808.Parallel.output148 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output148_def]
  simp only [output146_eq]

theorem input149_eq : InitECandidate.Proofs.DeadStages808.Parallel.input149 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2181 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input149_def]
  simp only [input148_eq, input145_eq]
  kernel_rfl

theorem output149_eq : InitECandidate.Proofs.DeadStages808.Parallel.output149 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output149_def]
  simp only [output148_eq]

theorem input150_eq : InitECandidate.Proofs.DeadStages808.Parallel.input150 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2183 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input150_def]
  simp only [input149_eq, input144_eq]
  kernel_rfl

theorem output150_eq : InitECandidate.Proofs.DeadStages808.Parallel.output150 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1767 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output150_def]
  simp only [output149_eq, output144_eq]
  kernel_rfl

theorem input151_eq : InitECandidate.Proofs.DeadStages808.Parallel.input151 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2185 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input151_def]
  simp only [input150_eq, input143_eq]
  kernel_rfl

theorem output151_eq : InitECandidate.Proofs.DeadStages808.Parallel.output151 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1769 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output151_def]
  simp only [output150_eq, output143_eq]
  kernel_rfl

theorem input152_eq : InitECandidate.Proofs.DeadStages808.Parallel.input152 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2187 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input152_def]
  simp only [input151_eq, input142_eq]
  kernel_rfl

theorem output152_eq : InitECandidate.Proofs.DeadStages808.Parallel.output152 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1771 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output152_def]
  simp only [output151_eq, output142_eq]
  kernel_rfl

theorem input153_eq : InitECandidate.Proofs.DeadStages808.Parallel.input153 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2189 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input153_def]
  simp only [input152_eq, input141_eq]
  kernel_rfl

theorem output153_eq : InitECandidate.Proofs.DeadStages808.Parallel.output153 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1773 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output153_def]
  simp only [output152_eq, output141_eq]
  kernel_rfl

theorem input154_eq : InitECandidate.Proofs.DeadStages808.Parallel.input154 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2191 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input154_def]
  simp only [input153_eq, input140_eq]
  kernel_rfl

theorem output154_eq : InitECandidate.Proofs.DeadStages808.Parallel.output154 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1775 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output154_def]
  simp only [output153_eq, output140_eq]
  kernel_rfl

theorem input155_eq : InitECandidate.Proofs.DeadStages808.Parallel.input155 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2193 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input155_def]
  simp only [input154_eq, input139_eq]
  kernel_rfl

theorem output155_eq : InitECandidate.Proofs.DeadStages808.Parallel.output155 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1777 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output155_def]
  simp only [output154_eq, output139_eq]
  kernel_rfl

theorem input156_eq : InitECandidate.Proofs.DeadStages808.Parallel.input156 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2240 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input156_def]
  simp only [input155_eq, input138_eq]
  kernel_rfl

theorem output156_eq : InitECandidate.Proofs.DeadStages808.Parallel.output156 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1815 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output156_def]
  simp only [output155_eq, output138_eq]
  kernel_rfl

theorem input157_eq : InitECandidate.Proofs.DeadStages808.Parallel.input157 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2241 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input157_def]
  simp only [input156_eq, input133_eq]
  kernel_rfl

theorem output157_eq : InitECandidate.Proofs.DeadStages808.Parallel.output157 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1816 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output157_def]
  simp only [output156_eq, output133_eq]
  kernel_rfl

theorem input158_eq : InitECandidate.Proofs.DeadStages808.Parallel.input158 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2254 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input158_def]
  simp only [input157_eq, input132_eq]
  kernel_rfl

theorem output158_eq : InitECandidate.Proofs.DeadStages808.Parallel.output158 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1818 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output158_def]
  simp only [output157_eq, output132_eq]
  kernel_rfl

theorem input159_eq : InitECandidate.Proofs.DeadStages808.Parallel.input159 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2268 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input159_def]
  kernel_rfl

theorem input160_eq : InitECandidate.Proofs.DeadStages808.Parallel.input160 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2266 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input160_def]
  kernel_rfl

theorem input161_eq : InitECandidate.Proofs.DeadStages808.Parallel.input161 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2264 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input161_def]
  kernel_rfl

theorem input162_eq : InitECandidate.Proofs.DeadStages808.Parallel.input162 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2262 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input162_def]
  kernel_rfl

theorem input163_eq : InitECandidate.Proofs.DeadStages808.Parallel.input163 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2260 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input163_def]
  kernel_rfl

theorem input164_eq : InitECandidate.Proofs.DeadStages808.Parallel.input164 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_196 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input164_def]
  kernel_rfl

theorem input165_eq : InitECandidate.Proofs.DeadStages808.Parallel.input165 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2261 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input165_def]
  simp only [input164_eq, input163_eq]
  kernel_rfl

theorem input166_eq : InitECandidate.Proofs.DeadStages808.Parallel.input166 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2263 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input166_def]
  simp only [input165_eq, input162_eq]
  kernel_rfl

theorem input167_eq : InitECandidate.Proofs.DeadStages808.Parallel.input167 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2265 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input167_def]
  simp only [input166_eq, input161_eq]
  kernel_rfl

theorem input168_eq : InitECandidate.Proofs.DeadStages808.Parallel.input168 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2267 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input168_def]
  simp only [input167_eq, input160_eq]
  kernel_rfl

theorem input169_eq : InitECandidate.Proofs.DeadStages808.Parallel.input169 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2269 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input169_def]
  simp only [input168_eq, input159_eq]
  kernel_rfl

theorem input170_eq : InitECandidate.Proofs.DeadStages808.Parallel.input170 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2259 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input170_def]
  kernel_rfl

theorem output170_eq : InitECandidate.Proofs.DeadStages808.Parallel.output170 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1819 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output170_def]
  kernel_rfl

theorem input171_eq : InitECandidate.Proofs.DeadStages808.Parallel.input171 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2270 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input171_def]
  simp only [input170_eq, input169_eq]
  kernel_rfl

theorem output171_eq : InitECandidate.Proofs.DeadStages808.Parallel.output171 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1819 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output171_def]
  simp only [output170_eq]

theorem input172_eq : InitECandidate.Proofs.DeadStages808.Parallel.input172 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2257 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input172_def]
  kernel_rfl

theorem input173_eq : InitECandidate.Proofs.DeadStages808.Parallel.input173 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input173_def]
  kernel_rfl

theorem output173_eq : InitECandidate.Proofs.DeadStages808.Parallel.output173 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output173_def]
  kernel_rfl

theorem input174_eq : InitECandidate.Proofs.DeadStages808.Parallel.input174 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2255 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input174_def]
  kernel_rfl

theorem input175_eq : InitECandidate.Proofs.DeadStages808.Parallel.input175 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2256 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input175_def]
  simp only [input174_eq, input173_eq]
  kernel_rfl

theorem output175_eq : InitECandidate.Proofs.DeadStages808.Parallel.output175 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output175_def]
  simp only [output173_eq]

theorem input176_eq : InitECandidate.Proofs.DeadStages808.Parallel.input176 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2258 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input176_def]
  simp only [input175_eq, input172_eq]
  kernel_rfl

theorem output176_eq : InitECandidate.Proofs.DeadStages808.Parallel.output176 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output176_def]
  simp only [output175_eq]

theorem input177_eq : InitECandidate.Proofs.DeadStages808.Parallel.input177 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2271 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input177_def]
  simp only [input176_eq, input171_eq]
  kernel_rfl

theorem output177_eq : InitECandidate.Proofs.DeadStages808.Parallel.output177 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1820 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output177_def]
  simp only [output176_eq, output171_eq]
  kernel_rfl

theorem input178_eq : InitECandidate.Proofs.DeadStages808.Parallel.input178 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2272 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input178_def]
  simp only [input158_eq, input177_eq]
  kernel_rfl

theorem output178_eq : InitECandidate.Proofs.DeadStages808.Parallel.output178 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1821 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output178_def]
  simp only [output158_eq, output177_eq]
  kernel_rfl

theorem input179_eq : InitECandidate.Proofs.DeadStages808.Parallel.input179 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2176 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input179_def]
  kernel_rfl

theorem output179_eq : InitECandidate.Proofs.DeadStages808.Parallel.output179 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1764 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output179_def]
  kernel_rfl

theorem input180_eq : InitECandidate.Proofs.DeadStages808.Parallel.input180 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2174 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input180_def]
  kernel_rfl

theorem output180_eq : InitECandidate.Proofs.DeadStages808.Parallel.output180 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1762 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output180_def]
  kernel_rfl

theorem input181_eq : InitECandidate.Proofs.DeadStages808.Parallel.input181 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input181_def]
  kernel_rfl

theorem output181_eq : InitECandidate.Proofs.DeadStages808.Parallel.output181 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output181_def]
  kernel_rfl

theorem input182_eq : InitECandidate.Proofs.DeadStages808.Parallel.input182 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2169 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input182_def]
  kernel_rfl

theorem output182_eq : InitECandidate.Proofs.DeadStages808.Parallel.output182 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1757 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output182_def]
  kernel_rfl

theorem input183_eq : InitECandidate.Proofs.DeadStages808.Parallel.input183 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2147 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input183_def]
  kernel_rfl

theorem output183_eq : InitECandidate.Proofs.DeadStages808.Parallel.output183 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1744 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output183_def]
  kernel_rfl

theorem input184_eq : InitECandidate.Proofs.DeadStages808.Parallel.input184 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2170 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input184_def]
  simp only [input183_eq, input182_eq]
  kernel_rfl

theorem output184_eq : InitECandidate.Proofs.DeadStages808.Parallel.output184 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1758 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output184_def]
  simp only [output183_eq, output182_eq]
  kernel_rfl

theorem input185_eq : InitECandidate.Proofs.DeadStages808.Parallel.input185 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2146 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input185_def]
  kernel_rfl

theorem output185_eq : InitECandidate.Proofs.DeadStages808.Parallel.output185 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1743 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output185_def]
  kernel_rfl

theorem input186_eq : InitECandidate.Proofs.DeadStages808.Parallel.input186 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2171 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input186_def]
  simp only [input185_eq, input184_eq]
  kernel_rfl

theorem output186_eq : InitECandidate.Proofs.DeadStages808.Parallel.output186 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1759 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output186_def]
  simp only [output185_eq, output184_eq]
  kernel_rfl

theorem input187_eq : InitECandidate.Proofs.DeadStages808.Parallel.input187 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2144 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input187_def]
  kernel_rfl

theorem output187_eq : InitECandidate.Proofs.DeadStages808.Parallel.output187 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1741 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output187_def]
  kernel_rfl

theorem input188_eq : InitECandidate.Proofs.DeadStages808.Parallel.input188 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2142 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input188_def]
  kernel_rfl

theorem output188_eq : InitECandidate.Proofs.DeadStages808.Parallel.output188 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1739 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output188_def]
  kernel_rfl

theorem input189_eq : InitECandidate.Proofs.DeadStages808.Parallel.input189 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2140 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input189_def]
  kernel_rfl

theorem output189_eq : InitECandidate.Proofs.DeadStages808.Parallel.output189 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1737 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output189_def]
  kernel_rfl

theorem input190_eq : InitECandidate.Proofs.DeadStages808.Parallel.input190 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2138 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input190_def]
  kernel_rfl

theorem output190_eq : InitECandidate.Proofs.DeadStages808.Parallel.output190 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1735 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output190_def]
  kernel_rfl

theorem input191_eq : InitECandidate.Proofs.DeadStages808.Parallel.input191 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2136 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input191_def]
  kernel_rfl

theorem output191_eq : InitECandidate.Proofs.DeadStages808.Parallel.output191 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1733 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output191_def]
  kernel_rfl

theorem input192_eq : InitECandidate.Proofs.DeadStages808.Parallel.input192 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2134 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input192_def]
  kernel_rfl

theorem output192_eq : InitECandidate.Proofs.DeadStages808.Parallel.output192 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1731 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output192_def]
  kernel_rfl

theorem input193_eq : InitECandidate.Proofs.DeadStages808.Parallel.input193 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input193_def]
  kernel_rfl

theorem output193_eq : InitECandidate.Proofs.DeadStages808.Parallel.output193 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output193_def]
  kernel_rfl

theorem input194_eq : InitECandidate.Proofs.DeadStages808.Parallel.input194 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2129 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input194_def]
  kernel_rfl

theorem output194_eq : InitECandidate.Proofs.DeadStages808.Parallel.output194 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1726 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output194_def]
  kernel_rfl

theorem input195_eq : InitECandidate.Proofs.DeadStages808.Parallel.input195 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2107 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input195_def]
  kernel_rfl

theorem output195_eq : InitECandidate.Proofs.DeadStages808.Parallel.output195 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1713 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output195_def]
  kernel_rfl

theorem input196_eq : InitECandidate.Proofs.DeadStages808.Parallel.input196 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2130 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input196_def]
  simp only [input195_eq, input194_eq]
  kernel_rfl

theorem output196_eq : InitECandidate.Proofs.DeadStages808.Parallel.output196 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1727 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output196_def]
  simp only [output195_eq, output194_eq]
  kernel_rfl

theorem input197_eq : InitECandidate.Proofs.DeadStages808.Parallel.input197 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2106 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input197_def]
  kernel_rfl

theorem output197_eq : InitECandidate.Proofs.DeadStages808.Parallel.output197 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1712 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output197_def]
  kernel_rfl

theorem input198_eq : InitECandidate.Proofs.DeadStages808.Parallel.input198 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2131 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input198_def]
  simp only [input197_eq, input196_eq]
  kernel_rfl

theorem output198_eq : InitECandidate.Proofs.DeadStages808.Parallel.output198 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1728 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output198_def]
  simp only [output197_eq, output196_eq]
  kernel_rfl

theorem input199_eq : InitECandidate.Proofs.DeadStages808.Parallel.input199 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2104 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input199_def]
  kernel_rfl

theorem output199_eq : InitECandidate.Proofs.DeadStages808.Parallel.output199 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1710 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output199_def]
  kernel_rfl

theorem input200_eq : InitECandidate.Proofs.DeadStages808.Parallel.input200 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2102 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input200_def]
  kernel_rfl

theorem output200_eq : InitECandidate.Proofs.DeadStages808.Parallel.output200 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1708 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output200_def]
  kernel_rfl

theorem input201_eq : InitECandidate.Proofs.DeadStages808.Parallel.input201 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2100 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input201_def]
  kernel_rfl

theorem output201_eq : InitECandidate.Proofs.DeadStages808.Parallel.output201 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1706 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output201_def]
  kernel_rfl

theorem input202_eq : InitECandidate.Proofs.DeadStages808.Parallel.input202 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2098 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input202_def]
  kernel_rfl

theorem output202_eq : InitECandidate.Proofs.DeadStages808.Parallel.output202 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1704 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output202_def]
  kernel_rfl

theorem input203_eq : InitECandidate.Proofs.DeadStages808.Parallel.input203 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2096 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input203_def]
  kernel_rfl

theorem output203_eq : InitECandidate.Proofs.DeadStages808.Parallel.output203 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1702 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output203_def]
  kernel_rfl

theorem input204_eq : InitECandidate.Proofs.DeadStages808.Parallel.input204 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2094 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input204_def]
  kernel_rfl

theorem output204_eq : InitECandidate.Proofs.DeadStages808.Parallel.output204 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1700 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output204_def]
  kernel_rfl

theorem input205_eq : InitECandidate.Proofs.DeadStages808.Parallel.input205 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input205_def]
  kernel_rfl

theorem output205_eq : InitECandidate.Proofs.DeadStages808.Parallel.output205 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output205_def]
  kernel_rfl

theorem input206_eq : InitECandidate.Proofs.DeadStages808.Parallel.input206 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2034 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input206_def]
  kernel_rfl

theorem input207_eq : InitECandidate.Proofs.DeadStages808.Parallel.input207 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2032 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input207_def]
  kernel_rfl

theorem input208_eq : InitECandidate.Proofs.DeadStages808.Parallel.input208 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2030 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input208_def]
  kernel_rfl

theorem input209_eq : InitECandidate.Proofs.DeadStages808.Parallel.input209 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2028 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input209_def]
  kernel_rfl

theorem input210_eq : InitECandidate.Proofs.DeadStages808.Parallel.input210 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2026 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input210_def]
  kernel_rfl

theorem input211_eq : InitECandidate.Proofs.DeadStages808.Parallel.input211 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2024 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input211_def]
  kernel_rfl

theorem input212_eq : InitECandidate.Proofs.DeadStages808.Parallel.input212 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2022 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input212_def]
  kernel_rfl

theorem input213_eq : InitECandidate.Proofs.DeadStages808.Parallel.input213 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2020 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input213_def]
  kernel_rfl

theorem input214_eq : InitECandidate.Proofs.DeadStages808.Parallel.input214 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2018 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input214_def]
  kernel_rfl

theorem input215_eq : InitECandidate.Proofs.DeadStages808.Parallel.input215 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2016 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input215_def]
  kernel_rfl

theorem input216_eq : InitECandidate.Proofs.DeadStages808.Parallel.input216 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2014 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input216_def]
  kernel_rfl

theorem input217_eq : InitECandidate.Proofs.DeadStages808.Parallel.input217 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2012 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input217_def]
  kernel_rfl

theorem input218_eq : InitECandidate.Proofs.DeadStages808.Parallel.input218 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2010 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input218_def]
  kernel_rfl

theorem input219_eq : InitECandidate.Proofs.DeadStages808.Parallel.input219 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2008 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input219_def]
  kernel_rfl

theorem input220_eq : InitECandidate.Proofs.DeadStages808.Parallel.input220 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2006 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input220_def]
  kernel_rfl

theorem input221_eq : InitECandidate.Proofs.DeadStages808.Parallel.input221 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2004 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input221_def]
  kernel_rfl

theorem input222_eq : InitECandidate.Proofs.DeadStages808.Parallel.input222 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2002 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input222_def]
  kernel_rfl

theorem input223_eq : InitECandidate.Proofs.DeadStages808.Parallel.input223 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2000 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input223_def]
  kernel_rfl

theorem input224_eq : InitECandidate.Proofs.DeadStages808.Parallel.input224 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1998 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input224_def]
  kernel_rfl

theorem input225_eq : InitECandidate.Proofs.DeadStages808.Parallel.input225 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1996 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input225_def]
  kernel_rfl

theorem input226_eq : InitECandidate.Proofs.DeadStages808.Parallel.input226 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1994 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input226_def]
  kernel_rfl

theorem input227_eq : InitECandidate.Proofs.DeadStages808.Parallel.input227 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1992 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input227_def]
  kernel_rfl

theorem input228_eq : InitECandidate.Proofs.DeadStages808.Parallel.input228 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1990 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input228_def]
  kernel_rfl

theorem input229_eq : InitECandidate.Proofs.DeadStages808.Parallel.input229 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_196 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input229_def]
  kernel_rfl

theorem input230_eq : InitECandidate.Proofs.DeadStages808.Parallel.input230 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1991 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input230_def]
  simp only [input229_eq, input228_eq]
  kernel_rfl

theorem input231_eq : InitECandidate.Proofs.DeadStages808.Parallel.input231 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1993 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input231_def]
  simp only [input230_eq, input227_eq]
  kernel_rfl

theorem input232_eq : InitECandidate.Proofs.DeadStages808.Parallel.input232 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1995 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input232_def]
  simp only [input231_eq, input226_eq]
  kernel_rfl

theorem input233_eq : InitECandidate.Proofs.DeadStages808.Parallel.input233 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1997 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input233_def]
  simp only [input232_eq, input225_eq]
  kernel_rfl

theorem input234_eq : InitECandidate.Proofs.DeadStages808.Parallel.input234 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1999 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input234_def]
  simp only [input233_eq, input224_eq]
  kernel_rfl

theorem input235_eq : InitECandidate.Proofs.DeadStages808.Parallel.input235 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2001 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input235_def]
  simp only [input234_eq, input223_eq]
  kernel_rfl

theorem input236_eq : InitECandidate.Proofs.DeadStages808.Parallel.input236 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2003 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input236_def]
  simp only [input235_eq, input222_eq]
  kernel_rfl

theorem input237_eq : InitECandidate.Proofs.DeadStages808.Parallel.input237 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2005 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input237_def]
  simp only [input236_eq, input221_eq]
  kernel_rfl

theorem input238_eq : InitECandidate.Proofs.DeadStages808.Parallel.input238 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2007 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input238_def]
  simp only [input237_eq, input220_eq]
  kernel_rfl

theorem input239_eq : InitECandidate.Proofs.DeadStages808.Parallel.input239 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2009 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input239_def]
  simp only [input238_eq, input219_eq]
  kernel_rfl

theorem input240_eq : InitECandidate.Proofs.DeadStages808.Parallel.input240 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2011 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input240_def]
  simp only [input239_eq, input218_eq]
  kernel_rfl

theorem input241_eq : InitECandidate.Proofs.DeadStages808.Parallel.input241 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2013 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input241_def]
  simp only [input240_eq, input217_eq]
  kernel_rfl

theorem input242_eq : InitECandidate.Proofs.DeadStages808.Parallel.input242 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2015 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input242_def]
  simp only [input241_eq, input216_eq]
  kernel_rfl

theorem input243_eq : InitECandidate.Proofs.DeadStages808.Parallel.input243 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2017 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input243_def]
  simp only [input242_eq, input215_eq]
  kernel_rfl

theorem input244_eq : InitECandidate.Proofs.DeadStages808.Parallel.input244 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2019 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input244_def]
  simp only [input243_eq, input214_eq]
  kernel_rfl

theorem input245_eq : InitECandidate.Proofs.DeadStages808.Parallel.input245 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2021 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input245_def]
  simp only [input244_eq, input213_eq]
  kernel_rfl

theorem input246_eq : InitECandidate.Proofs.DeadStages808.Parallel.input246 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2023 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input246_def]
  simp only [input245_eq, input212_eq]
  kernel_rfl

theorem input247_eq : InitECandidate.Proofs.DeadStages808.Parallel.input247 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2025 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input247_def]
  simp only [input246_eq, input211_eq]
  kernel_rfl

theorem input248_eq : InitECandidate.Proofs.DeadStages808.Parallel.input248 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2027 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input248_def]
  simp only [input247_eq, input210_eq]
  kernel_rfl

theorem input249_eq : InitECandidate.Proofs.DeadStages808.Parallel.input249 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2029 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input249_def]
  simp only [input248_eq, input209_eq]
  kernel_rfl

theorem input250_eq : InitECandidate.Proofs.DeadStages808.Parallel.input250 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2031 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input250_def]
  simp only [input249_eq, input208_eq]
  kernel_rfl

theorem input251_eq : InitECandidate.Proofs.DeadStages808.Parallel.input251 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2033 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input251_def]
  simp only [input250_eq, input207_eq]
  kernel_rfl

theorem input252_eq : InitECandidate.Proofs.DeadStages808.Parallel.input252 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2035 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input252_def]
  simp only [input251_eq, input206_eq]
  kernel_rfl

theorem input253_eq : InitECandidate.Proofs.DeadStages808.Parallel.input253 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1989 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input253_def]
  kernel_rfl

theorem output253_eq : InitECandidate.Proofs.DeadStages808.Parallel.output253 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1693 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output253_def]
  kernel_rfl

theorem input254_eq : InitECandidate.Proofs.DeadStages808.Parallel.input254 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2036 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input254_def]
  simp only [input253_eq, input252_eq]
  kernel_rfl

theorem output254_eq : InitECandidate.Proofs.DeadStages808.Parallel.output254 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1693 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output254_def]
  simp only [output253_eq]

theorem input255_eq : InitECandidate.Proofs.DeadStages808.Parallel.input255 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input255_def]
  kernel_rfl

theorem output255_eq : InitECandidate.Proofs.DeadStages808.Parallel.output255 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output255_def]
  kernel_rfl

#print axioms output255_eq
end InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
