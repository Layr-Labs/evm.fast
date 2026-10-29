import InitECandidate.Proofs.BackendStages.Filtered
import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.EncodedStubs
import InitECandidate.Proofs.BackendStages.EncodedChunk64_79
import InitECandidate.Proofs.BackendStages.EncodedChunk80_95
import InitECandidate.Proofs.BackendStages.EncodedChunk96_111
import InitECandidate.Proofs.BackendStages.EncodedChunk112_127
import InitECandidate.Proofs.BackendStages.EncodedChunk128_143
import InitECandidate.Proofs.BackendStages.EncodedChunk144_159
import InitECandidate.Proofs.BackendStages.EncodedChunk160_175
import InitECandidate.Proofs.BackendStages.EncodedChunk176_191
import InitECandidate.Proofs.BackendStages.EncodedChunk192_207
import InitECandidate.Proofs.BackendStages.EncodedChunk208_223
import InitECandidate.Proofs.BackendStages.EncodedChunk224_239
import InitECandidate.Proofs.BackendStages.EncodedChunk240_255
import InitECandidate.Proofs.BackendStages.EncodedChunk256_271
import InitECandidate.Proofs.BackendStages.EncodedChunk272_287
import InitECandidate.Proofs.BackendStages.EncodedChunk288_303
import InitECandidate.Proofs.BackendStages.EncodedChunk304_319
import InitECandidate.Proofs.BackendStages.EncodedChunk320_335
import InitECandidate.Proofs.BackendStages.EncodedChunk336_351
import InitECandidate.Proofs.BackendStages.EncodedChunk352_367
import InitECandidate.Proofs.BackendStages.EncodedChunk368_383
import InitECandidate.Proofs.BackendStages.EncodedChunk384_399
import InitECandidate.Proofs.BackendStages.EncodedChunk400_415
import InitECandidate.Proofs.BackendStages.EncodedChunk416_431
import InitECandidate.Proofs.BackendStages.EncodedChunk432_447
import InitECandidate.Proofs.BackendStages.EncodedChunk448_463
import InitECandidate.Proofs.BackendStages.EncodedChunk464_479
import InitECandidate.Proofs.BackendStages.EncodedChunk480_495
import InitECandidate.Proofs.BackendStages.EncodedChunk496_511
import InitECandidate.Proofs.BackendStages.EncodedChunk512_527
import InitECandidate.Proofs.BackendStages.EncodedChunk528_543
import InitECandidate.Proofs.BackendStages.EncodedChunk544_559
import InitECandidate.Proofs.BackendStages.EncodedChunk560_575
import InitECandidate.Proofs.BackendStages.EncodedChunk576_591
import InitECandidate.Proofs.BackendStages.EncodedChunk592_607
import InitECandidate.Proofs.BackendStages.EncodedChunk608_623
import InitECandidate.Proofs.BackendStages.EncodedChunk624_639
import InitECandidate.Proofs.BackendStages.EncodedChunk640_655
import InitECandidate.Proofs.BackendStages.EncodedChunk656_671
import InitECandidate.Proofs.BackendStages.EncodedChunk672_687
import InitECandidate.Proofs.BackendStages.EncodedChunk688_703
import InitECandidate.Proofs.BackendStages.EncodedChunk704_719
import InitECandidate.Proofs.BackendStages.EncodedChunk720_735
import InitECandidate.Proofs.BackendStages.EncodedChunk736_751
import InitECandidate.Proofs.BackendStages.EncodedChunk752_767
import InitECandidate.Proofs.BackendStages.EncodedChunk768_783
import InitECandidate.Proofs.BackendStages.EncodedChunk784_799
import InitECandidate.Proofs.BackendStages.EncodedChunk800_815
import InitECandidate.Proofs.BackendStages.EncodedChunk816_831
import InitECandidate.Proofs.BackendStages.EncodedChunk832_847
import InitECandidate.Proofs.BackendStages.EncodedChunk848_863
import InitECandidate.Proofs.BackendStages.EncodedChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Encoded
def sections51 : LabSem.LabProgHOL 64 := []
theorem sections51_eq : Filtered.sections51.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections51 := by rfl
def sections50 := EncodedChunk864_877.sections ++ sections51
theorem sections50_eq : Filtered.sections50.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections50 := by
  unfold Filtered.sections50 sections50
  rw [List.map_append, EncodedChunk864_877.compiled_eq, sections51_eq]
def sections49 := EncodedChunk848_863.sections ++ sections50
theorem sections49_eq : Filtered.sections49.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections49 := by
  unfold Filtered.sections49 sections49
  rw [List.map_append, EncodedChunk848_863.compiled_eq, sections50_eq]
def sections48 := EncodedChunk832_847.sections ++ sections49
theorem sections48_eq : Filtered.sections48.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections48 := by
  unfold Filtered.sections48 sections48
  rw [List.map_append, EncodedChunk832_847.compiled_eq, sections49_eq]
def sections47 := EncodedChunk816_831.sections ++ sections48
theorem sections47_eq : Filtered.sections47.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections47 := by
  unfold Filtered.sections47 sections47
  rw [List.map_append, EncodedChunk816_831.compiled_eq, sections48_eq]
def sections46 := EncodedChunk800_815.sections ++ sections47
theorem sections46_eq : Filtered.sections46.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections46 := by
  unfold Filtered.sections46 sections46
  rw [List.map_append, EncodedChunk800_815.compiled_eq, sections47_eq]
def sections45 := EncodedChunk784_799.sections ++ sections46
theorem sections45_eq : Filtered.sections45.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections45 := by
  unfold Filtered.sections45 sections45
  rw [List.map_append, EncodedChunk784_799.compiled_eq, sections46_eq]
def sections44 := EncodedChunk768_783.sections ++ sections45
theorem sections44_eq : Filtered.sections44.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections44 := by
  unfold Filtered.sections44 sections44
  rw [List.map_append, EncodedChunk768_783.compiled_eq, sections45_eq]
def sections43 := EncodedChunk752_767.sections ++ sections44
theorem sections43_eq : Filtered.sections43.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections43 := by
  unfold Filtered.sections43 sections43
  rw [List.map_append, EncodedChunk752_767.compiled_eq, sections44_eq]
def sections42 := EncodedChunk736_751.sections ++ sections43
theorem sections42_eq : Filtered.sections42.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections42 := by
  unfold Filtered.sections42 sections42
  rw [List.map_append, EncodedChunk736_751.compiled_eq, sections43_eq]
def sections41 := EncodedChunk720_735.sections ++ sections42
theorem sections41_eq : Filtered.sections41.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections41 := by
  unfold Filtered.sections41 sections41
  rw [List.map_append, EncodedChunk720_735.compiled_eq, sections42_eq]
def sections40 := EncodedChunk704_719.sections ++ sections41
theorem sections40_eq : Filtered.sections40.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections40 := by
  unfold Filtered.sections40 sections40
  rw [List.map_append, EncodedChunk704_719.compiled_eq, sections41_eq]
def sections39 := EncodedChunk688_703.sections ++ sections40
theorem sections39_eq : Filtered.sections39.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections39 := by
  unfold Filtered.sections39 sections39
  rw [List.map_append, EncodedChunk688_703.compiled_eq, sections40_eq]
def sections38 := EncodedChunk672_687.sections ++ sections39
theorem sections38_eq : Filtered.sections38.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections38 := by
  unfold Filtered.sections38 sections38
  rw [List.map_append, EncodedChunk672_687.compiled_eq, sections39_eq]
def sections37 := EncodedChunk656_671.sections ++ sections38
theorem sections37_eq : Filtered.sections37.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections37 := by
  unfold Filtered.sections37 sections37
  rw [List.map_append, EncodedChunk656_671.compiled_eq, sections38_eq]
def sections36 := EncodedChunk640_655.sections ++ sections37
theorem sections36_eq : Filtered.sections36.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections36 := by
  unfold Filtered.sections36 sections36
  rw [List.map_append, EncodedChunk640_655.compiled_eq, sections37_eq]
def sections35 := EncodedChunk624_639.sections ++ sections36
theorem sections35_eq : Filtered.sections35.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections35 := by
  unfold Filtered.sections35 sections35
  rw [List.map_append, EncodedChunk624_639.compiled_eq, sections36_eq]
def sections34 := EncodedChunk608_623.sections ++ sections35
theorem sections34_eq : Filtered.sections34.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections34 := by
  unfold Filtered.sections34 sections34
  rw [List.map_append, EncodedChunk608_623.compiled_eq, sections35_eq]
def sections33 := EncodedChunk592_607.sections ++ sections34
theorem sections33_eq : Filtered.sections33.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections33 := by
  unfold Filtered.sections33 sections33
  rw [List.map_append, EncodedChunk592_607.compiled_eq, sections34_eq]
def sections32 := EncodedChunk576_591.sections ++ sections33
theorem sections32_eq : Filtered.sections32.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections32 := by
  unfold Filtered.sections32 sections32
  rw [List.map_append, EncodedChunk576_591.compiled_eq, sections33_eq]
def sections31 := EncodedChunk560_575.sections ++ sections32
theorem sections31_eq : Filtered.sections31.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections31 := by
  unfold Filtered.sections31 sections31
  rw [List.map_append, EncodedChunk560_575.compiled_eq, sections32_eq]
def sections30 := EncodedChunk544_559.sections ++ sections31
theorem sections30_eq : Filtered.sections30.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections30 := by
  unfold Filtered.sections30 sections30
  rw [List.map_append, EncodedChunk544_559.compiled_eq, sections31_eq]
def sections29 := EncodedChunk528_543.sections ++ sections30
theorem sections29_eq : Filtered.sections29.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections29 := by
  unfold Filtered.sections29 sections29
  rw [List.map_append, EncodedChunk528_543.compiled_eq, sections30_eq]
def sections28 := EncodedChunk512_527.sections ++ sections29
theorem sections28_eq : Filtered.sections28.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections28 := by
  unfold Filtered.sections28 sections28
  rw [List.map_append, EncodedChunk512_527.compiled_eq, sections29_eq]
def sections27 := EncodedChunk496_511.sections ++ sections28
theorem sections27_eq : Filtered.sections27.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections27 := by
  unfold Filtered.sections27 sections27
  rw [List.map_append, EncodedChunk496_511.compiled_eq, sections28_eq]
def sections26 := EncodedChunk480_495.sections ++ sections27
theorem sections26_eq : Filtered.sections26.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections26 := by
  unfold Filtered.sections26 sections26
  rw [List.map_append, EncodedChunk480_495.compiled_eq, sections27_eq]
def sections25 := EncodedChunk464_479.sections ++ sections26
theorem sections25_eq : Filtered.sections25.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections25 := by
  unfold Filtered.sections25 sections25
  rw [List.map_append, EncodedChunk464_479.compiled_eq, sections26_eq]
def sections24 := EncodedChunk448_463.sections ++ sections25
theorem sections24_eq : Filtered.sections24.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections24 := by
  unfold Filtered.sections24 sections24
  rw [List.map_append, EncodedChunk448_463.compiled_eq, sections25_eq]
def sections23 := EncodedChunk432_447.sections ++ sections24
theorem sections23_eq : Filtered.sections23.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections23 := by
  unfold Filtered.sections23 sections23
  rw [List.map_append, EncodedChunk432_447.compiled_eq, sections24_eq]
def sections22 := EncodedChunk416_431.sections ++ sections23
theorem sections22_eq : Filtered.sections22.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections22 := by
  unfold Filtered.sections22 sections22
  rw [List.map_append, EncodedChunk416_431.compiled_eq, sections23_eq]
def sections21 := EncodedChunk400_415.sections ++ sections22
theorem sections21_eq : Filtered.sections21.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections21 := by
  unfold Filtered.sections21 sections21
  rw [List.map_append, EncodedChunk400_415.compiled_eq, sections22_eq]
def sections20 := EncodedChunk384_399.sections ++ sections21
theorem sections20_eq : Filtered.sections20.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections20 := by
  unfold Filtered.sections20 sections20
  rw [List.map_append, EncodedChunk384_399.compiled_eq, sections21_eq]
def sections19 := EncodedChunk368_383.sections ++ sections20
theorem sections19_eq : Filtered.sections19.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections19 := by
  unfold Filtered.sections19 sections19
  rw [List.map_append, EncodedChunk368_383.compiled_eq, sections20_eq]
def sections18 := EncodedChunk352_367.sections ++ sections19
theorem sections18_eq : Filtered.sections18.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections18 := by
  unfold Filtered.sections18 sections18
  rw [List.map_append, EncodedChunk352_367.compiled_eq, sections19_eq]
def sections17 := EncodedChunk336_351.sections ++ sections18
theorem sections17_eq : Filtered.sections17.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections17 := by
  unfold Filtered.sections17 sections17
  rw [List.map_append, EncodedChunk336_351.compiled_eq, sections18_eq]
def sections16 := EncodedChunk320_335.sections ++ sections17
theorem sections16_eq : Filtered.sections16.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections16 := by
  unfold Filtered.sections16 sections16
  rw [List.map_append, EncodedChunk320_335.compiled_eq, sections17_eq]
def sections15 := EncodedChunk304_319.sections ++ sections16
theorem sections15_eq : Filtered.sections15.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections15 := by
  unfold Filtered.sections15 sections15
  rw [List.map_append, EncodedChunk304_319.compiled_eq, sections16_eq]
def sections14 := EncodedChunk288_303.sections ++ sections15
theorem sections14_eq : Filtered.sections14.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections14 := by
  unfold Filtered.sections14 sections14
  rw [List.map_append, EncodedChunk288_303.compiled_eq, sections15_eq]
def sections13 := EncodedChunk272_287.sections ++ sections14
theorem sections13_eq : Filtered.sections13.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections13 := by
  unfold Filtered.sections13 sections13
  rw [List.map_append, EncodedChunk272_287.compiled_eq, sections14_eq]
def sections12 := EncodedChunk256_271.sections ++ sections13
theorem sections12_eq : Filtered.sections12.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections12 := by
  unfold Filtered.sections12 sections12
  rw [List.map_append, EncodedChunk256_271.compiled_eq, sections13_eq]
def sections11 := EncodedChunk240_255.sections ++ sections12
theorem sections11_eq : Filtered.sections11.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections11 := by
  unfold Filtered.sections11 sections11
  rw [List.map_append, EncodedChunk240_255.compiled_eq, sections12_eq]
def sections10 := EncodedChunk224_239.sections ++ sections11
theorem sections10_eq : Filtered.sections10.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections10 := by
  unfold Filtered.sections10 sections10
  rw [List.map_append, EncodedChunk224_239.compiled_eq, sections11_eq]
def sections9 := EncodedChunk208_223.sections ++ sections10
theorem sections9_eq : Filtered.sections9.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections9 := by
  unfold Filtered.sections9 sections9
  rw [List.map_append, EncodedChunk208_223.compiled_eq, sections10_eq]
def sections8 := EncodedChunk192_207.sections ++ sections9
theorem sections8_eq : Filtered.sections8.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections8 := by
  unfold Filtered.sections8 sections8
  rw [List.map_append, EncodedChunk192_207.compiled_eq, sections9_eq]
def sections7 := EncodedChunk176_191.sections ++ sections8
theorem sections7_eq : Filtered.sections7.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections7 := by
  unfold Filtered.sections7 sections7
  rw [List.map_append, EncodedChunk176_191.compiled_eq, sections8_eq]
def sections6 := EncodedChunk160_175.sections ++ sections7
theorem sections6_eq : Filtered.sections6.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections6 := by
  unfold Filtered.sections6 sections6
  rw [List.map_append, EncodedChunk160_175.compiled_eq, sections7_eq]
def sections5 := EncodedChunk144_159.sections ++ sections6
theorem sections5_eq : Filtered.sections5.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections5 := by
  unfold Filtered.sections5 sections5
  rw [List.map_append, EncodedChunk144_159.compiled_eq, sections6_eq]
def sections4 := EncodedChunk128_143.sections ++ sections5
theorem sections4_eq : Filtered.sections4.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections4 := by
  unfold Filtered.sections4 sections4
  rw [List.map_append, EncodedChunk128_143.compiled_eq, sections5_eq]
def sections3 := EncodedChunk112_127.sections ++ sections4
theorem sections3_eq : Filtered.sections3.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections3 := by
  unfold Filtered.sections3 sections3
  rw [List.map_append, EncodedChunk112_127.compiled_eq, sections4_eq]
def sections2 := EncodedChunk96_111.sections ++ sections3
theorem sections2_eq : Filtered.sections2.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections2 := by
  unfold Filtered.sections2 sections2
  rw [List.map_append, EncodedChunk96_111.compiled_eq, sections3_eq]
def sections1 := EncodedChunk80_95.sections ++ sections2
theorem sections1_eq : Filtered.sections1.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections1 := by
  unfold Filtered.sections1 sections1
  rw [List.map_append, EncodedChunk80_95.compiled_eq, sections2_eq]
def sections0 := EncodedChunk64_79.sections ++ sections1
theorem sections0_eq : Filtered.sections0.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections0 := by
  unfold Filtered.sections0 sections0
  rw [List.map_append, EncodedChunk64_79.compiled_eq, sections1_eq]
def program := EncodedStubs.sections ++ sections0
theorem map_eq : Filtered.program.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = program := by
  unfold Filtered.program program
  rw [List.map_append, EncodedStubs.compiled_eq, sections0_eq]
theorem compile_eq : LabToTarget.encSecList riscvConfig.encode Filtered.program = program := by
  rw [InitECandidate.Proofs.BackendComputation.encSecList_eq_map, map_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Encoded
