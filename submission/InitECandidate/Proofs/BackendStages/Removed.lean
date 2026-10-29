import InitECandidate.Proofs.BackendStages.Alloc
import InitECandidate.Proofs.BackendStages.RemovedStubs
import InitECandidate.Proofs.BackendStages.RemovedChunk64_79
import InitECandidate.Proofs.BackendStages.RemovedChunk80_95
import InitECandidate.Proofs.BackendStages.RemovedChunk96_111
import InitECandidate.Proofs.BackendStages.RemovedChunk112_127
import InitECandidate.Proofs.BackendStages.RemovedChunk128_143
import InitECandidate.Proofs.BackendStages.RemovedChunk144_159
import InitECandidate.Proofs.BackendStages.RemovedChunk160_175
import InitECandidate.Proofs.BackendStages.RemovedChunk176_191
import InitECandidate.Proofs.BackendStages.RemovedChunk192_207
import InitECandidate.Proofs.BackendStages.RemovedChunk208_223
import InitECandidate.Proofs.BackendStages.RemovedChunk224_239
import InitECandidate.Proofs.BackendStages.RemovedChunk240_255
import InitECandidate.Proofs.BackendStages.RemovedChunk256_271
import InitECandidate.Proofs.BackendStages.RemovedChunk272_287
import InitECandidate.Proofs.BackendStages.RemovedChunk288_303
import InitECandidate.Proofs.BackendStages.RemovedChunk304_319
import InitECandidate.Proofs.BackendStages.RemovedChunk320_335
import InitECandidate.Proofs.BackendStages.RemovedChunk336_351
import InitECandidate.Proofs.BackendStages.RemovedChunk352_367
import InitECandidate.Proofs.BackendStages.RemovedChunk368_383
import InitECandidate.Proofs.BackendStages.RemovedChunk384_399
import InitECandidate.Proofs.BackendStages.RemovedChunk400_415
import InitECandidate.Proofs.BackendStages.RemovedChunk416_431
import InitECandidate.Proofs.BackendStages.RemovedChunk432_447
import InitECandidate.Proofs.BackendStages.RemovedChunk448_463
import InitECandidate.Proofs.BackendStages.RemovedChunk464_479
import InitECandidate.Proofs.BackendStages.RemovedChunk480_495
import InitECandidate.Proofs.BackendStages.RemovedChunk496_511
import InitECandidate.Proofs.BackendStages.RemovedChunk512_527
import InitECandidate.Proofs.BackendStages.RemovedChunk528_543
import InitECandidate.Proofs.BackendStages.RemovedChunk544_559
import InitECandidate.Proofs.BackendStages.RemovedChunk560_575
import InitECandidate.Proofs.BackendStages.RemovedChunk576_591
import InitECandidate.Proofs.BackendStages.RemovedChunk592_607
import InitECandidate.Proofs.BackendStages.RemovedChunk608_623
import InitECandidate.Proofs.BackendStages.RemovedChunk624_639
import InitECandidate.Proofs.BackendStages.RemovedChunk640_655
import InitECandidate.Proofs.BackendStages.RemovedChunk656_671
import InitECandidate.Proofs.BackendStages.RemovedChunk672_687
import InitECandidate.Proofs.BackendStages.RemovedChunk688_703
import InitECandidate.Proofs.BackendStages.RemovedChunk704_719
import InitECandidate.Proofs.BackendStages.RemovedChunk720_735
import InitECandidate.Proofs.BackendStages.RemovedChunk736_751
import InitECandidate.Proofs.BackendStages.RemovedChunk752_767
import InitECandidate.Proofs.BackendStages.RemovedChunk768_783
import InitECandidate.Proofs.BackendStages.RemovedChunk784_799
import InitECandidate.Proofs.BackendStages.RemovedChunk800_815
import InitECandidate.Proofs.BackendStages.RemovedChunk816_831
import InitECandidate.Proofs.BackendStages.RemovedChunk832_847
import InitECandidate.Proofs.BackendStages.RemovedChunk848_863
import InitECandidate.Proofs.BackendStages.RemovedChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Removed
def bodies51 : List (Nat × StackLang.HolProg 64) := []
theorem bodies51_eq : Alloc.bodies51.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies51 := by rfl
def bodies50 := RemovedChunk864_877.bodies ++ bodies51
theorem bodies50_eq : Alloc.bodies50.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies50 := by
  unfold Alloc.bodies50 bodies50
  rw [List.map_append, RemovedChunk864_877.compiled_eq, bodies51_eq]
def bodies49 := RemovedChunk848_863.bodies ++ bodies50
theorem bodies49_eq : Alloc.bodies49.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies49 := by
  unfold Alloc.bodies49 bodies49
  rw [List.map_append, RemovedChunk848_863.compiled_eq, bodies50_eq]
def bodies48 := RemovedChunk832_847.bodies ++ bodies49
theorem bodies48_eq : Alloc.bodies48.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies48 := by
  unfold Alloc.bodies48 bodies48
  rw [List.map_append, RemovedChunk832_847.compiled_eq, bodies49_eq]
def bodies47 := RemovedChunk816_831.bodies ++ bodies48
theorem bodies47_eq : Alloc.bodies47.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies47 := by
  unfold Alloc.bodies47 bodies47
  rw [List.map_append, RemovedChunk816_831.compiled_eq, bodies48_eq]
def bodies46 := RemovedChunk800_815.bodies ++ bodies47
theorem bodies46_eq : Alloc.bodies46.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies46 := by
  unfold Alloc.bodies46 bodies46
  rw [List.map_append, RemovedChunk800_815.compiled_eq, bodies47_eq]
def bodies45 := RemovedChunk784_799.bodies ++ bodies46
theorem bodies45_eq : Alloc.bodies45.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies45 := by
  unfold Alloc.bodies45 bodies45
  rw [List.map_append, RemovedChunk784_799.compiled_eq, bodies46_eq]
def bodies44 := RemovedChunk768_783.bodies ++ bodies45
theorem bodies44_eq : Alloc.bodies44.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies44 := by
  unfold Alloc.bodies44 bodies44
  rw [List.map_append, RemovedChunk768_783.compiled_eq, bodies45_eq]
def bodies43 := RemovedChunk752_767.bodies ++ bodies44
theorem bodies43_eq : Alloc.bodies43.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies43 := by
  unfold Alloc.bodies43 bodies43
  rw [List.map_append, RemovedChunk752_767.compiled_eq, bodies44_eq]
def bodies42 := RemovedChunk736_751.bodies ++ bodies43
theorem bodies42_eq : Alloc.bodies42.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies42 := by
  unfold Alloc.bodies42 bodies42
  rw [List.map_append, RemovedChunk736_751.compiled_eq, bodies43_eq]
def bodies41 := RemovedChunk720_735.bodies ++ bodies42
theorem bodies41_eq : Alloc.bodies41.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies41 := by
  unfold Alloc.bodies41 bodies41
  rw [List.map_append, RemovedChunk720_735.compiled_eq, bodies42_eq]
def bodies40 := RemovedChunk704_719.bodies ++ bodies41
theorem bodies40_eq : Alloc.bodies40.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies40 := by
  unfold Alloc.bodies40 bodies40
  rw [List.map_append, RemovedChunk704_719.compiled_eq, bodies41_eq]
def bodies39 := RemovedChunk688_703.bodies ++ bodies40
theorem bodies39_eq : Alloc.bodies39.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies39 := by
  unfold Alloc.bodies39 bodies39
  rw [List.map_append, RemovedChunk688_703.compiled_eq, bodies40_eq]
def bodies38 := RemovedChunk672_687.bodies ++ bodies39
theorem bodies38_eq : Alloc.bodies38.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies38 := by
  unfold Alloc.bodies38 bodies38
  rw [List.map_append, RemovedChunk672_687.compiled_eq, bodies39_eq]
def bodies37 := RemovedChunk656_671.bodies ++ bodies38
theorem bodies37_eq : Alloc.bodies37.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies37 := by
  unfold Alloc.bodies37 bodies37
  rw [List.map_append, RemovedChunk656_671.compiled_eq, bodies38_eq]
def bodies36 := RemovedChunk640_655.bodies ++ bodies37
theorem bodies36_eq : Alloc.bodies36.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies36 := by
  unfold Alloc.bodies36 bodies36
  rw [List.map_append, RemovedChunk640_655.compiled_eq, bodies37_eq]
def bodies35 := RemovedChunk624_639.bodies ++ bodies36
theorem bodies35_eq : Alloc.bodies35.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies35 := by
  unfold Alloc.bodies35 bodies35
  rw [List.map_append, RemovedChunk624_639.compiled_eq, bodies36_eq]
def bodies34 := RemovedChunk608_623.bodies ++ bodies35
theorem bodies34_eq : Alloc.bodies34.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies34 := by
  unfold Alloc.bodies34 bodies34
  rw [List.map_append, RemovedChunk608_623.compiled_eq, bodies35_eq]
def bodies33 := RemovedChunk592_607.bodies ++ bodies34
theorem bodies33_eq : Alloc.bodies33.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies33 := by
  unfold Alloc.bodies33 bodies33
  rw [List.map_append, RemovedChunk592_607.compiled_eq, bodies34_eq]
def bodies32 := RemovedChunk576_591.bodies ++ bodies33
theorem bodies32_eq : Alloc.bodies32.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies32 := by
  unfold Alloc.bodies32 bodies32
  rw [List.map_append, RemovedChunk576_591.compiled_eq, bodies33_eq]
def bodies31 := RemovedChunk560_575.bodies ++ bodies32
theorem bodies31_eq : Alloc.bodies31.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies31 := by
  unfold Alloc.bodies31 bodies31
  rw [List.map_append, RemovedChunk560_575.compiled_eq, bodies32_eq]
def bodies30 := RemovedChunk544_559.bodies ++ bodies31
theorem bodies30_eq : Alloc.bodies30.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies30 := by
  unfold Alloc.bodies30 bodies30
  rw [List.map_append, RemovedChunk544_559.compiled_eq, bodies31_eq]
def bodies29 := RemovedChunk528_543.bodies ++ bodies30
theorem bodies29_eq : Alloc.bodies29.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies29 := by
  unfold Alloc.bodies29 bodies29
  rw [List.map_append, RemovedChunk528_543.compiled_eq, bodies30_eq]
def bodies28 := RemovedChunk512_527.bodies ++ bodies29
theorem bodies28_eq : Alloc.bodies28.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies28 := by
  unfold Alloc.bodies28 bodies28
  rw [List.map_append, RemovedChunk512_527.compiled_eq, bodies29_eq]
def bodies27 := RemovedChunk496_511.bodies ++ bodies28
theorem bodies27_eq : Alloc.bodies27.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies27 := by
  unfold Alloc.bodies27 bodies27
  rw [List.map_append, RemovedChunk496_511.compiled_eq, bodies28_eq]
def bodies26 := RemovedChunk480_495.bodies ++ bodies27
theorem bodies26_eq : Alloc.bodies26.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies26 := by
  unfold Alloc.bodies26 bodies26
  rw [List.map_append, RemovedChunk480_495.compiled_eq, bodies27_eq]
def bodies25 := RemovedChunk464_479.bodies ++ bodies26
theorem bodies25_eq : Alloc.bodies25.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies25 := by
  unfold Alloc.bodies25 bodies25
  rw [List.map_append, RemovedChunk464_479.compiled_eq, bodies26_eq]
def bodies24 := RemovedChunk448_463.bodies ++ bodies25
theorem bodies24_eq : Alloc.bodies24.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies24 := by
  unfold Alloc.bodies24 bodies24
  rw [List.map_append, RemovedChunk448_463.compiled_eq, bodies25_eq]
def bodies23 := RemovedChunk432_447.bodies ++ bodies24
theorem bodies23_eq : Alloc.bodies23.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies23 := by
  unfold Alloc.bodies23 bodies23
  rw [List.map_append, RemovedChunk432_447.compiled_eq, bodies24_eq]
def bodies22 := RemovedChunk416_431.bodies ++ bodies23
theorem bodies22_eq : Alloc.bodies22.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies22 := by
  unfold Alloc.bodies22 bodies22
  rw [List.map_append, RemovedChunk416_431.compiled_eq, bodies23_eq]
def bodies21 := RemovedChunk400_415.bodies ++ bodies22
theorem bodies21_eq : Alloc.bodies21.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies21 := by
  unfold Alloc.bodies21 bodies21
  rw [List.map_append, RemovedChunk400_415.compiled_eq, bodies22_eq]
def bodies20 := RemovedChunk384_399.bodies ++ bodies21
theorem bodies20_eq : Alloc.bodies20.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies20 := by
  unfold Alloc.bodies20 bodies20
  rw [List.map_append, RemovedChunk384_399.compiled_eq, bodies21_eq]
def bodies19 := RemovedChunk368_383.bodies ++ bodies20
theorem bodies19_eq : Alloc.bodies19.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies19 := by
  unfold Alloc.bodies19 bodies19
  rw [List.map_append, RemovedChunk368_383.compiled_eq, bodies20_eq]
def bodies18 := RemovedChunk352_367.bodies ++ bodies19
theorem bodies18_eq : Alloc.bodies18.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies18 := by
  unfold Alloc.bodies18 bodies18
  rw [List.map_append, RemovedChunk352_367.compiled_eq, bodies19_eq]
def bodies17 := RemovedChunk336_351.bodies ++ bodies18
theorem bodies17_eq : Alloc.bodies17.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies17 := by
  unfold Alloc.bodies17 bodies17
  rw [List.map_append, RemovedChunk336_351.compiled_eq, bodies18_eq]
def bodies16 := RemovedChunk320_335.bodies ++ bodies17
theorem bodies16_eq : Alloc.bodies16.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies16 := by
  unfold Alloc.bodies16 bodies16
  rw [List.map_append, RemovedChunk320_335.compiled_eq, bodies17_eq]
def bodies15 := RemovedChunk304_319.bodies ++ bodies16
theorem bodies15_eq : Alloc.bodies15.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies15 := by
  unfold Alloc.bodies15 bodies15
  rw [List.map_append, RemovedChunk304_319.compiled_eq, bodies16_eq]
def bodies14 := RemovedChunk288_303.bodies ++ bodies15
theorem bodies14_eq : Alloc.bodies14.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies14 := by
  unfold Alloc.bodies14 bodies14
  rw [List.map_append, RemovedChunk288_303.compiled_eq, bodies15_eq]
def bodies13 := RemovedChunk272_287.bodies ++ bodies14
theorem bodies13_eq : Alloc.bodies13.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies13 := by
  unfold Alloc.bodies13 bodies13
  rw [List.map_append, RemovedChunk272_287.compiled_eq, bodies14_eq]
def bodies12 := RemovedChunk256_271.bodies ++ bodies13
theorem bodies12_eq : Alloc.bodies12.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies12 := by
  unfold Alloc.bodies12 bodies12
  rw [List.map_append, RemovedChunk256_271.compiled_eq, bodies13_eq]
def bodies11 := RemovedChunk240_255.bodies ++ bodies12
theorem bodies11_eq : Alloc.bodies11.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies11 := by
  unfold Alloc.bodies11 bodies11
  rw [List.map_append, RemovedChunk240_255.compiled_eq, bodies12_eq]
def bodies10 := RemovedChunk224_239.bodies ++ bodies11
theorem bodies10_eq : Alloc.bodies10.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies10 := by
  unfold Alloc.bodies10 bodies10
  rw [List.map_append, RemovedChunk224_239.compiled_eq, bodies11_eq]
def bodies9 := RemovedChunk208_223.bodies ++ bodies10
theorem bodies9_eq : Alloc.bodies9.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies9 := by
  unfold Alloc.bodies9 bodies9
  rw [List.map_append, RemovedChunk208_223.compiled_eq, bodies10_eq]
def bodies8 := RemovedChunk192_207.bodies ++ bodies9
theorem bodies8_eq : Alloc.bodies8.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies8 := by
  unfold Alloc.bodies8 bodies8
  rw [List.map_append, RemovedChunk192_207.compiled_eq, bodies9_eq]
def bodies7 := RemovedChunk176_191.bodies ++ bodies8
theorem bodies7_eq : Alloc.bodies7.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies7 := by
  unfold Alloc.bodies7 bodies7
  rw [List.map_append, RemovedChunk176_191.compiled_eq, bodies8_eq]
def bodies6 := RemovedChunk160_175.bodies ++ bodies7
theorem bodies6_eq : Alloc.bodies6.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies6 := by
  unfold Alloc.bodies6 bodies6
  rw [List.map_append, RemovedChunk160_175.compiled_eq, bodies7_eq]
def bodies5 := RemovedChunk144_159.bodies ++ bodies6
theorem bodies5_eq : Alloc.bodies5.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies5 := by
  unfold Alloc.bodies5 bodies5
  rw [List.map_append, RemovedChunk144_159.compiled_eq, bodies6_eq]
def bodies4 := RemovedChunk128_143.bodies ++ bodies5
theorem bodies4_eq : Alloc.bodies4.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies4 := by
  unfold Alloc.bodies4 bodies4
  rw [List.map_append, RemovedChunk128_143.compiled_eq, bodies5_eq]
def bodies3 := RemovedChunk112_127.bodies ++ bodies4
theorem bodies3_eq : Alloc.bodies3.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies3 := by
  unfold Alloc.bodies3 bodies3
  rw [List.map_append, RemovedChunk112_127.compiled_eq, bodies4_eq]
def bodies2 := RemovedChunk96_111.bodies ++ bodies3
theorem bodies2_eq : Alloc.bodies2.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies2 := by
  unfold Alloc.bodies2 bodies2
  rw [List.map_append, RemovedChunk96_111.compiled_eq, bodies3_eq]
def bodies1 := RemovedChunk80_95.bodies ++ bodies2
theorem bodies1_eq : Alloc.bodies1.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies1 := by
  unfold Alloc.bodies1 bodies1
  rw [List.map_append, RemovedChunk80_95.compiled_eq, bodies2_eq]
def bodies0 := RemovedChunk64_79.bodies ++ bodies1
theorem bodies0_eq : Alloc.bodies0.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies0 := by
  unfold Alloc.bodies0 bodies0
  rw [List.map_append, RemovedChunk64_79.compiled_eq, bodies1_eq]
def stack := RemovedStubs ++ bodies0
theorem compile_eq : StackRemove.compileHOL false riscvConfig.addrOffset (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation Alloc.stack = stack := by
  unfold StackRemove.compileHOL Alloc.stack stack
  rw [List.map_append, bodies0_eq, ← List.append_assoc, RemovedStubs_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Removed
