import InitECandidate.Proofs.BackendStages.ZeroValidity
import InitECandidate.Proofs.BackendStages.Final
import InitECandidate.Proofs.BackendStages.ZeroChunkStubs
import InitECandidate.Proofs.BackendStages.ZeroChunk64_79
import InitECandidate.Proofs.BackendStages.ZeroChunk80_95
import InitECandidate.Proofs.BackendStages.ZeroChunk96_111
import InitECandidate.Proofs.BackendStages.ZeroChunk112_127
import InitECandidate.Proofs.BackendStages.ZeroChunk128_143
import InitECandidate.Proofs.BackendStages.ZeroChunk144_159
import InitECandidate.Proofs.BackendStages.ZeroChunk160_175
import InitECandidate.Proofs.BackendStages.ZeroChunk176_191
import InitECandidate.Proofs.BackendStages.ZeroChunk192_207
import InitECandidate.Proofs.BackendStages.ZeroChunk208_223
import InitECandidate.Proofs.BackendStages.ZeroChunk224_239
import InitECandidate.Proofs.BackendStages.ZeroChunk240_255
import InitECandidate.Proofs.BackendStages.ZeroChunk256_271
import InitECandidate.Proofs.BackendStages.ZeroChunk272_287
import InitECandidate.Proofs.BackendStages.ZeroChunk288_303
import InitECandidate.Proofs.BackendStages.ZeroChunk304_319
import InitECandidate.Proofs.BackendStages.ZeroChunk320_335
import InitECandidate.Proofs.BackendStages.ZeroChunk336_351
import InitECandidate.Proofs.BackendStages.ZeroChunk352_367
import InitECandidate.Proofs.BackendStages.ZeroChunk368_383
import InitECandidate.Proofs.BackendStages.ZeroChunk384_399
import InitECandidate.Proofs.BackendStages.ZeroChunk400_415
import InitECandidate.Proofs.BackendStages.ZeroChunk416_431
import InitECandidate.Proofs.BackendStages.ZeroChunk432_447
import InitECandidate.Proofs.BackendStages.ZeroChunk448_463
import InitECandidate.Proofs.BackendStages.ZeroChunk464_479
import InitECandidate.Proofs.BackendStages.ZeroChunk480_495
import InitECandidate.Proofs.BackendStages.ZeroChunk496_511
import InitECandidate.Proofs.BackendStages.ZeroChunk512_527
import InitECandidate.Proofs.BackendStages.ZeroChunk528_543
import InitECandidate.Proofs.BackendStages.ZeroChunk544_559
import InitECandidate.Proofs.BackendStages.ZeroChunk560_575
import InitECandidate.Proofs.BackendStages.ZeroChunk576_591
import InitECandidate.Proofs.BackendStages.ZeroChunk592_607
import InitECandidate.Proofs.BackendStages.ZeroChunk608_623
import InitECandidate.Proofs.BackendStages.ZeroChunk624_639
import InitECandidate.Proofs.BackendStages.ZeroChunk640_655
import InitECandidate.Proofs.BackendStages.ZeroChunk656_671
import InitECandidate.Proofs.BackendStages.ZeroChunk672_687
import InitECandidate.Proofs.BackendStages.ZeroChunk688_703
import InitECandidate.Proofs.BackendStages.ZeroChunk704_719
import InitECandidate.Proofs.BackendStages.ZeroChunk720_735
import InitECandidate.Proofs.BackendStages.ZeroChunk736_751
import InitECandidate.Proofs.BackendStages.ZeroChunk752_767
import InitECandidate.Proofs.BackendStages.ZeroChunk768_783
import InitECandidate.Proofs.BackendStages.ZeroChunk784_799
import InitECandidate.Proofs.BackendStages.ZeroChunk800_815
import InitECandidate.Proofs.BackendStages.ZeroChunk816_831
import InitECandidate.Proofs.BackendStages.ZeroChunk832_847
import InitECandidate.Proofs.BackendStages.ZeroChunk848_863
import InitECandidate.Proofs.BackendStages.ZeroChunk864_877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroLabels
theorem suffix52_eq : ZeroProgramCollection.targets Final.padded52 = ZeroData.keys52 := by rfl
theorem suffix51_eq : ZeroProgramCollection.targets Final.padded51 = ZeroData.allKeys51 := by
  unfold Final.padded51 ZeroData.allKeys51
  rw [ZeroProgramCollection.targets_append, ZeroChunk864_877.targets_eq, suffix52_eq]
theorem suffix50_eq : ZeroProgramCollection.targets Final.padded50 = ZeroData.allKeys50 := by
  unfold Final.padded50 ZeroData.allKeys50
  rw [ZeroProgramCollection.targets_append, ZeroChunk848_863.targets_eq, suffix51_eq]
theorem suffix49_eq : ZeroProgramCollection.targets Final.padded49 = ZeroData.allKeys49 := by
  unfold Final.padded49 ZeroData.allKeys49
  rw [ZeroProgramCollection.targets_append, ZeroChunk832_847.targets_eq, suffix50_eq]
theorem suffix48_eq : ZeroProgramCollection.targets Final.padded48 = ZeroData.allKeys48 := by
  unfold Final.padded48 ZeroData.allKeys48
  rw [ZeroProgramCollection.targets_append, ZeroChunk816_831.targets_eq, suffix49_eq]
theorem suffix47_eq : ZeroProgramCollection.targets Final.padded47 = ZeroData.allKeys47 := by
  unfold Final.padded47 ZeroData.allKeys47
  rw [ZeroProgramCollection.targets_append, ZeroChunk800_815.targets_eq, suffix48_eq]
theorem suffix46_eq : ZeroProgramCollection.targets Final.padded46 = ZeroData.allKeys46 := by
  unfold Final.padded46 ZeroData.allKeys46
  rw [ZeroProgramCollection.targets_append, ZeroChunk784_799.targets_eq, suffix47_eq]
theorem suffix45_eq : ZeroProgramCollection.targets Final.padded45 = ZeroData.allKeys45 := by
  unfold Final.padded45 ZeroData.allKeys45
  rw [ZeroProgramCollection.targets_append, ZeroChunk768_783.targets_eq, suffix46_eq]
theorem suffix44_eq : ZeroProgramCollection.targets Final.padded44 = ZeroData.allKeys44 := by
  unfold Final.padded44 ZeroData.allKeys44
  rw [ZeroProgramCollection.targets_append, ZeroChunk752_767.targets_eq, suffix45_eq]
theorem suffix43_eq : ZeroProgramCollection.targets Final.padded43 = ZeroData.allKeys43 := by
  unfold Final.padded43 ZeroData.allKeys43
  rw [ZeroProgramCollection.targets_append, ZeroChunk736_751.targets_eq, suffix44_eq]
theorem suffix42_eq : ZeroProgramCollection.targets Final.padded42 = ZeroData.allKeys42 := by
  unfold Final.padded42 ZeroData.allKeys42
  rw [ZeroProgramCollection.targets_append, ZeroChunk720_735.targets_eq, suffix43_eq]
theorem suffix41_eq : ZeroProgramCollection.targets Final.padded41 = ZeroData.allKeys41 := by
  unfold Final.padded41 ZeroData.allKeys41
  rw [ZeroProgramCollection.targets_append, ZeroChunk704_719.targets_eq, suffix42_eq]
theorem suffix40_eq : ZeroProgramCollection.targets Final.padded40 = ZeroData.allKeys40 := by
  unfold Final.padded40 ZeroData.allKeys40
  rw [ZeroProgramCollection.targets_append, ZeroChunk688_703.targets_eq, suffix41_eq]
theorem suffix39_eq : ZeroProgramCollection.targets Final.padded39 = ZeroData.allKeys39 := by
  unfold Final.padded39 ZeroData.allKeys39
  rw [ZeroProgramCollection.targets_append, ZeroChunk672_687.targets_eq, suffix40_eq]
theorem suffix38_eq : ZeroProgramCollection.targets Final.padded38 = ZeroData.allKeys38 := by
  unfold Final.padded38 ZeroData.allKeys38
  rw [ZeroProgramCollection.targets_append, ZeroChunk656_671.targets_eq, suffix39_eq]
theorem suffix37_eq : ZeroProgramCollection.targets Final.padded37 = ZeroData.allKeys37 := by
  unfold Final.padded37 ZeroData.allKeys37
  rw [ZeroProgramCollection.targets_append, ZeroChunk640_655.targets_eq, suffix38_eq]
theorem suffix36_eq : ZeroProgramCollection.targets Final.padded36 = ZeroData.allKeys36 := by
  unfold Final.padded36 ZeroData.allKeys36
  rw [ZeroProgramCollection.targets_append, ZeroChunk624_639.targets_eq, suffix37_eq]
theorem suffix35_eq : ZeroProgramCollection.targets Final.padded35 = ZeroData.allKeys35 := by
  unfold Final.padded35 ZeroData.allKeys35
  rw [ZeroProgramCollection.targets_append, ZeroChunk608_623.targets_eq, suffix36_eq]
theorem suffix34_eq : ZeroProgramCollection.targets Final.padded34 = ZeroData.allKeys34 := by
  unfold Final.padded34 ZeroData.allKeys34
  rw [ZeroProgramCollection.targets_append, ZeroChunk592_607.targets_eq, suffix35_eq]
theorem suffix33_eq : ZeroProgramCollection.targets Final.padded33 = ZeroData.allKeys33 := by
  unfold Final.padded33 ZeroData.allKeys33
  rw [ZeroProgramCollection.targets_append, ZeroChunk576_591.targets_eq, suffix34_eq]
theorem suffix32_eq : ZeroProgramCollection.targets Final.padded32 = ZeroData.allKeys32 := by
  unfold Final.padded32 ZeroData.allKeys32
  rw [ZeroProgramCollection.targets_append, ZeroChunk560_575.targets_eq, suffix33_eq]
theorem suffix31_eq : ZeroProgramCollection.targets Final.padded31 = ZeroData.allKeys31 := by
  unfold Final.padded31 ZeroData.allKeys31
  rw [ZeroProgramCollection.targets_append, ZeroChunk544_559.targets_eq, suffix32_eq]
theorem suffix30_eq : ZeroProgramCollection.targets Final.padded30 = ZeroData.allKeys30 := by
  unfold Final.padded30 ZeroData.allKeys30
  rw [ZeroProgramCollection.targets_append, ZeroChunk528_543.targets_eq, suffix31_eq]
theorem suffix29_eq : ZeroProgramCollection.targets Final.padded29 = ZeroData.allKeys29 := by
  unfold Final.padded29 ZeroData.allKeys29
  rw [ZeroProgramCollection.targets_append, ZeroChunk512_527.targets_eq, suffix30_eq]
theorem suffix28_eq : ZeroProgramCollection.targets Final.padded28 = ZeroData.allKeys28 := by
  unfold Final.padded28 ZeroData.allKeys28
  rw [ZeroProgramCollection.targets_append, ZeroChunk496_511.targets_eq, suffix29_eq]
theorem suffix27_eq : ZeroProgramCollection.targets Final.padded27 = ZeroData.allKeys27 := by
  unfold Final.padded27 ZeroData.allKeys27
  rw [ZeroProgramCollection.targets_append, ZeroChunk480_495.targets_eq, suffix28_eq]
theorem suffix26_eq : ZeroProgramCollection.targets Final.padded26 = ZeroData.allKeys26 := by
  unfold Final.padded26 ZeroData.allKeys26
  rw [ZeroProgramCollection.targets_append, ZeroChunk464_479.targets_eq, suffix27_eq]
theorem suffix25_eq : ZeroProgramCollection.targets Final.padded25 = ZeroData.allKeys25 := by
  unfold Final.padded25 ZeroData.allKeys25
  rw [ZeroProgramCollection.targets_append, ZeroChunk448_463.targets_eq, suffix26_eq]
theorem suffix24_eq : ZeroProgramCollection.targets Final.padded24 = ZeroData.allKeys24 := by
  unfold Final.padded24 ZeroData.allKeys24
  rw [ZeroProgramCollection.targets_append, ZeroChunk432_447.targets_eq, suffix25_eq]
theorem suffix23_eq : ZeroProgramCollection.targets Final.padded23 = ZeroData.allKeys23 := by
  unfold Final.padded23 ZeroData.allKeys23
  rw [ZeroProgramCollection.targets_append, ZeroChunk416_431.targets_eq, suffix24_eq]
theorem suffix22_eq : ZeroProgramCollection.targets Final.padded22 = ZeroData.allKeys22 := by
  unfold Final.padded22 ZeroData.allKeys22
  rw [ZeroProgramCollection.targets_append, ZeroChunk400_415.targets_eq, suffix23_eq]
theorem suffix21_eq : ZeroProgramCollection.targets Final.padded21 = ZeroData.allKeys21 := by
  unfold Final.padded21 ZeroData.allKeys21
  rw [ZeroProgramCollection.targets_append, ZeroChunk384_399.targets_eq, suffix22_eq]
theorem suffix20_eq : ZeroProgramCollection.targets Final.padded20 = ZeroData.allKeys20 := by
  unfold Final.padded20 ZeroData.allKeys20
  rw [ZeroProgramCollection.targets_append, ZeroChunk368_383.targets_eq, suffix21_eq]
theorem suffix19_eq : ZeroProgramCollection.targets Final.padded19 = ZeroData.allKeys19 := by
  unfold Final.padded19 ZeroData.allKeys19
  rw [ZeroProgramCollection.targets_append, ZeroChunk352_367.targets_eq, suffix20_eq]
theorem suffix18_eq : ZeroProgramCollection.targets Final.padded18 = ZeroData.allKeys18 := by
  unfold Final.padded18 ZeroData.allKeys18
  rw [ZeroProgramCollection.targets_append, ZeroChunk336_351.targets_eq, suffix19_eq]
theorem suffix17_eq : ZeroProgramCollection.targets Final.padded17 = ZeroData.allKeys17 := by
  unfold Final.padded17 ZeroData.allKeys17
  rw [ZeroProgramCollection.targets_append, ZeroChunk320_335.targets_eq, suffix18_eq]
theorem suffix16_eq : ZeroProgramCollection.targets Final.padded16 = ZeroData.allKeys16 := by
  unfold Final.padded16 ZeroData.allKeys16
  rw [ZeroProgramCollection.targets_append, ZeroChunk304_319.targets_eq, suffix17_eq]
theorem suffix15_eq : ZeroProgramCollection.targets Final.padded15 = ZeroData.allKeys15 := by
  unfold Final.padded15 ZeroData.allKeys15
  rw [ZeroProgramCollection.targets_append, ZeroChunk288_303.targets_eq, suffix16_eq]
theorem suffix14_eq : ZeroProgramCollection.targets Final.padded14 = ZeroData.allKeys14 := by
  unfold Final.padded14 ZeroData.allKeys14
  rw [ZeroProgramCollection.targets_append, ZeroChunk272_287.targets_eq, suffix15_eq]
theorem suffix13_eq : ZeroProgramCollection.targets Final.padded13 = ZeroData.allKeys13 := by
  unfold Final.padded13 ZeroData.allKeys13
  rw [ZeroProgramCollection.targets_append, ZeroChunk256_271.targets_eq, suffix14_eq]
theorem suffix12_eq : ZeroProgramCollection.targets Final.padded12 = ZeroData.allKeys12 := by
  unfold Final.padded12 ZeroData.allKeys12
  rw [ZeroProgramCollection.targets_append, ZeroChunk240_255.targets_eq, suffix13_eq]
theorem suffix11_eq : ZeroProgramCollection.targets Final.padded11 = ZeroData.allKeys11 := by
  unfold Final.padded11 ZeroData.allKeys11
  rw [ZeroProgramCollection.targets_append, ZeroChunk224_239.targets_eq, suffix12_eq]
theorem suffix10_eq : ZeroProgramCollection.targets Final.padded10 = ZeroData.allKeys10 := by
  unfold Final.padded10 ZeroData.allKeys10
  rw [ZeroProgramCollection.targets_append, ZeroChunk208_223.targets_eq, suffix11_eq]
theorem suffix9_eq : ZeroProgramCollection.targets Final.padded9 = ZeroData.allKeys9 := by
  unfold Final.padded9 ZeroData.allKeys9
  rw [ZeroProgramCollection.targets_append, ZeroChunk192_207.targets_eq, suffix10_eq]
theorem suffix8_eq : ZeroProgramCollection.targets Final.padded8 = ZeroData.allKeys8 := by
  unfold Final.padded8 ZeroData.allKeys8
  rw [ZeroProgramCollection.targets_append, ZeroChunk176_191.targets_eq, suffix9_eq]
theorem suffix7_eq : ZeroProgramCollection.targets Final.padded7 = ZeroData.allKeys7 := by
  unfold Final.padded7 ZeroData.allKeys7
  rw [ZeroProgramCollection.targets_append, ZeroChunk160_175.targets_eq, suffix8_eq]
theorem suffix6_eq : ZeroProgramCollection.targets Final.padded6 = ZeroData.allKeys6 := by
  unfold Final.padded6 ZeroData.allKeys6
  rw [ZeroProgramCollection.targets_append, ZeroChunk144_159.targets_eq, suffix7_eq]
theorem suffix5_eq : ZeroProgramCollection.targets Final.padded5 = ZeroData.allKeys5 := by
  unfold Final.padded5 ZeroData.allKeys5
  rw [ZeroProgramCollection.targets_append, ZeroChunk128_143.targets_eq, suffix6_eq]
theorem suffix4_eq : ZeroProgramCollection.targets Final.padded4 = ZeroData.allKeys4 := by
  unfold Final.padded4 ZeroData.allKeys4
  rw [ZeroProgramCollection.targets_append, ZeroChunk112_127.targets_eq, suffix5_eq]
theorem suffix3_eq : ZeroProgramCollection.targets Final.padded3 = ZeroData.allKeys3 := by
  unfold Final.padded3 ZeroData.allKeys3
  rw [ZeroProgramCollection.targets_append, ZeroChunk96_111.targets_eq, suffix4_eq]
theorem suffix2_eq : ZeroProgramCollection.targets Final.padded2 = ZeroData.allKeys2 := by
  unfold Final.padded2 ZeroData.allKeys2
  rw [ZeroProgramCollection.targets_append, ZeroChunk80_95.targets_eq, suffix3_eq]
theorem suffix1_eq : ZeroProgramCollection.targets Final.padded1 = ZeroData.allKeys1 := by
  unfold Final.padded1 ZeroData.allKeys1
  rw [ZeroProgramCollection.targets_append, ZeroChunk64_79.targets_eq, suffix2_eq]
theorem suffix0_eq : ZeroProgramCollection.targets Final.padded0 = ZeroData.allKeys0 := by
  unfold Final.padded0 ZeroData.allKeys0
  rw [ZeroProgramCollection.targets_append, ZeroChunkStubs.targets_eq, suffix1_eq]
theorem valid : LabToTarget.zeroLabsAccExist Target.labelsFinal Final.padded0 = true := by
  unfold LabToTarget.zeroLabsAccExist LabToTarget.getZeroLabsAcc
  rw [ZeroProgramCollection.fold_eq, suffix0_eq]
  with_unfolding_all exact ZeroValidity.valid
#print axioms valid
end InitECandidate.Proofs.BackendStages.ZeroLabels
