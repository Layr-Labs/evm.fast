import InitECandidate.Proofs.BackendStages.Raw
import InitECandidate.Proofs.BackendStages.AllocStubs
import InitECandidate.Proofs.BackendStages.AllocChunk64_79
import InitECandidate.Proofs.BackendStages.AllocChunk80_95
import InitECandidate.Proofs.BackendStages.AllocChunk96_111
import InitECandidate.Proofs.BackendStages.AllocChunk112_127
import InitECandidate.Proofs.BackendStages.AllocChunk128_143
import InitECandidate.Proofs.BackendStages.AllocChunk144_159
import InitECandidate.Proofs.BackendStages.AllocChunk160_175
import InitECandidate.Proofs.BackendStages.AllocChunk176_191
import InitECandidate.Proofs.BackendStages.AllocChunk192_207
import InitECandidate.Proofs.BackendStages.AllocChunk208_223
import InitECandidate.Proofs.BackendStages.AllocChunk224_239
import InitECandidate.Proofs.BackendStages.AllocChunk240_255
import InitECandidate.Proofs.BackendStages.AllocChunk256_271
import InitECandidate.Proofs.BackendStages.AllocChunk272_287
import InitECandidate.Proofs.BackendStages.AllocChunk288_303
import InitECandidate.Proofs.BackendStages.AllocChunk304_319
import InitECandidate.Proofs.BackendStages.AllocChunk320_335
import InitECandidate.Proofs.BackendStages.AllocChunk336_351
import InitECandidate.Proofs.BackendStages.AllocChunk352_367
import InitECandidate.Proofs.BackendStages.AllocChunk368_383
import InitECandidate.Proofs.BackendStages.AllocChunk384_399
import InitECandidate.Proofs.BackendStages.AllocChunk400_415
import InitECandidate.Proofs.BackendStages.AllocChunk416_431
import InitECandidate.Proofs.BackendStages.AllocChunk432_447
import InitECandidate.Proofs.BackendStages.AllocChunk448_463
import InitECandidate.Proofs.BackendStages.AllocChunk464_479
import InitECandidate.Proofs.BackendStages.AllocChunk480_495
import InitECandidate.Proofs.BackendStages.AllocChunk496_511
import InitECandidate.Proofs.BackendStages.AllocChunk512_527
import InitECandidate.Proofs.BackendStages.AllocChunk528_543
import InitECandidate.Proofs.BackendStages.AllocChunk544_559
import InitECandidate.Proofs.BackendStages.AllocChunk560_575
import InitECandidate.Proofs.BackendStages.AllocChunk576_591
import InitECandidate.Proofs.BackendStages.AllocChunk592_607
import InitECandidate.Proofs.BackendStages.AllocChunk608_623
import InitECandidate.Proofs.BackendStages.AllocChunk624_639
import InitECandidate.Proofs.BackendStages.AllocChunk640_655
import InitECandidate.Proofs.BackendStages.AllocChunk656_671
import InitECandidate.Proofs.BackendStages.AllocChunk672_687
import InitECandidate.Proofs.BackendStages.AllocChunk688_703
import InitECandidate.Proofs.BackendStages.AllocChunk704_719
import InitECandidate.Proofs.BackendStages.AllocChunk720_735
import InitECandidate.Proofs.BackendStages.AllocChunk736_751
import InitECandidate.Proofs.BackendStages.AllocChunk752_767
import InitECandidate.Proofs.BackendStages.AllocChunk768_783
import InitECandidate.Proofs.BackendStages.AllocChunk784_799
import InitECandidate.Proofs.BackendStages.AllocChunk800_815
import InitECandidate.Proofs.BackendStages.AllocChunk816_831
import InitECandidate.Proofs.BackendStages.AllocChunk832_847
import InitECandidate.Proofs.BackendStages.AllocChunk848_863
import InitECandidate.Proofs.BackendStages.AllocChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Alloc
def bodies51 : List (Nat × StackLang.HolProg 64) := []
theorem bodies51_eq : Raw.bodies51.map (StackAlloc.progComp) = bodies51 := by rfl
def bodies50 := AllocChunk864_877.bodies ++ bodies51
theorem bodies50_eq : Raw.bodies50.map (StackAlloc.progComp) = bodies50 := by
  unfold Raw.bodies50 bodies50
  rw [List.map_append, AllocChunk864_877.compiled_eq, bodies51_eq]
def bodies49 := AllocChunk848_863.bodies ++ bodies50
theorem bodies49_eq : Raw.bodies49.map (StackAlloc.progComp) = bodies49 := by
  unfold Raw.bodies49 bodies49
  rw [List.map_append, AllocChunk848_863.compiled_eq, bodies50_eq]
def bodies48 := AllocChunk832_847.bodies ++ bodies49
theorem bodies48_eq : Raw.bodies48.map (StackAlloc.progComp) = bodies48 := by
  unfold Raw.bodies48 bodies48
  rw [List.map_append, AllocChunk832_847.compiled_eq, bodies49_eq]
def bodies47 := AllocChunk816_831.bodies ++ bodies48
theorem bodies47_eq : Raw.bodies47.map (StackAlloc.progComp) = bodies47 := by
  unfold Raw.bodies47 bodies47
  rw [List.map_append, AllocChunk816_831.compiled_eq, bodies48_eq]
def bodies46 := AllocChunk800_815.bodies ++ bodies47
theorem bodies46_eq : Raw.bodies46.map (StackAlloc.progComp) = bodies46 := by
  unfold Raw.bodies46 bodies46
  rw [List.map_append, AllocChunk800_815.compiled_eq, bodies47_eq]
def bodies45 := AllocChunk784_799.bodies ++ bodies46
theorem bodies45_eq : Raw.bodies45.map (StackAlloc.progComp) = bodies45 := by
  unfold Raw.bodies45 bodies45
  rw [List.map_append, AllocChunk784_799.compiled_eq, bodies46_eq]
def bodies44 := AllocChunk768_783.bodies ++ bodies45
theorem bodies44_eq : Raw.bodies44.map (StackAlloc.progComp) = bodies44 := by
  unfold Raw.bodies44 bodies44
  rw [List.map_append, AllocChunk768_783.compiled_eq, bodies45_eq]
def bodies43 := AllocChunk752_767.bodies ++ bodies44
theorem bodies43_eq : Raw.bodies43.map (StackAlloc.progComp) = bodies43 := by
  unfold Raw.bodies43 bodies43
  rw [List.map_append, AllocChunk752_767.compiled_eq, bodies44_eq]
def bodies42 := AllocChunk736_751.bodies ++ bodies43
theorem bodies42_eq : Raw.bodies42.map (StackAlloc.progComp) = bodies42 := by
  unfold Raw.bodies42 bodies42
  rw [List.map_append, AllocChunk736_751.compiled_eq, bodies43_eq]
def bodies41 := AllocChunk720_735.bodies ++ bodies42
theorem bodies41_eq : Raw.bodies41.map (StackAlloc.progComp) = bodies41 := by
  unfold Raw.bodies41 bodies41
  rw [List.map_append, AllocChunk720_735.compiled_eq, bodies42_eq]
def bodies40 := AllocChunk704_719.bodies ++ bodies41
theorem bodies40_eq : Raw.bodies40.map (StackAlloc.progComp) = bodies40 := by
  unfold Raw.bodies40 bodies40
  rw [List.map_append, AllocChunk704_719.compiled_eq, bodies41_eq]
def bodies39 := AllocChunk688_703.bodies ++ bodies40
theorem bodies39_eq : Raw.bodies39.map (StackAlloc.progComp) = bodies39 := by
  unfold Raw.bodies39 bodies39
  rw [List.map_append, AllocChunk688_703.compiled_eq, bodies40_eq]
def bodies38 := AllocChunk672_687.bodies ++ bodies39
theorem bodies38_eq : Raw.bodies38.map (StackAlloc.progComp) = bodies38 := by
  unfold Raw.bodies38 bodies38
  rw [List.map_append, AllocChunk672_687.compiled_eq, bodies39_eq]
def bodies37 := AllocChunk656_671.bodies ++ bodies38
theorem bodies37_eq : Raw.bodies37.map (StackAlloc.progComp) = bodies37 := by
  unfold Raw.bodies37 bodies37
  rw [List.map_append, AllocChunk656_671.compiled_eq, bodies38_eq]
def bodies36 := AllocChunk640_655.bodies ++ bodies37
theorem bodies36_eq : Raw.bodies36.map (StackAlloc.progComp) = bodies36 := by
  unfold Raw.bodies36 bodies36
  rw [List.map_append, AllocChunk640_655.compiled_eq, bodies37_eq]
def bodies35 := AllocChunk624_639.bodies ++ bodies36
theorem bodies35_eq : Raw.bodies35.map (StackAlloc.progComp) = bodies35 := by
  unfold Raw.bodies35 bodies35
  rw [List.map_append, AllocChunk624_639.compiled_eq, bodies36_eq]
def bodies34 := AllocChunk608_623.bodies ++ bodies35
theorem bodies34_eq : Raw.bodies34.map (StackAlloc.progComp) = bodies34 := by
  unfold Raw.bodies34 bodies34
  rw [List.map_append, AllocChunk608_623.compiled_eq, bodies35_eq]
def bodies33 := AllocChunk592_607.bodies ++ bodies34
theorem bodies33_eq : Raw.bodies33.map (StackAlloc.progComp) = bodies33 := by
  unfold Raw.bodies33 bodies33
  rw [List.map_append, AllocChunk592_607.compiled_eq, bodies34_eq]
def bodies32 := AllocChunk576_591.bodies ++ bodies33
theorem bodies32_eq : Raw.bodies32.map (StackAlloc.progComp) = bodies32 := by
  unfold Raw.bodies32 bodies32
  rw [List.map_append, AllocChunk576_591.compiled_eq, bodies33_eq]
def bodies31 := AllocChunk560_575.bodies ++ bodies32
theorem bodies31_eq : Raw.bodies31.map (StackAlloc.progComp) = bodies31 := by
  unfold Raw.bodies31 bodies31
  rw [List.map_append, AllocChunk560_575.compiled_eq, bodies32_eq]
def bodies30 := AllocChunk544_559.bodies ++ bodies31
theorem bodies30_eq : Raw.bodies30.map (StackAlloc.progComp) = bodies30 := by
  unfold Raw.bodies30 bodies30
  rw [List.map_append, AllocChunk544_559.compiled_eq, bodies31_eq]
def bodies29 := AllocChunk528_543.bodies ++ bodies30
theorem bodies29_eq : Raw.bodies29.map (StackAlloc.progComp) = bodies29 := by
  unfold Raw.bodies29 bodies29
  rw [List.map_append, AllocChunk528_543.compiled_eq, bodies30_eq]
def bodies28 := AllocChunk512_527.bodies ++ bodies29
theorem bodies28_eq : Raw.bodies28.map (StackAlloc.progComp) = bodies28 := by
  unfold Raw.bodies28 bodies28
  rw [List.map_append, AllocChunk512_527.compiled_eq, bodies29_eq]
def bodies27 := AllocChunk496_511.bodies ++ bodies28
theorem bodies27_eq : Raw.bodies27.map (StackAlloc.progComp) = bodies27 := by
  unfold Raw.bodies27 bodies27
  rw [List.map_append, AllocChunk496_511.compiled_eq, bodies28_eq]
def bodies26 := AllocChunk480_495.bodies ++ bodies27
theorem bodies26_eq : Raw.bodies26.map (StackAlloc.progComp) = bodies26 := by
  unfold Raw.bodies26 bodies26
  rw [List.map_append, AllocChunk480_495.compiled_eq, bodies27_eq]
def bodies25 := AllocChunk464_479.bodies ++ bodies26
theorem bodies25_eq : Raw.bodies25.map (StackAlloc.progComp) = bodies25 := by
  unfold Raw.bodies25 bodies25
  rw [List.map_append, AllocChunk464_479.compiled_eq, bodies26_eq]
def bodies24 := AllocChunk448_463.bodies ++ bodies25
theorem bodies24_eq : Raw.bodies24.map (StackAlloc.progComp) = bodies24 := by
  unfold Raw.bodies24 bodies24
  rw [List.map_append, AllocChunk448_463.compiled_eq, bodies25_eq]
def bodies23 := AllocChunk432_447.bodies ++ bodies24
theorem bodies23_eq : Raw.bodies23.map (StackAlloc.progComp) = bodies23 := by
  unfold Raw.bodies23 bodies23
  rw [List.map_append, AllocChunk432_447.compiled_eq, bodies24_eq]
def bodies22 := AllocChunk416_431.bodies ++ bodies23
theorem bodies22_eq : Raw.bodies22.map (StackAlloc.progComp) = bodies22 := by
  unfold Raw.bodies22 bodies22
  rw [List.map_append, AllocChunk416_431.compiled_eq, bodies23_eq]
def bodies21 := AllocChunk400_415.bodies ++ bodies22
theorem bodies21_eq : Raw.bodies21.map (StackAlloc.progComp) = bodies21 := by
  unfold Raw.bodies21 bodies21
  rw [List.map_append, AllocChunk400_415.compiled_eq, bodies22_eq]
def bodies20 := AllocChunk384_399.bodies ++ bodies21
theorem bodies20_eq : Raw.bodies20.map (StackAlloc.progComp) = bodies20 := by
  unfold Raw.bodies20 bodies20
  rw [List.map_append, AllocChunk384_399.compiled_eq, bodies21_eq]
def bodies19 := AllocChunk368_383.bodies ++ bodies20
theorem bodies19_eq : Raw.bodies19.map (StackAlloc.progComp) = bodies19 := by
  unfold Raw.bodies19 bodies19
  rw [List.map_append, AllocChunk368_383.compiled_eq, bodies20_eq]
def bodies18 := AllocChunk352_367.bodies ++ bodies19
theorem bodies18_eq : Raw.bodies18.map (StackAlloc.progComp) = bodies18 := by
  unfold Raw.bodies18 bodies18
  rw [List.map_append, AllocChunk352_367.compiled_eq, bodies19_eq]
def bodies17 := AllocChunk336_351.bodies ++ bodies18
theorem bodies17_eq : Raw.bodies17.map (StackAlloc.progComp) = bodies17 := by
  unfold Raw.bodies17 bodies17
  rw [List.map_append, AllocChunk336_351.compiled_eq, bodies18_eq]
def bodies16 := AllocChunk320_335.bodies ++ bodies17
theorem bodies16_eq : Raw.bodies16.map (StackAlloc.progComp) = bodies16 := by
  unfold Raw.bodies16 bodies16
  rw [List.map_append, AllocChunk320_335.compiled_eq, bodies17_eq]
def bodies15 := AllocChunk304_319.bodies ++ bodies16
theorem bodies15_eq : Raw.bodies15.map (StackAlloc.progComp) = bodies15 := by
  unfold Raw.bodies15 bodies15
  rw [List.map_append, AllocChunk304_319.compiled_eq, bodies16_eq]
def bodies14 := AllocChunk288_303.bodies ++ bodies15
theorem bodies14_eq : Raw.bodies14.map (StackAlloc.progComp) = bodies14 := by
  unfold Raw.bodies14 bodies14
  rw [List.map_append, AllocChunk288_303.compiled_eq, bodies15_eq]
def bodies13 := AllocChunk272_287.bodies ++ bodies14
theorem bodies13_eq : Raw.bodies13.map (StackAlloc.progComp) = bodies13 := by
  unfold Raw.bodies13 bodies13
  rw [List.map_append, AllocChunk272_287.compiled_eq, bodies14_eq]
def bodies12 := AllocChunk256_271.bodies ++ bodies13
theorem bodies12_eq : Raw.bodies12.map (StackAlloc.progComp) = bodies12 := by
  unfold Raw.bodies12 bodies12
  rw [List.map_append, AllocChunk256_271.compiled_eq, bodies13_eq]
def bodies11 := AllocChunk240_255.bodies ++ bodies12
theorem bodies11_eq : Raw.bodies11.map (StackAlloc.progComp) = bodies11 := by
  unfold Raw.bodies11 bodies11
  rw [List.map_append, AllocChunk240_255.compiled_eq, bodies12_eq]
def bodies10 := AllocChunk224_239.bodies ++ bodies11
theorem bodies10_eq : Raw.bodies10.map (StackAlloc.progComp) = bodies10 := by
  unfold Raw.bodies10 bodies10
  rw [List.map_append, AllocChunk224_239.compiled_eq, bodies11_eq]
def bodies9 := AllocChunk208_223.bodies ++ bodies10
theorem bodies9_eq : Raw.bodies9.map (StackAlloc.progComp) = bodies9 := by
  unfold Raw.bodies9 bodies9
  rw [List.map_append, AllocChunk208_223.compiled_eq, bodies10_eq]
def bodies8 := AllocChunk192_207.bodies ++ bodies9
theorem bodies8_eq : Raw.bodies8.map (StackAlloc.progComp) = bodies8 := by
  unfold Raw.bodies8 bodies8
  rw [List.map_append, AllocChunk192_207.compiled_eq, bodies9_eq]
def bodies7 := AllocChunk176_191.bodies ++ bodies8
theorem bodies7_eq : Raw.bodies7.map (StackAlloc.progComp) = bodies7 := by
  unfold Raw.bodies7 bodies7
  rw [List.map_append, AllocChunk176_191.compiled_eq, bodies8_eq]
def bodies6 := AllocChunk160_175.bodies ++ bodies7
theorem bodies6_eq : Raw.bodies6.map (StackAlloc.progComp) = bodies6 := by
  unfold Raw.bodies6 bodies6
  rw [List.map_append, AllocChunk160_175.compiled_eq, bodies7_eq]
def bodies5 := AllocChunk144_159.bodies ++ bodies6
theorem bodies5_eq : Raw.bodies5.map (StackAlloc.progComp) = bodies5 := by
  unfold Raw.bodies5 bodies5
  rw [List.map_append, AllocChunk144_159.compiled_eq, bodies6_eq]
def bodies4 := AllocChunk128_143.bodies ++ bodies5
theorem bodies4_eq : Raw.bodies4.map (StackAlloc.progComp) = bodies4 := by
  unfold Raw.bodies4 bodies4
  rw [List.map_append, AllocChunk128_143.compiled_eq, bodies5_eq]
def bodies3 := AllocChunk112_127.bodies ++ bodies4
theorem bodies3_eq : Raw.bodies3.map (StackAlloc.progComp) = bodies3 := by
  unfold Raw.bodies3 bodies3
  rw [List.map_append, AllocChunk112_127.compiled_eq, bodies4_eq]
def bodies2 := AllocChunk96_111.bodies ++ bodies3
theorem bodies2_eq : Raw.bodies2.map (StackAlloc.progComp) = bodies2 := by
  unfold Raw.bodies2 bodies2
  rw [List.map_append, AllocChunk96_111.compiled_eq, bodies3_eq]
def bodies1 := AllocChunk80_95.bodies ++ bodies2
theorem bodies1_eq : Raw.bodies1.map (StackAlloc.progComp) = bodies1 := by
  unfold Raw.bodies1 bodies1
  rw [List.map_append, AllocChunk80_95.compiled_eq, bodies2_eq]
def bodies0 := AllocChunk64_79.bodies ++ bodies1
theorem bodies0_eq : Raw.bodies0.map (StackAlloc.progComp) = bodies0 := by
  unfold Raw.bodies0 bodies0
  rw [List.map_append, AllocChunk64_79.compiled_eq, bodies1_eq]
def stack := AllocStubs ++ bodies0
theorem compile_eq : StackAlloc.compile RiscVConfig.pancakeRiscVBackendConfig.dataConf Raw.stack = stack := by
  unfold StackAlloc.compile Raw.stack stack
  rw [List.map_append, bodies0_eq, ← List.append_assoc, AllocStubs_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Alloc
