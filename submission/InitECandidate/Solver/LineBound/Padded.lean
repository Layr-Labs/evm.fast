import InitECandidate.Proofs.BackendStages.Final
import InitECandidate.Solver.LineBound.ChunkStubs
import InitECandidate.Solver.LineBound.Chunk64_79
import InitECandidate.Solver.LineBound.Chunk80_95
import InitECandidate.Solver.LineBound.Chunk96_111
import InitECandidate.Solver.LineBound.Chunk112_127
import InitECandidate.Solver.LineBound.Chunk128_143
import InitECandidate.Solver.LineBound.Chunk144_159
import InitECandidate.Solver.LineBound.Chunk160_175
import InitECandidate.Solver.LineBound.Chunk176_191
import InitECandidate.Solver.LineBound.Chunk192_207
import InitECandidate.Solver.LineBound.Chunk208_223
import InitECandidate.Solver.LineBound.Chunk224_239
import InitECandidate.Solver.LineBound.Chunk240_255
import InitECandidate.Solver.LineBound.Chunk256_271
import InitECandidate.Solver.LineBound.Chunk272_287
import InitECandidate.Solver.LineBound.Chunk288_303
import InitECandidate.Solver.LineBound.Chunk304_319
import InitECandidate.Solver.LineBound.Chunk320_335
import InitECandidate.Solver.LineBound.Chunk336_351
import InitECandidate.Solver.LineBound.Chunk352_367
import InitECandidate.Solver.LineBound.Chunk368_383
import InitECandidate.Solver.LineBound.Chunk384_399
import InitECandidate.Solver.LineBound.Chunk400_415
import InitECandidate.Solver.LineBound.Chunk416_431
import InitECandidate.Solver.LineBound.Chunk432_447
import InitECandidate.Solver.LineBound.Chunk448_463
import InitECandidate.Solver.LineBound.Chunk464_479
import InitECandidate.Solver.LineBound.Chunk480_495
import InitECandidate.Solver.LineBound.Chunk496_511
import InitECandidate.Solver.LineBound.Chunk512_527
import InitECandidate.Solver.LineBound.Chunk528_543
import InitECandidate.Solver.LineBound.Chunk544_559
import InitECandidate.Solver.LineBound.Chunk560_575
import InitECandidate.Solver.LineBound.Chunk576_591
import InitECandidate.Solver.LineBound.Chunk592_607
import InitECandidate.Solver.LineBound.Chunk608_623
import InitECandidate.Solver.LineBound.Chunk624_639
import InitECandidate.Solver.LineBound.Chunk640_655
import InitECandidate.Solver.LineBound.Chunk656_671
import InitECandidate.Solver.LineBound.Chunk672_687
import InitECandidate.Solver.LineBound.Chunk688_703
import InitECandidate.Solver.LineBound.Chunk704_719
import InitECandidate.Solver.LineBound.Chunk720_735
import InitECandidate.Solver.LineBound.Chunk736_751
import InitECandidate.Solver.LineBound.Chunk752_767
import InitECandidate.Solver.LineBound.Chunk768_783
import InitECandidate.Solver.LineBound.Chunk784_799
import InitECandidate.Solver.LineBound.Chunk800_815
import InitECandidate.Solver.LineBound.Chunk816_831
import InitECandidate.Solver.LineBound.Chunk832_847
import InitECandidate.Solver.LineBound.Chunk848_863
import InitECandidate.Solver.LineBound.Chunk864_877

/-!
# Line-length bound for the baseline's padded target code `Final.padded0`

The baseline assembles its concrete padded `removeLabels` output as
`Final.padded_k := FinalChunkX.padded ++ Final.padded_(k+1)` (`Final.padded52 = []`).
Each `FinalChunkX.padded` is checked in `InitECandidate.Solver.LineBound.ChunkX`; here the
checks are composed along the same chain, giving `LinesBounded 24 Final.padded0`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler.LabToTarget

theorem padded52_bounded : linesBoundedB 24 Final.padded52 = true := rfl
theorem padded51_bounded : linesBoundedB 24 Final.padded51 = true := by
  unfold Final.padded51
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk864_877.bounded padded52_bounded
theorem padded50_bounded : linesBoundedB 24 Final.padded50 = true := by
  unfold Final.padded50
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk848_863.bounded padded51_bounded
theorem padded49_bounded : linesBoundedB 24 Final.padded49 = true := by
  unfold Final.padded49
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk832_847.bounded padded50_bounded
theorem padded48_bounded : linesBoundedB 24 Final.padded48 = true := by
  unfold Final.padded48
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk816_831.bounded padded49_bounded
theorem padded47_bounded : linesBoundedB 24 Final.padded47 = true := by
  unfold Final.padded47
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk800_815.bounded padded48_bounded
theorem padded46_bounded : linesBoundedB 24 Final.padded46 = true := by
  unfold Final.padded46
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk784_799.bounded padded47_bounded
theorem padded45_bounded : linesBoundedB 24 Final.padded45 = true := by
  unfold Final.padded45
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk768_783.bounded padded46_bounded
theorem padded44_bounded : linesBoundedB 24 Final.padded44 = true := by
  unfold Final.padded44
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk752_767.bounded padded45_bounded
theorem padded43_bounded : linesBoundedB 24 Final.padded43 = true := by
  unfold Final.padded43
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk736_751.bounded padded44_bounded
theorem padded42_bounded : linesBoundedB 24 Final.padded42 = true := by
  unfold Final.padded42
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk720_735.bounded padded43_bounded
theorem padded41_bounded : linesBoundedB 24 Final.padded41 = true := by
  unfold Final.padded41
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk704_719.bounded padded42_bounded
theorem padded40_bounded : linesBoundedB 24 Final.padded40 = true := by
  unfold Final.padded40
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk688_703.bounded padded41_bounded
theorem padded39_bounded : linesBoundedB 24 Final.padded39 = true := by
  unfold Final.padded39
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk672_687.bounded padded40_bounded
theorem padded38_bounded : linesBoundedB 24 Final.padded38 = true := by
  unfold Final.padded38
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk656_671.bounded padded39_bounded
theorem padded37_bounded : linesBoundedB 24 Final.padded37 = true := by
  unfold Final.padded37
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk640_655.bounded padded38_bounded
theorem padded36_bounded : linesBoundedB 24 Final.padded36 = true := by
  unfold Final.padded36
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk624_639.bounded padded37_bounded
theorem padded35_bounded : linesBoundedB 24 Final.padded35 = true := by
  unfold Final.padded35
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk608_623.bounded padded36_bounded
theorem padded34_bounded : linesBoundedB 24 Final.padded34 = true := by
  unfold Final.padded34
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk592_607.bounded padded35_bounded
theorem padded33_bounded : linesBoundedB 24 Final.padded33 = true := by
  unfold Final.padded33
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk576_591.bounded padded34_bounded
theorem padded32_bounded : linesBoundedB 24 Final.padded32 = true := by
  unfold Final.padded32
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk560_575.bounded padded33_bounded
theorem padded31_bounded : linesBoundedB 24 Final.padded31 = true := by
  unfold Final.padded31
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk544_559.bounded padded32_bounded
theorem padded30_bounded : linesBoundedB 24 Final.padded30 = true := by
  unfold Final.padded30
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk528_543.bounded padded31_bounded
theorem padded29_bounded : linesBoundedB 24 Final.padded29 = true := by
  unfold Final.padded29
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk512_527.bounded padded30_bounded
theorem padded28_bounded : linesBoundedB 24 Final.padded28 = true := by
  unfold Final.padded28
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk496_511.bounded padded29_bounded
theorem padded27_bounded : linesBoundedB 24 Final.padded27 = true := by
  unfold Final.padded27
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk480_495.bounded padded28_bounded
theorem padded26_bounded : linesBoundedB 24 Final.padded26 = true := by
  unfold Final.padded26
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk464_479.bounded padded27_bounded
theorem padded25_bounded : linesBoundedB 24 Final.padded25 = true := by
  unfold Final.padded25
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk448_463.bounded padded26_bounded
theorem padded24_bounded : linesBoundedB 24 Final.padded24 = true := by
  unfold Final.padded24
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk432_447.bounded padded25_bounded
theorem padded23_bounded : linesBoundedB 24 Final.padded23 = true := by
  unfold Final.padded23
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk416_431.bounded padded24_bounded
theorem padded22_bounded : linesBoundedB 24 Final.padded22 = true := by
  unfold Final.padded22
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk400_415.bounded padded23_bounded
theorem padded21_bounded : linesBoundedB 24 Final.padded21 = true := by
  unfold Final.padded21
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk384_399.bounded padded22_bounded
theorem padded20_bounded : linesBoundedB 24 Final.padded20 = true := by
  unfold Final.padded20
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk368_383.bounded padded21_bounded
theorem padded19_bounded : linesBoundedB 24 Final.padded19 = true := by
  unfold Final.padded19
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk352_367.bounded padded20_bounded
theorem padded18_bounded : linesBoundedB 24 Final.padded18 = true := by
  unfold Final.padded18
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk336_351.bounded padded19_bounded
theorem padded17_bounded : linesBoundedB 24 Final.padded17 = true := by
  unfold Final.padded17
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk320_335.bounded padded18_bounded
theorem padded16_bounded : linesBoundedB 24 Final.padded16 = true := by
  unfold Final.padded16
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk304_319.bounded padded17_bounded
theorem padded15_bounded : linesBoundedB 24 Final.padded15 = true := by
  unfold Final.padded15
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk288_303.bounded padded16_bounded
theorem padded14_bounded : linesBoundedB 24 Final.padded14 = true := by
  unfold Final.padded14
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk272_287.bounded padded15_bounded
theorem padded13_bounded : linesBoundedB 24 Final.padded13 = true := by
  unfold Final.padded13
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk256_271.bounded padded14_bounded
theorem padded12_bounded : linesBoundedB 24 Final.padded12 = true := by
  unfold Final.padded12
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk240_255.bounded padded13_bounded
theorem padded11_bounded : linesBoundedB 24 Final.padded11 = true := by
  unfold Final.padded11
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk224_239.bounded padded12_bounded
theorem padded10_bounded : linesBoundedB 24 Final.padded10 = true := by
  unfold Final.padded10
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk208_223.bounded padded11_bounded
theorem padded9_bounded : linesBoundedB 24 Final.padded9 = true := by
  unfold Final.padded9
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk192_207.bounded padded10_bounded
theorem padded8_bounded : linesBoundedB 24 Final.padded8 = true := by
  unfold Final.padded8
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk176_191.bounded padded9_bounded
theorem padded7_bounded : linesBoundedB 24 Final.padded7 = true := by
  unfold Final.padded7
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk160_175.bounded padded8_bounded
theorem padded6_bounded : linesBoundedB 24 Final.padded6 = true := by
  unfold Final.padded6
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk144_159.bounded padded7_bounded
theorem padded5_bounded : linesBoundedB 24 Final.padded5 = true := by
  unfold Final.padded5
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk128_143.bounded padded6_bounded
theorem padded4_bounded : linesBoundedB 24 Final.padded4 = true := by
  unfold Final.padded4
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk112_127.bounded padded5_bounded
theorem padded3_bounded : linesBoundedB 24 Final.padded3 = true := by
  unfold Final.padded3
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk96_111.bounded padded4_bounded
theorem padded2_bounded : linesBoundedB 24 Final.padded2 = true := by
  unfold Final.padded2
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk80_95.bounded padded3_bounded
theorem padded1_bounded : linesBoundedB 24 Final.padded1 = true := by
  unfold Final.padded1
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.Chunk64_79.bounded padded2_bounded
theorem padded0_bounded : linesBoundedB 24 Final.padded0 = true := by
  unfold Final.padded0
  exact linesBoundedB_append 24 InitECandidate.Solver.LineBound.ChunkStubs.bounded padded1_bounded

/-- Every line of the baseline's concrete padded target code has at most 24 bytes. -/
theorem padded0_linesBounded : LinesBounded 24 Final.padded0 :=
  linesBounded_of_linesBoundedB 24 Final.padded0 padded0_bounded

end InitECandidate.Solver.LineBound

#print axioms InitECandidate.Solver.LineBound.padded0_linesBounded
