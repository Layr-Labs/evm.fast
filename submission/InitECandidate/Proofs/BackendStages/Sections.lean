import InitECandidate.Proofs.BackendStages.Named
import InitECandidate.Proofs.BackendStages.SectionStubs
import InitECandidate.Proofs.BackendStages.SectionChunk64_79
import InitECandidate.Proofs.BackendStages.SectionChunk80_95
import InitECandidate.Proofs.BackendStages.SectionChunk96_111
import InitECandidate.Proofs.BackendStages.SectionChunk112_127
import InitECandidate.Proofs.BackendStages.SectionChunk128_143
import InitECandidate.Proofs.BackendStages.SectionChunk144_159
import InitECandidate.Proofs.BackendStages.SectionChunk160_175
import InitECandidate.Proofs.BackendStages.SectionChunk176_191
import InitECandidate.Proofs.BackendStages.SectionChunk192_207
import InitECandidate.Proofs.BackendStages.SectionChunk208_223
import InitECandidate.Proofs.BackendStages.SectionChunk224_239
import InitECandidate.Proofs.BackendStages.SectionChunk240_255
import InitECandidate.Proofs.BackendStages.SectionChunk256_271
import InitECandidate.Proofs.BackendStages.SectionChunk272_287
import InitECandidate.Proofs.BackendStages.SectionChunk288_303
import InitECandidate.Proofs.BackendStages.SectionChunk304_319
import InitECandidate.Proofs.BackendStages.SectionChunk320_335
import InitECandidate.Proofs.BackendStages.SectionChunk336_351
import InitECandidate.Proofs.BackendStages.SectionChunk352_367
import InitECandidate.Proofs.BackendStages.SectionChunk368_383
import InitECandidate.Proofs.BackendStages.SectionChunk384_399
import InitECandidate.Proofs.BackendStages.SectionChunk400_415
import InitECandidate.Proofs.BackendStages.SectionChunk416_431
import InitECandidate.Proofs.BackendStages.SectionChunk432_447
import InitECandidate.Proofs.BackendStages.SectionChunk448_463
import InitECandidate.Proofs.BackendStages.SectionChunk464_479
import InitECandidate.Proofs.BackendStages.SectionChunk480_495
import InitECandidate.Proofs.BackendStages.SectionChunk496_511
import InitECandidate.Proofs.BackendStages.SectionChunk512_527
import InitECandidate.Proofs.BackendStages.SectionChunk528_543
import InitECandidate.Proofs.BackendStages.SectionChunk544_559
import InitECandidate.Proofs.BackendStages.SectionChunk560_575
import InitECandidate.Proofs.BackendStages.SectionChunk576_591
import InitECandidate.Proofs.BackendStages.SectionChunk592_607
import InitECandidate.Proofs.BackendStages.SectionChunk608_623
import InitECandidate.Proofs.BackendStages.SectionChunk624_639
import InitECandidate.Proofs.BackendStages.SectionChunk640_655
import InitECandidate.Proofs.BackendStages.SectionChunk656_671
import InitECandidate.Proofs.BackendStages.SectionChunk672_687
import InitECandidate.Proofs.BackendStages.SectionChunk688_703
import InitECandidate.Proofs.BackendStages.SectionChunk704_719
import InitECandidate.Proofs.BackendStages.SectionChunk720_735
import InitECandidate.Proofs.BackendStages.SectionChunk736_751
import InitECandidate.Proofs.BackendStages.SectionChunk752_767
import InitECandidate.Proofs.BackendStages.SectionChunk768_783
import InitECandidate.Proofs.BackendStages.SectionChunk784_799
import InitECandidate.Proofs.BackendStages.SectionChunk800_815
import InitECandidate.Proofs.BackendStages.SectionChunk816_831
import InitECandidate.Proofs.BackendStages.SectionChunk832_847
import InitECandidate.Proofs.BackendStages.SectionChunk848_863
import InitECandidate.Proofs.BackendStages.SectionChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Sections
def sections51 : LabSem.LabProgHOL 64 := []
theorem sections51_eq : Named.bodies51.map StackToLab.progToSectionHOL = sections51 := by rfl
def sections50 := SectionChunk864_877.sections ++ sections51
theorem sections50_eq : Named.bodies50.map StackToLab.progToSectionHOL = sections50 := by
  unfold Named.bodies50 sections50
  rw [List.map_append, SectionChunk864_877.compiled_eq, sections51_eq]
def sections49 := SectionChunk848_863.sections ++ sections50
theorem sections49_eq : Named.bodies49.map StackToLab.progToSectionHOL = sections49 := by
  unfold Named.bodies49 sections49
  rw [List.map_append, SectionChunk848_863.compiled_eq, sections50_eq]
def sections48 := SectionChunk832_847.sections ++ sections49
theorem sections48_eq : Named.bodies48.map StackToLab.progToSectionHOL = sections48 := by
  unfold Named.bodies48 sections48
  rw [List.map_append, SectionChunk832_847.compiled_eq, sections49_eq]
def sections47 := SectionChunk816_831.sections ++ sections48
theorem sections47_eq : Named.bodies47.map StackToLab.progToSectionHOL = sections47 := by
  unfold Named.bodies47 sections47
  rw [List.map_append, SectionChunk816_831.compiled_eq, sections48_eq]
def sections46 := SectionChunk800_815.sections ++ sections47
theorem sections46_eq : Named.bodies46.map StackToLab.progToSectionHOL = sections46 := by
  unfold Named.bodies46 sections46
  rw [List.map_append, SectionChunk800_815.compiled_eq, sections47_eq]
def sections45 := SectionChunk784_799.sections ++ sections46
theorem sections45_eq : Named.bodies45.map StackToLab.progToSectionHOL = sections45 := by
  unfold Named.bodies45 sections45
  rw [List.map_append, SectionChunk784_799.compiled_eq, sections46_eq]
def sections44 := SectionChunk768_783.sections ++ sections45
theorem sections44_eq : Named.bodies44.map StackToLab.progToSectionHOL = sections44 := by
  unfold Named.bodies44 sections44
  rw [List.map_append, SectionChunk768_783.compiled_eq, sections45_eq]
def sections43 := SectionChunk752_767.sections ++ sections44
theorem sections43_eq : Named.bodies43.map StackToLab.progToSectionHOL = sections43 := by
  unfold Named.bodies43 sections43
  rw [List.map_append, SectionChunk752_767.compiled_eq, sections44_eq]
def sections42 := SectionChunk736_751.sections ++ sections43
theorem sections42_eq : Named.bodies42.map StackToLab.progToSectionHOL = sections42 := by
  unfold Named.bodies42 sections42
  rw [List.map_append, SectionChunk736_751.compiled_eq, sections43_eq]
def sections41 := SectionChunk720_735.sections ++ sections42
theorem sections41_eq : Named.bodies41.map StackToLab.progToSectionHOL = sections41 := by
  unfold Named.bodies41 sections41
  rw [List.map_append, SectionChunk720_735.compiled_eq, sections42_eq]
def sections40 := SectionChunk704_719.sections ++ sections41
theorem sections40_eq : Named.bodies40.map StackToLab.progToSectionHOL = sections40 := by
  unfold Named.bodies40 sections40
  rw [List.map_append, SectionChunk704_719.compiled_eq, sections41_eq]
def sections39 := SectionChunk688_703.sections ++ sections40
theorem sections39_eq : Named.bodies39.map StackToLab.progToSectionHOL = sections39 := by
  unfold Named.bodies39 sections39
  rw [List.map_append, SectionChunk688_703.compiled_eq, sections40_eq]
def sections38 := SectionChunk672_687.sections ++ sections39
theorem sections38_eq : Named.bodies38.map StackToLab.progToSectionHOL = sections38 := by
  unfold Named.bodies38 sections38
  rw [List.map_append, SectionChunk672_687.compiled_eq, sections39_eq]
def sections37 := SectionChunk656_671.sections ++ sections38
theorem sections37_eq : Named.bodies37.map StackToLab.progToSectionHOL = sections37 := by
  unfold Named.bodies37 sections37
  rw [List.map_append, SectionChunk656_671.compiled_eq, sections38_eq]
def sections36 := SectionChunk640_655.sections ++ sections37
theorem sections36_eq : Named.bodies36.map StackToLab.progToSectionHOL = sections36 := by
  unfold Named.bodies36 sections36
  rw [List.map_append, SectionChunk640_655.compiled_eq, sections37_eq]
def sections35 := SectionChunk624_639.sections ++ sections36
theorem sections35_eq : Named.bodies35.map StackToLab.progToSectionHOL = sections35 := by
  unfold Named.bodies35 sections35
  rw [List.map_append, SectionChunk624_639.compiled_eq, sections36_eq]
def sections34 := SectionChunk608_623.sections ++ sections35
theorem sections34_eq : Named.bodies34.map StackToLab.progToSectionHOL = sections34 := by
  unfold Named.bodies34 sections34
  rw [List.map_append, SectionChunk608_623.compiled_eq, sections35_eq]
def sections33 := SectionChunk592_607.sections ++ sections34
theorem sections33_eq : Named.bodies33.map StackToLab.progToSectionHOL = sections33 := by
  unfold Named.bodies33 sections33
  rw [List.map_append, SectionChunk592_607.compiled_eq, sections34_eq]
def sections32 := SectionChunk576_591.sections ++ sections33
theorem sections32_eq : Named.bodies32.map StackToLab.progToSectionHOL = sections32 := by
  unfold Named.bodies32 sections32
  rw [List.map_append, SectionChunk576_591.compiled_eq, sections33_eq]
def sections31 := SectionChunk560_575.sections ++ sections32
theorem sections31_eq : Named.bodies31.map StackToLab.progToSectionHOL = sections31 := by
  unfold Named.bodies31 sections31
  rw [List.map_append, SectionChunk560_575.compiled_eq, sections32_eq]
def sections30 := SectionChunk544_559.sections ++ sections31
theorem sections30_eq : Named.bodies30.map StackToLab.progToSectionHOL = sections30 := by
  unfold Named.bodies30 sections30
  rw [List.map_append, SectionChunk544_559.compiled_eq, sections31_eq]
def sections29 := SectionChunk528_543.sections ++ sections30
theorem sections29_eq : Named.bodies29.map StackToLab.progToSectionHOL = sections29 := by
  unfold Named.bodies29 sections29
  rw [List.map_append, SectionChunk528_543.compiled_eq, sections30_eq]
def sections28 := SectionChunk512_527.sections ++ sections29
theorem sections28_eq : Named.bodies28.map StackToLab.progToSectionHOL = sections28 := by
  unfold Named.bodies28 sections28
  rw [List.map_append, SectionChunk512_527.compiled_eq, sections29_eq]
def sections27 := SectionChunk496_511.sections ++ sections28
theorem sections27_eq : Named.bodies27.map StackToLab.progToSectionHOL = sections27 := by
  unfold Named.bodies27 sections27
  rw [List.map_append, SectionChunk496_511.compiled_eq, sections28_eq]
def sections26 := SectionChunk480_495.sections ++ sections27
theorem sections26_eq : Named.bodies26.map StackToLab.progToSectionHOL = sections26 := by
  unfold Named.bodies26 sections26
  rw [List.map_append, SectionChunk480_495.compiled_eq, sections27_eq]
def sections25 := SectionChunk464_479.sections ++ sections26
theorem sections25_eq : Named.bodies25.map StackToLab.progToSectionHOL = sections25 := by
  unfold Named.bodies25 sections25
  rw [List.map_append, SectionChunk464_479.compiled_eq, sections26_eq]
def sections24 := SectionChunk448_463.sections ++ sections25
theorem sections24_eq : Named.bodies24.map StackToLab.progToSectionHOL = sections24 := by
  unfold Named.bodies24 sections24
  rw [List.map_append, SectionChunk448_463.compiled_eq, sections25_eq]
def sections23 := SectionChunk432_447.sections ++ sections24
theorem sections23_eq : Named.bodies23.map StackToLab.progToSectionHOL = sections23 := by
  unfold Named.bodies23 sections23
  rw [List.map_append, SectionChunk432_447.compiled_eq, sections24_eq]
def sections22 := SectionChunk416_431.sections ++ sections23
theorem sections22_eq : Named.bodies22.map StackToLab.progToSectionHOL = sections22 := by
  unfold Named.bodies22 sections22
  rw [List.map_append, SectionChunk416_431.compiled_eq, sections23_eq]
def sections21 := SectionChunk400_415.sections ++ sections22
theorem sections21_eq : Named.bodies21.map StackToLab.progToSectionHOL = sections21 := by
  unfold Named.bodies21 sections21
  rw [List.map_append, SectionChunk400_415.compiled_eq, sections22_eq]
def sections20 := SectionChunk384_399.sections ++ sections21
theorem sections20_eq : Named.bodies20.map StackToLab.progToSectionHOL = sections20 := by
  unfold Named.bodies20 sections20
  rw [List.map_append, SectionChunk384_399.compiled_eq, sections21_eq]
def sections19 := SectionChunk368_383.sections ++ sections20
theorem sections19_eq : Named.bodies19.map StackToLab.progToSectionHOL = sections19 := by
  unfold Named.bodies19 sections19
  rw [List.map_append, SectionChunk368_383.compiled_eq, sections20_eq]
def sections18 := SectionChunk352_367.sections ++ sections19
theorem sections18_eq : Named.bodies18.map StackToLab.progToSectionHOL = sections18 := by
  unfold Named.bodies18 sections18
  rw [List.map_append, SectionChunk352_367.compiled_eq, sections19_eq]
def sections17 := SectionChunk336_351.sections ++ sections18
theorem sections17_eq : Named.bodies17.map StackToLab.progToSectionHOL = sections17 := by
  unfold Named.bodies17 sections17
  rw [List.map_append, SectionChunk336_351.compiled_eq, sections18_eq]
def sections16 := SectionChunk320_335.sections ++ sections17
theorem sections16_eq : Named.bodies16.map StackToLab.progToSectionHOL = sections16 := by
  unfold Named.bodies16 sections16
  rw [List.map_append, SectionChunk320_335.compiled_eq, sections17_eq]
def sections15 := SectionChunk304_319.sections ++ sections16
theorem sections15_eq : Named.bodies15.map StackToLab.progToSectionHOL = sections15 := by
  unfold Named.bodies15 sections15
  rw [List.map_append, SectionChunk304_319.compiled_eq, sections16_eq]
def sections14 := SectionChunk288_303.sections ++ sections15
theorem sections14_eq : Named.bodies14.map StackToLab.progToSectionHOL = sections14 := by
  unfold Named.bodies14 sections14
  rw [List.map_append, SectionChunk288_303.compiled_eq, sections15_eq]
def sections13 := SectionChunk272_287.sections ++ sections14
theorem sections13_eq : Named.bodies13.map StackToLab.progToSectionHOL = sections13 := by
  unfold Named.bodies13 sections13
  rw [List.map_append, SectionChunk272_287.compiled_eq, sections14_eq]
def sections12 := SectionChunk256_271.sections ++ sections13
theorem sections12_eq : Named.bodies12.map StackToLab.progToSectionHOL = sections12 := by
  unfold Named.bodies12 sections12
  rw [List.map_append, SectionChunk256_271.compiled_eq, sections13_eq]
def sections11 := SectionChunk240_255.sections ++ sections12
theorem sections11_eq : Named.bodies11.map StackToLab.progToSectionHOL = sections11 := by
  unfold Named.bodies11 sections11
  rw [List.map_append, SectionChunk240_255.compiled_eq, sections12_eq]
def sections10 := SectionChunk224_239.sections ++ sections11
theorem sections10_eq : Named.bodies10.map StackToLab.progToSectionHOL = sections10 := by
  unfold Named.bodies10 sections10
  rw [List.map_append, SectionChunk224_239.compiled_eq, sections11_eq]
def sections9 := SectionChunk208_223.sections ++ sections10
theorem sections9_eq : Named.bodies9.map StackToLab.progToSectionHOL = sections9 := by
  unfold Named.bodies9 sections9
  rw [List.map_append, SectionChunk208_223.compiled_eq, sections10_eq]
def sections8 := SectionChunk192_207.sections ++ sections9
theorem sections8_eq : Named.bodies8.map StackToLab.progToSectionHOL = sections8 := by
  unfold Named.bodies8 sections8
  rw [List.map_append, SectionChunk192_207.compiled_eq, sections9_eq]
def sections7 := SectionChunk176_191.sections ++ sections8
theorem sections7_eq : Named.bodies7.map StackToLab.progToSectionHOL = sections7 := by
  unfold Named.bodies7 sections7
  rw [List.map_append, SectionChunk176_191.compiled_eq, sections8_eq]
def sections6 := SectionChunk160_175.sections ++ sections7
theorem sections6_eq : Named.bodies6.map StackToLab.progToSectionHOL = sections6 := by
  unfold Named.bodies6 sections6
  rw [List.map_append, SectionChunk160_175.compiled_eq, sections7_eq]
def sections5 := SectionChunk144_159.sections ++ sections6
theorem sections5_eq : Named.bodies5.map StackToLab.progToSectionHOL = sections5 := by
  unfold Named.bodies5 sections5
  rw [List.map_append, SectionChunk144_159.compiled_eq, sections6_eq]
def sections4 := SectionChunk128_143.sections ++ sections5
theorem sections4_eq : Named.bodies4.map StackToLab.progToSectionHOL = sections4 := by
  unfold Named.bodies4 sections4
  rw [List.map_append, SectionChunk128_143.compiled_eq, sections5_eq]
def sections3 := SectionChunk112_127.sections ++ sections4
theorem sections3_eq : Named.bodies3.map StackToLab.progToSectionHOL = sections3 := by
  unfold Named.bodies3 sections3
  rw [List.map_append, SectionChunk112_127.compiled_eq, sections4_eq]
def sections2 := SectionChunk96_111.sections ++ sections3
theorem sections2_eq : Named.bodies2.map StackToLab.progToSectionHOL = sections2 := by
  unfold Named.bodies2 sections2
  rw [List.map_append, SectionChunk96_111.compiled_eq, sections3_eq]
def sections1 := SectionChunk80_95.sections ++ sections2
theorem sections1_eq : Named.bodies1.map StackToLab.progToSectionHOL = sections1 := by
  unfold Named.bodies1 sections1
  rw [List.map_append, SectionChunk80_95.compiled_eq, sections2_eq]
def sections0 := SectionChunk64_79.sections ++ sections1
theorem sections0_eq : Named.bodies0.map StackToLab.progToSectionHOL = sections0 := by
  unfold Named.bodies0 sections0
  rw [List.map_append, SectionChunk64_79.compiled_eq, sections1_eq]
def program := SectionStubs ++ sections0
theorem named_eq : Named.stack.map StackToLab.progToSectionHOL = program := by
  unfold Named.stack program
  rw [List.map_append, SectionStubs_eq, sections0_eq]
theorem compile_eq : StackToLab.compile RiscVConfig.pancakeRiscVBackendConfig.stackConf RiscVConfig.pancakeRiscVBackendConfig.dataConf (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset Native.stack = program := by
  unfold StackToLab.compile
  dsimp only
  rw [Raw.compile_eq, Alloc.compile_eq]
  change (StackNames.compileHOL RiscVConfig.riscvNames (StackRemove.compileHOL false riscvConfig.addrOffset (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation Alloc.stack)).map StackToLab.progToSectionHOL = program
  rw [Removed.compile_eq, Named.compile_eq, named_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Sections
