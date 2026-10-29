import InitECandidate.Proofs.BackendStages.Removed
import InitECandidate.Proofs.BackendStages.NamedStubs
import InitECandidate.Proofs.BackendStages.NamedChunk64_79
import InitECandidate.Proofs.BackendStages.NamedChunk80_95
import InitECandidate.Proofs.BackendStages.NamedChunk96_111
import InitECandidate.Proofs.BackendStages.NamedChunk112_127
import InitECandidate.Proofs.BackendStages.NamedChunk128_143
import InitECandidate.Proofs.BackendStages.NamedChunk144_159
import InitECandidate.Proofs.BackendStages.NamedChunk160_175
import InitECandidate.Proofs.BackendStages.NamedChunk176_191
import InitECandidate.Proofs.BackendStages.NamedChunk192_207
import InitECandidate.Proofs.BackendStages.NamedChunk208_223
import InitECandidate.Proofs.BackendStages.NamedChunk224_239
import InitECandidate.Proofs.BackendStages.NamedChunk240_255
import InitECandidate.Proofs.BackendStages.NamedChunk256_271
import InitECandidate.Proofs.BackendStages.NamedChunk272_287
import InitECandidate.Proofs.BackendStages.NamedChunk288_303
import InitECandidate.Proofs.BackendStages.NamedChunk304_319
import InitECandidate.Proofs.BackendStages.NamedChunk320_335
import InitECandidate.Proofs.BackendStages.NamedChunk336_351
import InitECandidate.Proofs.BackendStages.NamedChunk352_367
import InitECandidate.Proofs.BackendStages.NamedChunk368_383
import InitECandidate.Proofs.BackendStages.NamedChunk384_399
import InitECandidate.Proofs.BackendStages.NamedChunk400_415
import InitECandidate.Proofs.BackendStages.NamedChunk416_431
import InitECandidate.Proofs.BackendStages.NamedChunk432_447
import InitECandidate.Proofs.BackendStages.NamedChunk448_463
import InitECandidate.Proofs.BackendStages.NamedChunk464_479
import InitECandidate.Proofs.BackendStages.NamedChunk480_495
import InitECandidate.Proofs.BackendStages.NamedChunk496_511
import InitECandidate.Proofs.BackendStages.NamedChunk512_527
import InitECandidate.Proofs.BackendStages.NamedChunk528_543
import InitECandidate.Proofs.BackendStages.NamedChunk544_559
import InitECandidate.Proofs.BackendStages.NamedChunk560_575
import InitECandidate.Proofs.BackendStages.NamedChunk576_591
import InitECandidate.Proofs.BackendStages.NamedChunk592_607
import InitECandidate.Proofs.BackendStages.NamedChunk608_623
import InitECandidate.Proofs.BackendStages.NamedChunk624_639
import InitECandidate.Proofs.BackendStages.NamedChunk640_655
import InitECandidate.Proofs.BackendStages.NamedChunk656_671
import InitECandidate.Proofs.BackendStages.NamedChunk672_687
import InitECandidate.Proofs.BackendStages.NamedChunk688_703
import InitECandidate.Proofs.BackendStages.NamedChunk704_719
import InitECandidate.Proofs.BackendStages.NamedChunk720_735
import InitECandidate.Proofs.BackendStages.NamedChunk736_751
import InitECandidate.Proofs.BackendStages.NamedChunk752_767
import InitECandidate.Proofs.BackendStages.NamedChunk768_783
import InitECandidate.Proofs.BackendStages.NamedChunk784_799
import InitECandidate.Proofs.BackendStages.NamedChunk800_815
import InitECandidate.Proofs.BackendStages.NamedChunk816_831
import InitECandidate.Proofs.BackendStages.NamedChunk832_847
import InitECandidate.Proofs.BackendStages.NamedChunk848_863
import InitECandidate.Proofs.BackendStages.NamedChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Named
def bodies51 : List (Nat × StackLang.HolProg 64) := []
theorem bodies51_eq : Removed.bodies51.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies51 := by rfl
def bodies50 := NamedChunk864_877.bodies ++ bodies51
theorem bodies50_eq : Removed.bodies50.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies50 := by
  unfold Removed.bodies50 bodies50
  rw [List.map_append, NamedChunk864_877.compiled_eq, bodies51_eq]
def bodies49 := NamedChunk848_863.bodies ++ bodies50
theorem bodies49_eq : Removed.bodies49.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies49 := by
  unfold Removed.bodies49 bodies49
  rw [List.map_append, NamedChunk848_863.compiled_eq, bodies50_eq]
def bodies48 := NamedChunk832_847.bodies ++ bodies49
theorem bodies48_eq : Removed.bodies48.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies48 := by
  unfold Removed.bodies48 bodies48
  rw [List.map_append, NamedChunk832_847.compiled_eq, bodies49_eq]
def bodies47 := NamedChunk816_831.bodies ++ bodies48
theorem bodies47_eq : Removed.bodies47.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies47 := by
  unfold Removed.bodies47 bodies47
  rw [List.map_append, NamedChunk816_831.compiled_eq, bodies48_eq]
def bodies46 := NamedChunk800_815.bodies ++ bodies47
theorem bodies46_eq : Removed.bodies46.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies46 := by
  unfold Removed.bodies46 bodies46
  rw [List.map_append, NamedChunk800_815.compiled_eq, bodies47_eq]
def bodies45 := NamedChunk784_799.bodies ++ bodies46
theorem bodies45_eq : Removed.bodies45.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies45 := by
  unfold Removed.bodies45 bodies45
  rw [List.map_append, NamedChunk784_799.compiled_eq, bodies46_eq]
def bodies44 := NamedChunk768_783.bodies ++ bodies45
theorem bodies44_eq : Removed.bodies44.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies44 := by
  unfold Removed.bodies44 bodies44
  rw [List.map_append, NamedChunk768_783.compiled_eq, bodies45_eq]
def bodies43 := NamedChunk752_767.bodies ++ bodies44
theorem bodies43_eq : Removed.bodies43.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies43 := by
  unfold Removed.bodies43 bodies43
  rw [List.map_append, NamedChunk752_767.compiled_eq, bodies44_eq]
def bodies42 := NamedChunk736_751.bodies ++ bodies43
theorem bodies42_eq : Removed.bodies42.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies42 := by
  unfold Removed.bodies42 bodies42
  rw [List.map_append, NamedChunk736_751.compiled_eq, bodies43_eq]
def bodies41 := NamedChunk720_735.bodies ++ bodies42
theorem bodies41_eq : Removed.bodies41.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies41 := by
  unfold Removed.bodies41 bodies41
  rw [List.map_append, NamedChunk720_735.compiled_eq, bodies42_eq]
def bodies40 := NamedChunk704_719.bodies ++ bodies41
theorem bodies40_eq : Removed.bodies40.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies40 := by
  unfold Removed.bodies40 bodies40
  rw [List.map_append, NamedChunk704_719.compiled_eq, bodies41_eq]
def bodies39 := NamedChunk688_703.bodies ++ bodies40
theorem bodies39_eq : Removed.bodies39.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies39 := by
  unfold Removed.bodies39 bodies39
  rw [List.map_append, NamedChunk688_703.compiled_eq, bodies40_eq]
def bodies38 := NamedChunk672_687.bodies ++ bodies39
theorem bodies38_eq : Removed.bodies38.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies38 := by
  unfold Removed.bodies38 bodies38
  rw [List.map_append, NamedChunk672_687.compiled_eq, bodies39_eq]
def bodies37 := NamedChunk656_671.bodies ++ bodies38
theorem bodies37_eq : Removed.bodies37.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies37 := by
  unfold Removed.bodies37 bodies37
  rw [List.map_append, NamedChunk656_671.compiled_eq, bodies38_eq]
def bodies36 := NamedChunk640_655.bodies ++ bodies37
theorem bodies36_eq : Removed.bodies36.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies36 := by
  unfold Removed.bodies36 bodies36
  rw [List.map_append, NamedChunk640_655.compiled_eq, bodies37_eq]
def bodies35 := NamedChunk624_639.bodies ++ bodies36
theorem bodies35_eq : Removed.bodies35.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies35 := by
  unfold Removed.bodies35 bodies35
  rw [List.map_append, NamedChunk624_639.compiled_eq, bodies36_eq]
def bodies34 := NamedChunk608_623.bodies ++ bodies35
theorem bodies34_eq : Removed.bodies34.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies34 := by
  unfold Removed.bodies34 bodies34
  rw [List.map_append, NamedChunk608_623.compiled_eq, bodies35_eq]
def bodies33 := NamedChunk592_607.bodies ++ bodies34
theorem bodies33_eq : Removed.bodies33.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies33 := by
  unfold Removed.bodies33 bodies33
  rw [List.map_append, NamedChunk592_607.compiled_eq, bodies34_eq]
def bodies32 := NamedChunk576_591.bodies ++ bodies33
theorem bodies32_eq : Removed.bodies32.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies32 := by
  unfold Removed.bodies32 bodies32
  rw [List.map_append, NamedChunk576_591.compiled_eq, bodies33_eq]
def bodies31 := NamedChunk560_575.bodies ++ bodies32
theorem bodies31_eq : Removed.bodies31.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies31 := by
  unfold Removed.bodies31 bodies31
  rw [List.map_append, NamedChunk560_575.compiled_eq, bodies32_eq]
def bodies30 := NamedChunk544_559.bodies ++ bodies31
theorem bodies30_eq : Removed.bodies30.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies30 := by
  unfold Removed.bodies30 bodies30
  rw [List.map_append, NamedChunk544_559.compiled_eq, bodies31_eq]
def bodies29 := NamedChunk528_543.bodies ++ bodies30
theorem bodies29_eq : Removed.bodies29.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies29 := by
  unfold Removed.bodies29 bodies29
  rw [List.map_append, NamedChunk528_543.compiled_eq, bodies30_eq]
def bodies28 := NamedChunk512_527.bodies ++ bodies29
theorem bodies28_eq : Removed.bodies28.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies28 := by
  unfold Removed.bodies28 bodies28
  rw [List.map_append, NamedChunk512_527.compiled_eq, bodies29_eq]
def bodies27 := NamedChunk496_511.bodies ++ bodies28
theorem bodies27_eq : Removed.bodies27.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies27 := by
  unfold Removed.bodies27 bodies27
  rw [List.map_append, NamedChunk496_511.compiled_eq, bodies28_eq]
def bodies26 := NamedChunk480_495.bodies ++ bodies27
theorem bodies26_eq : Removed.bodies26.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies26 := by
  unfold Removed.bodies26 bodies26
  rw [List.map_append, NamedChunk480_495.compiled_eq, bodies27_eq]
def bodies25 := NamedChunk464_479.bodies ++ bodies26
theorem bodies25_eq : Removed.bodies25.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies25 := by
  unfold Removed.bodies25 bodies25
  rw [List.map_append, NamedChunk464_479.compiled_eq, bodies26_eq]
def bodies24 := NamedChunk448_463.bodies ++ bodies25
theorem bodies24_eq : Removed.bodies24.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies24 := by
  unfold Removed.bodies24 bodies24
  rw [List.map_append, NamedChunk448_463.compiled_eq, bodies25_eq]
def bodies23 := NamedChunk432_447.bodies ++ bodies24
theorem bodies23_eq : Removed.bodies23.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies23 := by
  unfold Removed.bodies23 bodies23
  rw [List.map_append, NamedChunk432_447.compiled_eq, bodies24_eq]
def bodies22 := NamedChunk416_431.bodies ++ bodies23
theorem bodies22_eq : Removed.bodies22.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies22 := by
  unfold Removed.bodies22 bodies22
  rw [List.map_append, NamedChunk416_431.compiled_eq, bodies23_eq]
def bodies21 := NamedChunk400_415.bodies ++ bodies22
theorem bodies21_eq : Removed.bodies21.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies21 := by
  unfold Removed.bodies21 bodies21
  rw [List.map_append, NamedChunk400_415.compiled_eq, bodies22_eq]
def bodies20 := NamedChunk384_399.bodies ++ bodies21
theorem bodies20_eq : Removed.bodies20.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies20 := by
  unfold Removed.bodies20 bodies20
  rw [List.map_append, NamedChunk384_399.compiled_eq, bodies21_eq]
def bodies19 := NamedChunk368_383.bodies ++ bodies20
theorem bodies19_eq : Removed.bodies19.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies19 := by
  unfold Removed.bodies19 bodies19
  rw [List.map_append, NamedChunk368_383.compiled_eq, bodies20_eq]
def bodies18 := NamedChunk352_367.bodies ++ bodies19
theorem bodies18_eq : Removed.bodies18.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies18 := by
  unfold Removed.bodies18 bodies18
  rw [List.map_append, NamedChunk352_367.compiled_eq, bodies19_eq]
def bodies17 := NamedChunk336_351.bodies ++ bodies18
theorem bodies17_eq : Removed.bodies17.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies17 := by
  unfold Removed.bodies17 bodies17
  rw [List.map_append, NamedChunk336_351.compiled_eq, bodies18_eq]
def bodies16 := NamedChunk320_335.bodies ++ bodies17
theorem bodies16_eq : Removed.bodies16.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies16 := by
  unfold Removed.bodies16 bodies16
  rw [List.map_append, NamedChunk320_335.compiled_eq, bodies17_eq]
def bodies15 := NamedChunk304_319.bodies ++ bodies16
theorem bodies15_eq : Removed.bodies15.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies15 := by
  unfold Removed.bodies15 bodies15
  rw [List.map_append, NamedChunk304_319.compiled_eq, bodies16_eq]
def bodies14 := NamedChunk288_303.bodies ++ bodies15
theorem bodies14_eq : Removed.bodies14.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies14 := by
  unfold Removed.bodies14 bodies14
  rw [List.map_append, NamedChunk288_303.compiled_eq, bodies15_eq]
def bodies13 := NamedChunk272_287.bodies ++ bodies14
theorem bodies13_eq : Removed.bodies13.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies13 := by
  unfold Removed.bodies13 bodies13
  rw [List.map_append, NamedChunk272_287.compiled_eq, bodies14_eq]
def bodies12 := NamedChunk256_271.bodies ++ bodies13
theorem bodies12_eq : Removed.bodies12.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies12 := by
  unfold Removed.bodies12 bodies12
  rw [List.map_append, NamedChunk256_271.compiled_eq, bodies13_eq]
def bodies11 := NamedChunk240_255.bodies ++ bodies12
theorem bodies11_eq : Removed.bodies11.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies11 := by
  unfold Removed.bodies11 bodies11
  rw [List.map_append, NamedChunk240_255.compiled_eq, bodies12_eq]
def bodies10 := NamedChunk224_239.bodies ++ bodies11
theorem bodies10_eq : Removed.bodies10.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies10 := by
  unfold Removed.bodies10 bodies10
  rw [List.map_append, NamedChunk224_239.compiled_eq, bodies11_eq]
def bodies9 := NamedChunk208_223.bodies ++ bodies10
theorem bodies9_eq : Removed.bodies9.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies9 := by
  unfold Removed.bodies9 bodies9
  rw [List.map_append, NamedChunk208_223.compiled_eq, bodies10_eq]
def bodies8 := NamedChunk192_207.bodies ++ bodies9
theorem bodies8_eq : Removed.bodies8.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies8 := by
  unfold Removed.bodies8 bodies8
  rw [List.map_append, NamedChunk192_207.compiled_eq, bodies9_eq]
def bodies7 := NamedChunk176_191.bodies ++ bodies8
theorem bodies7_eq : Removed.bodies7.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies7 := by
  unfold Removed.bodies7 bodies7
  rw [List.map_append, NamedChunk176_191.compiled_eq, bodies8_eq]
def bodies6 := NamedChunk160_175.bodies ++ bodies7
theorem bodies6_eq : Removed.bodies6.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies6 := by
  unfold Removed.bodies6 bodies6
  rw [List.map_append, NamedChunk160_175.compiled_eq, bodies7_eq]
def bodies5 := NamedChunk144_159.bodies ++ bodies6
theorem bodies5_eq : Removed.bodies5.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies5 := by
  unfold Removed.bodies5 bodies5
  rw [List.map_append, NamedChunk144_159.compiled_eq, bodies6_eq]
def bodies4 := NamedChunk128_143.bodies ++ bodies5
theorem bodies4_eq : Removed.bodies4.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies4 := by
  unfold Removed.bodies4 bodies4
  rw [List.map_append, NamedChunk128_143.compiled_eq, bodies5_eq]
def bodies3 := NamedChunk112_127.bodies ++ bodies4
theorem bodies3_eq : Removed.bodies3.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies3 := by
  unfold Removed.bodies3 bodies3
  rw [List.map_append, NamedChunk112_127.compiled_eq, bodies4_eq]
def bodies2 := NamedChunk96_111.bodies ++ bodies3
theorem bodies2_eq : Removed.bodies2.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies2 := by
  unfold Removed.bodies2 bodies2
  rw [List.map_append, NamedChunk96_111.compiled_eq, bodies3_eq]
def bodies1 := NamedChunk80_95.bodies ++ bodies2
theorem bodies1_eq : Removed.bodies1.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies1 := by
  unfold Removed.bodies1 bodies1
  rw [List.map_append, NamedChunk80_95.compiled_eq, bodies2_eq]
def bodies0 := NamedChunk64_79.bodies ++ bodies1
theorem bodies0_eq : Removed.bodies0.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies0 := by
  unfold Removed.bodies0 bodies0
  rw [List.map_append, NamedChunk64_79.compiled_eq, bodies1_eq]
def stack := NamedStubs ++ bodies0
theorem compile_eq : StackNames.compileHOL RiscVConfig.riscvNames Removed.stack = stack := by
  unfold StackNames.compileHOL Removed.stack stack
  rw [List.map_append, NamedStubs_eq, bodies0_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Named
