import InitECandidate.Proofs.BackendStages.RawInfoFacts
import InitECandidate.Proofs.BackendStages.RawStubs
import InitECandidate.Proofs.BackendStages.RawChunk64_79
import InitECandidate.Proofs.BackendStages.RawChunk80_95
import InitECandidate.Proofs.BackendStages.RawChunk96_111
import InitECandidate.Proofs.BackendStages.RawChunk112_127
import InitECandidate.Proofs.BackendStages.RawChunk128_143
import InitECandidate.Proofs.BackendStages.RawChunk144_159
import InitECandidate.Proofs.BackendStages.RawChunk160_175
import InitECandidate.Proofs.BackendStages.RawChunk176_191
import InitECandidate.Proofs.BackendStages.RawChunk192_207
import InitECandidate.Proofs.BackendStages.RawChunk208_223
import InitECandidate.Proofs.BackendStages.RawChunk224_239
import InitECandidate.Proofs.BackendStages.RawChunk240_255
import InitECandidate.Proofs.BackendStages.RawChunk256_271
import InitECandidate.Proofs.BackendStages.RawChunk272_287
import InitECandidate.Proofs.BackendStages.RawChunk288_303
import InitECandidate.Proofs.BackendStages.RawChunk304_319
import InitECandidate.Proofs.BackendStages.RawChunk320_335
import InitECandidate.Proofs.BackendStages.RawChunk336_351
import InitECandidate.Proofs.BackendStages.RawChunk352_367
import InitECandidate.Proofs.BackendStages.RawChunk368_383
import InitECandidate.Proofs.BackendStages.RawChunk384_399
import InitECandidate.Proofs.BackendStages.RawChunk400_415
import InitECandidate.Proofs.BackendStages.RawChunk416_431
import InitECandidate.Proofs.BackendStages.RawChunk432_447
import InitECandidate.Proofs.BackendStages.RawChunk448_463
import InitECandidate.Proofs.BackendStages.RawChunk464_479
import InitECandidate.Proofs.BackendStages.RawChunk480_495
import InitECandidate.Proofs.BackendStages.RawChunk496_511
import InitECandidate.Proofs.BackendStages.RawChunk512_527
import InitECandidate.Proofs.BackendStages.RawChunk528_543
import InitECandidate.Proofs.BackendStages.RawChunk544_559
import InitECandidate.Proofs.BackendStages.RawChunk560_575
import InitECandidate.Proofs.BackendStages.RawChunk576_591
import InitECandidate.Proofs.BackendStages.RawChunk592_607
import InitECandidate.Proofs.BackendStages.RawChunk608_623
import InitECandidate.Proofs.BackendStages.RawChunk624_639
import InitECandidate.Proofs.BackendStages.RawChunk640_655
import InitECandidate.Proofs.BackendStages.RawChunk656_671
import InitECandidate.Proofs.BackendStages.RawChunk672_687
import InitECandidate.Proofs.BackendStages.RawChunk688_703
import InitECandidate.Proofs.BackendStages.RawChunk704_719
import InitECandidate.Proofs.BackendStages.RawChunk720_735
import InitECandidate.Proofs.BackendStages.RawChunk736_751
import InitECandidate.Proofs.BackendStages.RawChunk752_767
import InitECandidate.Proofs.BackendStages.RawChunk768_783
import InitECandidate.Proofs.BackendStages.RawChunk784_799
import InitECandidate.Proofs.BackendStages.RawChunk800_815
import InitECandidate.Proofs.BackendStages.RawChunk816_831
import InitECandidate.Proofs.BackendStages.RawChunk832_847
import InitECandidate.Proofs.BackendStages.RawChunk848_863
import InitECandidate.Proofs.BackendStages.RawChunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.Raw
def bodies51 : List (Nat × StackLang.HolProg 64) := []
theorem bodies51_eq : Native.bodies51.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies51 := by rfl
def bodies50 := RawChunk864_877.bodies ++ bodies51
theorem bodies50_eq : Native.bodies50.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies50 := by
  unfold Native.bodies50 bodies50
  rw [List.map_append, RawChunk864_877.compiled_eq, bodies51_eq]
def bodies49 := RawChunk848_863.bodies ++ bodies50
theorem bodies49_eq : Native.bodies49.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies49 := by
  unfold Native.bodies49 bodies49
  rw [List.map_append, RawChunk848_863.compiled_eq, bodies50_eq]
def bodies48 := RawChunk832_847.bodies ++ bodies49
theorem bodies48_eq : Native.bodies48.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies48 := by
  unfold Native.bodies48 bodies48
  rw [List.map_append, RawChunk832_847.compiled_eq, bodies49_eq]
def bodies47 := RawChunk816_831.bodies ++ bodies48
theorem bodies47_eq : Native.bodies47.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies47 := by
  unfold Native.bodies47 bodies47
  rw [List.map_append, RawChunk816_831.compiled_eq, bodies48_eq]
def bodies46 := RawChunk800_815.bodies ++ bodies47
theorem bodies46_eq : Native.bodies46.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies46 := by
  unfold Native.bodies46 bodies46
  rw [List.map_append, RawChunk800_815.compiled_eq, bodies47_eq]
def bodies45 := RawChunk784_799.bodies ++ bodies46
theorem bodies45_eq : Native.bodies45.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies45 := by
  unfold Native.bodies45 bodies45
  rw [List.map_append, RawChunk784_799.compiled_eq, bodies46_eq]
def bodies44 := RawChunk768_783.bodies ++ bodies45
theorem bodies44_eq : Native.bodies44.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies44 := by
  unfold Native.bodies44 bodies44
  rw [List.map_append, RawChunk768_783.compiled_eq, bodies45_eq]
def bodies43 := RawChunk752_767.bodies ++ bodies44
theorem bodies43_eq : Native.bodies43.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies43 := by
  unfold Native.bodies43 bodies43
  rw [List.map_append, RawChunk752_767.compiled_eq, bodies44_eq]
def bodies42 := RawChunk736_751.bodies ++ bodies43
theorem bodies42_eq : Native.bodies42.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies42 := by
  unfold Native.bodies42 bodies42
  rw [List.map_append, RawChunk736_751.compiled_eq, bodies43_eq]
def bodies41 := RawChunk720_735.bodies ++ bodies42
theorem bodies41_eq : Native.bodies41.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies41 := by
  unfold Native.bodies41 bodies41
  rw [List.map_append, RawChunk720_735.compiled_eq, bodies42_eq]
def bodies40 := RawChunk704_719.bodies ++ bodies41
theorem bodies40_eq : Native.bodies40.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies40 := by
  unfold Native.bodies40 bodies40
  rw [List.map_append, RawChunk704_719.compiled_eq, bodies41_eq]
def bodies39 := RawChunk688_703.bodies ++ bodies40
theorem bodies39_eq : Native.bodies39.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies39 := by
  unfold Native.bodies39 bodies39
  rw [List.map_append, RawChunk688_703.compiled_eq, bodies40_eq]
def bodies38 := RawChunk672_687.bodies ++ bodies39
theorem bodies38_eq : Native.bodies38.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies38 := by
  unfold Native.bodies38 bodies38
  rw [List.map_append, RawChunk672_687.compiled_eq, bodies39_eq]
def bodies37 := RawChunk656_671.bodies ++ bodies38
theorem bodies37_eq : Native.bodies37.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies37 := by
  unfold Native.bodies37 bodies37
  rw [List.map_append, RawChunk656_671.compiled_eq, bodies38_eq]
def bodies36 := RawChunk640_655.bodies ++ bodies37
theorem bodies36_eq : Native.bodies36.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies36 := by
  unfold Native.bodies36 bodies36
  rw [List.map_append, RawChunk640_655.compiled_eq, bodies37_eq]
def bodies35 := RawChunk624_639.bodies ++ bodies36
theorem bodies35_eq : Native.bodies35.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies35 := by
  unfold Native.bodies35 bodies35
  rw [List.map_append, RawChunk624_639.compiled_eq, bodies36_eq]
def bodies34 := RawChunk608_623.bodies ++ bodies35
theorem bodies34_eq : Native.bodies34.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies34 := by
  unfold Native.bodies34 bodies34
  rw [List.map_append, RawChunk608_623.compiled_eq, bodies35_eq]
def bodies33 := RawChunk592_607.bodies ++ bodies34
theorem bodies33_eq : Native.bodies33.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies33 := by
  unfold Native.bodies33 bodies33
  rw [List.map_append, RawChunk592_607.compiled_eq, bodies34_eq]
def bodies32 := RawChunk576_591.bodies ++ bodies33
theorem bodies32_eq : Native.bodies32.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies32 := by
  unfold Native.bodies32 bodies32
  rw [List.map_append, RawChunk576_591.compiled_eq, bodies33_eq]
def bodies31 := RawChunk560_575.bodies ++ bodies32
theorem bodies31_eq : Native.bodies31.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies31 := by
  unfold Native.bodies31 bodies31
  rw [List.map_append, RawChunk560_575.compiled_eq, bodies32_eq]
def bodies30 := RawChunk544_559.bodies ++ bodies31
theorem bodies30_eq : Native.bodies30.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies30 := by
  unfold Native.bodies30 bodies30
  rw [List.map_append, RawChunk544_559.compiled_eq, bodies31_eq]
def bodies29 := RawChunk528_543.bodies ++ bodies30
theorem bodies29_eq : Native.bodies29.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies29 := by
  unfold Native.bodies29 bodies29
  rw [List.map_append, RawChunk528_543.compiled_eq, bodies30_eq]
def bodies28 := RawChunk512_527.bodies ++ bodies29
theorem bodies28_eq : Native.bodies28.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies28 := by
  unfold Native.bodies28 bodies28
  rw [List.map_append, RawChunk512_527.compiled_eq, bodies29_eq]
def bodies27 := RawChunk496_511.bodies ++ bodies28
theorem bodies27_eq : Native.bodies27.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies27 := by
  unfold Native.bodies27 bodies27
  rw [List.map_append, RawChunk496_511.compiled_eq, bodies28_eq]
def bodies26 := RawChunk480_495.bodies ++ bodies27
theorem bodies26_eq : Native.bodies26.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies26 := by
  unfold Native.bodies26 bodies26
  rw [List.map_append, RawChunk480_495.compiled_eq, bodies27_eq]
def bodies25 := RawChunk464_479.bodies ++ bodies26
theorem bodies25_eq : Native.bodies25.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies25 := by
  unfold Native.bodies25 bodies25
  rw [List.map_append, RawChunk464_479.compiled_eq, bodies26_eq]
def bodies24 := RawChunk448_463.bodies ++ bodies25
theorem bodies24_eq : Native.bodies24.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies24 := by
  unfold Native.bodies24 bodies24
  rw [List.map_append, RawChunk448_463.compiled_eq, bodies25_eq]
def bodies23 := RawChunk432_447.bodies ++ bodies24
theorem bodies23_eq : Native.bodies23.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies23 := by
  unfold Native.bodies23 bodies23
  rw [List.map_append, RawChunk432_447.compiled_eq, bodies24_eq]
def bodies22 := RawChunk416_431.bodies ++ bodies23
theorem bodies22_eq : Native.bodies22.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies22 := by
  unfold Native.bodies22 bodies22
  rw [List.map_append, RawChunk416_431.compiled_eq, bodies23_eq]
def bodies21 := RawChunk400_415.bodies ++ bodies22
theorem bodies21_eq : Native.bodies21.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies21 := by
  unfold Native.bodies21 bodies21
  rw [List.map_append, RawChunk400_415.compiled_eq, bodies22_eq]
def bodies20 := RawChunk384_399.bodies ++ bodies21
theorem bodies20_eq : Native.bodies20.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies20 := by
  unfold Native.bodies20 bodies20
  rw [List.map_append, RawChunk384_399.compiled_eq, bodies21_eq]
def bodies19 := RawChunk368_383.bodies ++ bodies20
theorem bodies19_eq : Native.bodies19.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies19 := by
  unfold Native.bodies19 bodies19
  rw [List.map_append, RawChunk368_383.compiled_eq, bodies20_eq]
def bodies18 := RawChunk352_367.bodies ++ bodies19
theorem bodies18_eq : Native.bodies18.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies18 := by
  unfold Native.bodies18 bodies18
  rw [List.map_append, RawChunk352_367.compiled_eq, bodies19_eq]
def bodies17 := RawChunk336_351.bodies ++ bodies18
theorem bodies17_eq : Native.bodies17.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies17 := by
  unfold Native.bodies17 bodies17
  rw [List.map_append, RawChunk336_351.compiled_eq, bodies18_eq]
def bodies16 := RawChunk320_335.bodies ++ bodies17
theorem bodies16_eq : Native.bodies16.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies16 := by
  unfold Native.bodies16 bodies16
  rw [List.map_append, RawChunk320_335.compiled_eq, bodies17_eq]
def bodies15 := RawChunk304_319.bodies ++ bodies16
theorem bodies15_eq : Native.bodies15.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies15 := by
  unfold Native.bodies15 bodies15
  rw [List.map_append, RawChunk304_319.compiled_eq, bodies16_eq]
def bodies14 := RawChunk288_303.bodies ++ bodies15
theorem bodies14_eq : Native.bodies14.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies14 := by
  unfold Native.bodies14 bodies14
  rw [List.map_append, RawChunk288_303.compiled_eq, bodies15_eq]
def bodies13 := RawChunk272_287.bodies ++ bodies14
theorem bodies13_eq : Native.bodies13.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies13 := by
  unfold Native.bodies13 bodies13
  rw [List.map_append, RawChunk272_287.compiled_eq, bodies14_eq]
def bodies12 := RawChunk256_271.bodies ++ bodies13
theorem bodies12_eq : Native.bodies12.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies12 := by
  unfold Native.bodies12 bodies12
  rw [List.map_append, RawChunk256_271.compiled_eq, bodies13_eq]
def bodies11 := RawChunk240_255.bodies ++ bodies12
theorem bodies11_eq : Native.bodies11.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies11 := by
  unfold Native.bodies11 bodies11
  rw [List.map_append, RawChunk240_255.compiled_eq, bodies12_eq]
def bodies10 := RawChunk224_239.bodies ++ bodies11
theorem bodies10_eq : Native.bodies10.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies10 := by
  unfold Native.bodies10 bodies10
  rw [List.map_append, RawChunk224_239.compiled_eq, bodies11_eq]
def bodies9 := RawChunk208_223.bodies ++ bodies10
theorem bodies9_eq : Native.bodies9.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies9 := by
  unfold Native.bodies9 bodies9
  rw [List.map_append, RawChunk208_223.compiled_eq, bodies10_eq]
def bodies8 := RawChunk192_207.bodies ++ bodies9
theorem bodies8_eq : Native.bodies8.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies8 := by
  unfold Native.bodies8 bodies8
  rw [List.map_append, RawChunk192_207.compiled_eq, bodies9_eq]
def bodies7 := RawChunk176_191.bodies ++ bodies8
theorem bodies7_eq : Native.bodies7.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies7 := by
  unfold Native.bodies7 bodies7
  rw [List.map_append, RawChunk176_191.compiled_eq, bodies8_eq]
def bodies6 := RawChunk160_175.bodies ++ bodies7
theorem bodies6_eq : Native.bodies6.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies6 := by
  unfold Native.bodies6 bodies6
  rw [List.map_append, RawChunk160_175.compiled_eq, bodies7_eq]
def bodies5 := RawChunk144_159.bodies ++ bodies6
theorem bodies5_eq : Native.bodies5.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies5 := by
  unfold Native.bodies5 bodies5
  rw [List.map_append, RawChunk144_159.compiled_eq, bodies6_eq]
def bodies4 := RawChunk128_143.bodies ++ bodies5
theorem bodies4_eq : Native.bodies4.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies4 := by
  unfold Native.bodies4 bodies4
  rw [List.map_append, RawChunk128_143.compiled_eq, bodies5_eq]
def bodies3 := RawChunk112_127.bodies ++ bodies4
theorem bodies3_eq : Native.bodies3.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies3 := by
  unfold Native.bodies3 bodies3
  rw [List.map_append, RawChunk112_127.compiled_eq, bodies4_eq]
def bodies2 := RawChunk96_111.bodies ++ bodies3
theorem bodies2_eq : Native.bodies2.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies2 := by
  unfold Native.bodies2 bodies2
  rw [List.map_append, RawChunk96_111.compiled_eq, bodies3_eq]
def bodies1 := RawChunk80_95.bodies ++ bodies2
theorem bodies1_eq : Native.bodies1.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies1 := by
  unfold Native.bodies1 bodies1
  rw [List.map_append, RawChunk80_95.compiled_eq, bodies2_eq]
def bodies0 := RawChunk64_79.bodies ++ bodies1
theorem bodies0_eq : Native.bodies0.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies0 := by
  unfold Native.bodies0 bodies0
  rw [List.map_append, RawChunk64_79.compiled_eq, bodies1_eq]
def stack := RawStubs ++ bodies0
theorem compile_eq : StackRawCall.compile Native.stack = stack := by
  rw [RawInfo.compile_eq]
  unfold Native.stack stack
  simp only [List.map_cons]
  change [(raiseStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.raiseStubNative false (Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.regCount - (5 + Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.avoidRegs.length)))), (storeConstsStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.storeConstsStubNative (Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.regCount - (5 + Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.avoidRegs.length))))] ++ Native.bodies0.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = RawStubs ++ bodies0
  rw [RawStubs_eq, bodies0_eq]
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.Raw
