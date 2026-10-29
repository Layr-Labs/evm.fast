import InitECandidate.Proofs.BackendStages.Sections
import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.FilteredStubs
import InitECandidate.Proofs.BackendStages.FilteredChunk64_79
import InitECandidate.Proofs.BackendStages.FilteredChunk80_95
import InitECandidate.Proofs.BackendStages.FilteredChunk96_111
import InitECandidate.Proofs.BackendStages.FilteredChunk112_127
import InitECandidate.Proofs.BackendStages.FilteredChunk128_143
import InitECandidate.Proofs.BackendStages.FilteredChunk144_159
import InitECandidate.Proofs.BackendStages.FilteredChunk160_175
import InitECandidate.Proofs.BackendStages.FilteredChunk176_191
import InitECandidate.Proofs.BackendStages.FilteredChunk192_207
import InitECandidate.Proofs.BackendStages.FilteredChunk208_223
import InitECandidate.Proofs.BackendStages.FilteredChunk224_239
import InitECandidate.Proofs.BackendStages.FilteredChunk240_255
import InitECandidate.Proofs.BackendStages.FilteredChunk256_271
import InitECandidate.Proofs.BackendStages.FilteredChunk272_287
import InitECandidate.Proofs.BackendStages.FilteredChunk288_303
import InitECandidate.Proofs.BackendStages.FilteredChunk304_319
import InitECandidate.Proofs.BackendStages.FilteredChunk320_335
import InitECandidate.Proofs.BackendStages.FilteredChunk336_351
import InitECandidate.Proofs.BackendStages.FilteredChunk352_367
import InitECandidate.Proofs.BackendStages.FilteredChunk368_383
import InitECandidate.Proofs.BackendStages.FilteredChunk384_399
import InitECandidate.Proofs.BackendStages.FilteredChunk400_415
import InitECandidate.Proofs.BackendStages.FilteredChunk416_431
import InitECandidate.Proofs.BackendStages.FilteredChunk432_447
import InitECandidate.Proofs.BackendStages.FilteredChunk448_463
import InitECandidate.Proofs.BackendStages.FilteredChunk464_479
import InitECandidate.Proofs.BackendStages.FilteredChunk480_495
import InitECandidate.Proofs.BackendStages.FilteredChunk496_511
import InitECandidate.Proofs.BackendStages.FilteredChunk512_527
import InitECandidate.Proofs.BackendStages.FilteredChunk528_543
import InitECandidate.Proofs.BackendStages.FilteredChunk544_559
import InitECandidate.Proofs.BackendStages.FilteredChunk560_575
import InitECandidate.Proofs.BackendStages.FilteredChunk576_591
import InitECandidate.Proofs.BackendStages.FilteredChunk592_607
import InitECandidate.Proofs.BackendStages.FilteredChunk608_623
import InitECandidate.Proofs.BackendStages.FilteredChunk624_639
import InitECandidate.Proofs.BackendStages.FilteredChunk640_655
import InitECandidate.Proofs.BackendStages.FilteredChunk656_671
import InitECandidate.Proofs.BackendStages.FilteredChunk672_687
import InitECandidate.Proofs.BackendStages.FilteredChunk688_703
import InitECandidate.Proofs.BackendStages.FilteredChunk704_719
import InitECandidate.Proofs.BackendStages.FilteredChunk720_735
import InitECandidate.Proofs.BackendStages.FilteredChunk736_751
import InitECandidate.Proofs.BackendStages.FilteredChunk752_767
import InitECandidate.Proofs.BackendStages.FilteredChunk768_783
import InitECandidate.Proofs.BackendStages.FilteredChunk784_799
import InitECandidate.Proofs.BackendStages.FilteredChunk800_815
import InitECandidate.Proofs.BackendStages.FilteredChunk816_831
import InitECandidate.Proofs.BackendStages.FilteredChunk832_847
import InitECandidate.Proofs.BackendStages.FilteredChunk848_863
import InitECandidate.Proofs.BackendStages.FilteredChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Filtered
def sections51 : LabSem.LabProgHOL 64 := []
theorem sections51_eq : Sections.sections51.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections51 := by rfl
def sections50 := FilteredChunk864_877.sections ++ sections51
theorem sections50_eq : Sections.sections50.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections50 := by
  unfold Sections.sections50 sections50
  rw [List.map_append, FilteredChunk864_877.compiled_eq, sections51_eq]
def sections49 := FilteredChunk848_863.sections ++ sections50
theorem sections49_eq : Sections.sections49.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections49 := by
  unfold Sections.sections49 sections49
  rw [List.map_append, FilteredChunk848_863.compiled_eq, sections50_eq]
def sections48 := FilteredChunk832_847.sections ++ sections49
theorem sections48_eq : Sections.sections48.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections48 := by
  unfold Sections.sections48 sections48
  rw [List.map_append, FilteredChunk832_847.compiled_eq, sections49_eq]
def sections47 := FilteredChunk816_831.sections ++ sections48
theorem sections47_eq : Sections.sections47.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections47 := by
  unfold Sections.sections47 sections47
  rw [List.map_append, FilteredChunk816_831.compiled_eq, sections48_eq]
def sections46 := FilteredChunk800_815.sections ++ sections47
theorem sections46_eq : Sections.sections46.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections46 := by
  unfold Sections.sections46 sections46
  rw [List.map_append, FilteredChunk800_815.compiled_eq, sections47_eq]
def sections45 := FilteredChunk784_799.sections ++ sections46
theorem sections45_eq : Sections.sections45.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections45 := by
  unfold Sections.sections45 sections45
  rw [List.map_append, FilteredChunk784_799.compiled_eq, sections46_eq]
def sections44 := FilteredChunk768_783.sections ++ sections45
theorem sections44_eq : Sections.sections44.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections44 := by
  unfold Sections.sections44 sections44
  rw [List.map_append, FilteredChunk768_783.compiled_eq, sections45_eq]
def sections43 := FilteredChunk752_767.sections ++ sections44
theorem sections43_eq : Sections.sections43.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections43 := by
  unfold Sections.sections43 sections43
  rw [List.map_append, FilteredChunk752_767.compiled_eq, sections44_eq]
def sections42 := FilteredChunk736_751.sections ++ sections43
theorem sections42_eq : Sections.sections42.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections42 := by
  unfold Sections.sections42 sections42
  rw [List.map_append, FilteredChunk736_751.compiled_eq, sections43_eq]
def sections41 := FilteredChunk720_735.sections ++ sections42
theorem sections41_eq : Sections.sections41.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections41 := by
  unfold Sections.sections41 sections41
  rw [List.map_append, FilteredChunk720_735.compiled_eq, sections42_eq]
def sections40 := FilteredChunk704_719.sections ++ sections41
theorem sections40_eq : Sections.sections40.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections40 := by
  unfold Sections.sections40 sections40
  rw [List.map_append, FilteredChunk704_719.compiled_eq, sections41_eq]
def sections39 := FilteredChunk688_703.sections ++ sections40
theorem sections39_eq : Sections.sections39.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections39 := by
  unfold Sections.sections39 sections39
  rw [List.map_append, FilteredChunk688_703.compiled_eq, sections40_eq]
def sections38 := FilteredChunk672_687.sections ++ sections39
theorem sections38_eq : Sections.sections38.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections38 := by
  unfold Sections.sections38 sections38
  rw [List.map_append, FilteredChunk672_687.compiled_eq, sections39_eq]
def sections37 := FilteredChunk656_671.sections ++ sections38
theorem sections37_eq : Sections.sections37.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections37 := by
  unfold Sections.sections37 sections37
  rw [List.map_append, FilteredChunk656_671.compiled_eq, sections38_eq]
def sections36 := FilteredChunk640_655.sections ++ sections37
theorem sections36_eq : Sections.sections36.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections36 := by
  unfold Sections.sections36 sections36
  rw [List.map_append, FilteredChunk640_655.compiled_eq, sections37_eq]
def sections35 := FilteredChunk624_639.sections ++ sections36
theorem sections35_eq : Sections.sections35.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections35 := by
  unfold Sections.sections35 sections35
  rw [List.map_append, FilteredChunk624_639.compiled_eq, sections36_eq]
def sections34 := FilteredChunk608_623.sections ++ sections35
theorem sections34_eq : Sections.sections34.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections34 := by
  unfold Sections.sections34 sections34
  rw [List.map_append, FilteredChunk608_623.compiled_eq, sections35_eq]
def sections33 := FilteredChunk592_607.sections ++ sections34
theorem sections33_eq : Sections.sections33.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections33 := by
  unfold Sections.sections33 sections33
  rw [List.map_append, FilteredChunk592_607.compiled_eq, sections34_eq]
def sections32 := FilteredChunk576_591.sections ++ sections33
theorem sections32_eq : Sections.sections32.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections32 := by
  unfold Sections.sections32 sections32
  rw [List.map_append, FilteredChunk576_591.compiled_eq, sections33_eq]
def sections31 := FilteredChunk560_575.sections ++ sections32
theorem sections31_eq : Sections.sections31.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections31 := by
  unfold Sections.sections31 sections31
  rw [List.map_append, FilteredChunk560_575.compiled_eq, sections32_eq]
def sections30 := FilteredChunk544_559.sections ++ sections31
theorem sections30_eq : Sections.sections30.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections30 := by
  unfold Sections.sections30 sections30
  rw [List.map_append, FilteredChunk544_559.compiled_eq, sections31_eq]
def sections29 := FilteredChunk528_543.sections ++ sections30
theorem sections29_eq : Sections.sections29.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections29 := by
  unfold Sections.sections29 sections29
  rw [List.map_append, FilteredChunk528_543.compiled_eq, sections30_eq]
def sections28 := FilteredChunk512_527.sections ++ sections29
theorem sections28_eq : Sections.sections28.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections28 := by
  unfold Sections.sections28 sections28
  rw [List.map_append, FilteredChunk512_527.compiled_eq, sections29_eq]
def sections27 := FilteredChunk496_511.sections ++ sections28
theorem sections27_eq : Sections.sections27.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections27 := by
  unfold Sections.sections27 sections27
  rw [List.map_append, FilteredChunk496_511.compiled_eq, sections28_eq]
def sections26 := FilteredChunk480_495.sections ++ sections27
theorem sections26_eq : Sections.sections26.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections26 := by
  unfold Sections.sections26 sections26
  rw [List.map_append, FilteredChunk480_495.compiled_eq, sections27_eq]
def sections25 := FilteredChunk464_479.sections ++ sections26
theorem sections25_eq : Sections.sections25.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections25 := by
  unfold Sections.sections25 sections25
  rw [List.map_append, FilteredChunk464_479.compiled_eq, sections26_eq]
def sections24 := FilteredChunk448_463.sections ++ sections25
theorem sections24_eq : Sections.sections24.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections24 := by
  unfold Sections.sections24 sections24
  rw [List.map_append, FilteredChunk448_463.compiled_eq, sections25_eq]
def sections23 := FilteredChunk432_447.sections ++ sections24
theorem sections23_eq : Sections.sections23.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections23 := by
  unfold Sections.sections23 sections23
  rw [List.map_append, FilteredChunk432_447.compiled_eq, sections24_eq]
def sections22 := FilteredChunk416_431.sections ++ sections23
theorem sections22_eq : Sections.sections22.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections22 := by
  unfold Sections.sections22 sections22
  rw [List.map_append, FilteredChunk416_431.compiled_eq, sections23_eq]
def sections21 := FilteredChunk400_415.sections ++ sections22
theorem sections21_eq : Sections.sections21.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections21 := by
  unfold Sections.sections21 sections21
  rw [List.map_append, FilteredChunk400_415.compiled_eq, sections22_eq]
def sections20 := FilteredChunk384_399.sections ++ sections21
theorem sections20_eq : Sections.sections20.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections20 := by
  unfold Sections.sections20 sections20
  rw [List.map_append, FilteredChunk384_399.compiled_eq, sections21_eq]
def sections19 := FilteredChunk368_383.sections ++ sections20
theorem sections19_eq : Sections.sections19.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections19 := by
  unfold Sections.sections19 sections19
  rw [List.map_append, FilteredChunk368_383.compiled_eq, sections20_eq]
def sections18 := FilteredChunk352_367.sections ++ sections19
theorem sections18_eq : Sections.sections18.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections18 := by
  unfold Sections.sections18 sections18
  rw [List.map_append, FilteredChunk352_367.compiled_eq, sections19_eq]
def sections17 := FilteredChunk336_351.sections ++ sections18
theorem sections17_eq : Sections.sections17.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections17 := by
  unfold Sections.sections17 sections17
  rw [List.map_append, FilteredChunk336_351.compiled_eq, sections18_eq]
def sections16 := FilteredChunk320_335.sections ++ sections17
theorem sections16_eq : Sections.sections16.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections16 := by
  unfold Sections.sections16 sections16
  rw [List.map_append, FilteredChunk320_335.compiled_eq, sections17_eq]
def sections15 := FilteredChunk304_319.sections ++ sections16
theorem sections15_eq : Sections.sections15.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections15 := by
  unfold Sections.sections15 sections15
  rw [List.map_append, FilteredChunk304_319.compiled_eq, sections16_eq]
def sections14 := FilteredChunk288_303.sections ++ sections15
theorem sections14_eq : Sections.sections14.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections14 := by
  unfold Sections.sections14 sections14
  rw [List.map_append, FilteredChunk288_303.compiled_eq, sections15_eq]
def sections13 := FilteredChunk272_287.sections ++ sections14
theorem sections13_eq : Sections.sections13.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections13 := by
  unfold Sections.sections13 sections13
  rw [List.map_append, FilteredChunk272_287.compiled_eq, sections14_eq]
def sections12 := FilteredChunk256_271.sections ++ sections13
theorem sections12_eq : Sections.sections12.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections12 := by
  unfold Sections.sections12 sections12
  rw [List.map_append, FilteredChunk256_271.compiled_eq, sections13_eq]
def sections11 := FilteredChunk240_255.sections ++ sections12
theorem sections11_eq : Sections.sections11.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections11 := by
  unfold Sections.sections11 sections11
  rw [List.map_append, FilteredChunk240_255.compiled_eq, sections12_eq]
def sections10 := FilteredChunk224_239.sections ++ sections11
theorem sections10_eq : Sections.sections10.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections10 := by
  unfold Sections.sections10 sections10
  rw [List.map_append, FilteredChunk224_239.compiled_eq, sections11_eq]
def sections9 := FilteredChunk208_223.sections ++ sections10
theorem sections9_eq : Sections.sections9.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections9 := by
  unfold Sections.sections9 sections9
  rw [List.map_append, FilteredChunk208_223.compiled_eq, sections10_eq]
def sections8 := FilteredChunk192_207.sections ++ sections9
theorem sections8_eq : Sections.sections8.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections8 := by
  unfold Sections.sections8 sections8
  rw [List.map_append, FilteredChunk192_207.compiled_eq, sections9_eq]
def sections7 := FilteredChunk176_191.sections ++ sections8
theorem sections7_eq : Sections.sections7.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections7 := by
  unfold Sections.sections7 sections7
  rw [List.map_append, FilteredChunk176_191.compiled_eq, sections8_eq]
def sections6 := FilteredChunk160_175.sections ++ sections7
theorem sections6_eq : Sections.sections6.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections6 := by
  unfold Sections.sections6 sections6
  rw [List.map_append, FilteredChunk160_175.compiled_eq, sections7_eq]
def sections5 := FilteredChunk144_159.sections ++ sections6
theorem sections5_eq : Sections.sections5.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections5 := by
  unfold Sections.sections5 sections5
  rw [List.map_append, FilteredChunk144_159.compiled_eq, sections6_eq]
def sections4 := FilteredChunk128_143.sections ++ sections5
theorem sections4_eq : Sections.sections4.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections4 := by
  unfold Sections.sections4 sections4
  rw [List.map_append, FilteredChunk128_143.compiled_eq, sections5_eq]
def sections3 := FilteredChunk112_127.sections ++ sections4
theorem sections3_eq : Sections.sections3.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections3 := by
  unfold Sections.sections3 sections3
  rw [List.map_append, FilteredChunk112_127.compiled_eq, sections4_eq]
def sections2 := FilteredChunk96_111.sections ++ sections3
theorem sections2_eq : Sections.sections2.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections2 := by
  unfold Sections.sections2 sections2
  rw [List.map_append, FilteredChunk96_111.compiled_eq, sections3_eq]
def sections1 := FilteredChunk80_95.sections ++ sections2
theorem sections1_eq : Sections.sections1.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections1 := by
  unfold Sections.sections1 sections1
  rw [List.map_append, FilteredChunk80_95.compiled_eq, sections2_eq]
def sections0 := FilteredChunk64_79.sections ++ sections1
theorem sections0_eq : Sections.sections0.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections0 := by
  unfold Sections.sections0 sections0
  rw [List.map_append, FilteredChunk64_79.compiled_eq, sections1_eq]
def program := FilteredStubs.sections ++ sections0
theorem map_eq : Sections.program.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = program := by
  unfold Sections.program program
  rw [List.map_append, FilteredStubs.compiled_eq, sections0_eq]
theorem compile_eq : LabFilter.filterSkip Sections.program = program := by
  rw [InitECandidate.Proofs.BackendComputation.filterSkip_eq_map, map_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Filtered
