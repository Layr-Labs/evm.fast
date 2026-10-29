import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Chunk64_79
import InitECandidate.Proofs.BackendStages.Chunk80_95
import InitECandidate.Proofs.BackendStages.Chunk96_111
import InitECandidate.Proofs.BackendStages.Chunk112_127
import InitECandidate.Proofs.BackendStages.Chunk128_143
import InitECandidate.Proofs.BackendStages.Chunk144_159
import InitECandidate.Proofs.BackendStages.Chunk160_175
import InitECandidate.Proofs.BackendStages.Chunk176_191
import InitECandidate.Proofs.BackendStages.Chunk192_207
import InitECandidate.Proofs.BackendStages.Chunk208_223
import InitECandidate.Proofs.BackendStages.Chunk224_239
import InitECandidate.Proofs.BackendStages.Chunk240_255
import InitECandidate.Proofs.BackendStages.Chunk256_271
import InitECandidate.Proofs.BackendStages.Chunk272_287
import InitECandidate.Proofs.BackendStages.Chunk288_303
import InitECandidate.Proofs.BackendStages.Chunk304_319
import InitECandidate.Proofs.BackendStages.Chunk320_335
import InitECandidate.Proofs.BackendStages.Chunk336_351
import InitECandidate.Proofs.BackendStages.Chunk352_367
import InitECandidate.Proofs.BackendStages.Chunk368_383
import InitECandidate.Proofs.BackendStages.Chunk384_399
import InitECandidate.Proofs.BackendStages.Chunk400_415
import InitECandidate.Proofs.BackendStages.Chunk416_431
import InitECandidate.Proofs.BackendStages.Chunk432_447
import InitECandidate.Proofs.BackendStages.Chunk448_463
import InitECandidate.Proofs.BackendStages.Chunk464_479
import InitECandidate.Proofs.BackendStages.Chunk480_495
import InitECandidate.Proofs.BackendStages.Chunk496_511
import InitECandidate.Proofs.BackendStages.Chunk512_527
import InitECandidate.Proofs.BackendStages.Chunk528_543
import InitECandidate.Proofs.BackendStages.Chunk544_559
import InitECandidate.Proofs.BackendStages.Chunk560_575
import InitECandidate.Proofs.BackendStages.Chunk576_591
import InitECandidate.Proofs.BackendStages.Chunk592_607
import InitECandidate.Proofs.BackendStages.Chunk608_623
import InitECandidate.Proofs.BackendStages.Chunk624_639
import InitECandidate.Proofs.BackendStages.Chunk640_655
import InitECandidate.Proofs.BackendStages.Chunk656_671
import InitECandidate.Proofs.BackendStages.Chunk672_687
import InitECandidate.Proofs.BackendStages.Chunk688_703
import InitECandidate.Proofs.BackendStages.Chunk704_719
import InitECandidate.Proofs.BackendStages.Chunk720_735
import InitECandidate.Proofs.BackendStages.Chunk736_751
import InitECandidate.Proofs.BackendStages.Chunk752_767
import InitECandidate.Proofs.BackendStages.Chunk768_783
import InitECandidate.Proofs.BackendStages.Chunk784_799
import InitECandidate.Proofs.BackendStages.Chunk800_815
import InitECandidate.Proofs.BackendStages.Chunk816_831
import InitECandidate.Proofs.BackendStages.Chunk832_847
import InitECandidate.Proofs.BackendStages.Chunk848_863
import InitECandidate.Proofs.BackendStages.Chunk864_877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Native
def programs51 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies51 : List (Nat × StackLang.HolProg 64) := []
def frames51 : List Nat := []
def after51 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled51_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs51 (bitmapPrefix, 4603) = (bodies51, frames51, after51 bitmapPrefix, 4603) := by rfl
def programs50 := Chunk864_877.programs ++ programs51
def bodies50 := Chunk864_877.bodies ++ bodies51
def frames50 := Chunk864_877.frames ++ frames51
def after50 (bitmapPrefix : AppList (BitVec 64)) := after51 (Chunk864_877.after bitmapPrefix)
theorem compiled50_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs50 (bitmapPrefix, 4519) = (bodies50, frames50, after50 bitmapPrefix, 4603) := by
  unfold programs50
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk864_877.compiled_eq]
  dsimp only [Chunk864_877.result]
  rw [compiled51_eq]
  rfl
def programs49 := Chunk848_863.programs ++ programs50
def bodies49 := Chunk848_863.bodies ++ bodies50
def frames49 := Chunk848_863.frames ++ frames50
def after49 (bitmapPrefix : AppList (BitVec 64)) := after50 (Chunk848_863.after bitmapPrefix)
theorem compiled49_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs49 (bitmapPrefix, 4240) = (bodies49, frames49, after49 bitmapPrefix, 4603) := by
  unfold programs49
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk848_863.compiled_eq]
  dsimp only [Chunk848_863.result]
  rw [compiled50_eq]
  rfl
def programs48 := Chunk832_847.programs ++ programs49
def bodies48 := Chunk832_847.bodies ++ bodies49
def frames48 := Chunk832_847.frames ++ frames49
def after48 (bitmapPrefix : AppList (BitVec 64)) := after49 (Chunk832_847.after bitmapPrefix)
theorem compiled48_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs48 (bitmapPrefix, 4127) = (bodies48, frames48, after48 bitmapPrefix, 4603) := by
  unfold programs48
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk832_847.compiled_eq]
  dsimp only [Chunk832_847.result]
  rw [compiled49_eq]
  rfl
def programs47 := Chunk816_831.programs ++ programs48
def bodies47 := Chunk816_831.bodies ++ bodies48
def frames47 := Chunk816_831.frames ++ frames48
def after47 (bitmapPrefix : AppList (BitVec 64)) := after48 (Chunk816_831.after bitmapPrefix)
theorem compiled47_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs47 (bitmapPrefix, 4058) = (bodies47, frames47, after47 bitmapPrefix, 4603) := by
  unfold programs47
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk816_831.compiled_eq]
  dsimp only [Chunk816_831.result]
  rw [compiled48_eq]
  rfl
def programs46 := Chunk800_815.programs ++ programs47
def bodies46 := Chunk800_815.bodies ++ bodies47
def frames46 := Chunk800_815.frames ++ frames47
def after46 (bitmapPrefix : AppList (BitVec 64)) := after47 (Chunk800_815.after bitmapPrefix)
theorem compiled46_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs46 (bitmapPrefix, 3840) = (bodies46, frames46, after46 bitmapPrefix, 4603) := by
  unfold programs46
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk800_815.compiled_eq]
  dsimp only [Chunk800_815.result]
  rw [compiled47_eq]
  rfl
def programs45 := Chunk784_799.programs ++ programs46
def bodies45 := Chunk784_799.bodies ++ bodies46
def frames45 := Chunk784_799.frames ++ frames46
def after45 (bitmapPrefix : AppList (BitVec 64)) := after46 (Chunk784_799.after bitmapPrefix)
theorem compiled45_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs45 (bitmapPrefix, 3617) = (bodies45, frames45, after45 bitmapPrefix, 4603) := by
  unfold programs45
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk784_799.compiled_eq]
  dsimp only [Chunk784_799.result]
  rw [compiled46_eq]
  rfl
def programs44 := Chunk768_783.programs ++ programs45
def bodies44 := Chunk768_783.bodies ++ bodies45
def frames44 := Chunk768_783.frames ++ frames45
def after44 (bitmapPrefix : AppList (BitVec 64)) := after45 (Chunk768_783.after bitmapPrefix)
theorem compiled44_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs44 (bitmapPrefix, 3453) = (bodies44, frames44, after44 bitmapPrefix, 4603) := by
  unfold programs44
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk768_783.compiled_eq]
  dsimp only [Chunk768_783.result]
  rw [compiled45_eq]
  rfl
def programs43 := Chunk752_767.programs ++ programs44
def bodies43 := Chunk752_767.bodies ++ bodies44
def frames43 := Chunk752_767.frames ++ frames44
def after43 (bitmapPrefix : AppList (BitVec 64)) := after44 (Chunk752_767.after bitmapPrefix)
theorem compiled43_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs43 (bitmapPrefix, 3319) = (bodies43, frames43, after43 bitmapPrefix, 4603) := by
  unfold programs43
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk752_767.compiled_eq]
  dsimp only [Chunk752_767.result]
  rw [compiled44_eq]
  rfl
def programs42 := Chunk736_751.programs ++ programs43
def bodies42 := Chunk736_751.bodies ++ bodies43
def frames42 := Chunk736_751.frames ++ frames43
def after42 (bitmapPrefix : AppList (BitVec 64)) := after43 (Chunk736_751.after bitmapPrefix)
theorem compiled42_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs42 (bitmapPrefix, 3267) = (bodies42, frames42, after42 bitmapPrefix, 4603) := by
  unfold programs42
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk736_751.compiled_eq]
  dsimp only [Chunk736_751.result]
  rw [compiled43_eq]
  rfl
def programs41 := Chunk720_735.programs ++ programs42
def bodies41 := Chunk720_735.bodies ++ bodies42
def frames41 := Chunk720_735.frames ++ frames42
def after41 (bitmapPrefix : AppList (BitVec 64)) := after42 (Chunk720_735.after bitmapPrefix)
theorem compiled41_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs41 (bitmapPrefix, 3231) = (bodies41, frames41, after41 bitmapPrefix, 4603) := by
  unfold programs41
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk720_735.compiled_eq]
  dsimp only [Chunk720_735.result]
  rw [compiled42_eq]
  rfl
def programs40 := Chunk704_719.programs ++ programs41
def bodies40 := Chunk704_719.bodies ++ bodies41
def frames40 := Chunk704_719.frames ++ frames41
def after40 (bitmapPrefix : AppList (BitVec 64)) := after41 (Chunk704_719.after bitmapPrefix)
theorem compiled40_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs40 (bitmapPrefix, 3150) = (bodies40, frames40, after40 bitmapPrefix, 4603) := by
  unfold programs40
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk704_719.compiled_eq]
  dsimp only [Chunk704_719.result]
  rw [compiled41_eq]
  rfl
def programs39 := Chunk688_703.programs ++ programs40
def bodies39 := Chunk688_703.bodies ++ bodies40
def frames39 := Chunk688_703.frames ++ frames40
def after39 (bitmapPrefix : AppList (BitVec 64)) := after40 (Chunk688_703.after bitmapPrefix)
theorem compiled39_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs39 (bitmapPrefix, 2926) = (bodies39, frames39, after39 bitmapPrefix, 4603) := by
  unfold programs39
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk688_703.compiled_eq]
  dsimp only [Chunk688_703.result]
  rw [compiled40_eq]
  rfl
def programs38 := Chunk672_687.programs ++ programs39
def bodies38 := Chunk672_687.bodies ++ bodies39
def frames38 := Chunk672_687.frames ++ frames39
def after38 (bitmapPrefix : AppList (BitVec 64)) := after39 (Chunk672_687.after bitmapPrefix)
theorem compiled38_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs38 (bitmapPrefix, 2787) = (bodies38, frames38, after38 bitmapPrefix, 4603) := by
  unfold programs38
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk672_687.compiled_eq]
  dsimp only [Chunk672_687.result]
  rw [compiled39_eq]
  rfl
def programs37 := Chunk656_671.programs ++ programs38
def bodies37 := Chunk656_671.bodies ++ bodies38
def frames37 := Chunk656_671.frames ++ frames38
def after37 (bitmapPrefix : AppList (BitVec 64)) := after38 (Chunk656_671.after bitmapPrefix)
theorem compiled37_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs37 (bitmapPrefix, 2733) = (bodies37, frames37, after37 bitmapPrefix, 4603) := by
  unfold programs37
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk656_671.compiled_eq]
  dsimp only [Chunk656_671.result]
  rw [compiled38_eq]
  rfl
def programs36 := Chunk640_655.programs ++ programs37
def bodies36 := Chunk640_655.bodies ++ bodies37
def frames36 := Chunk640_655.frames ++ frames37
def after36 (bitmapPrefix : AppList (BitVec 64)) := after37 (Chunk640_655.after bitmapPrefix)
theorem compiled36_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs36 (bitmapPrefix, 2592) = (bodies36, frames36, after36 bitmapPrefix, 4603) := by
  unfold programs36
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk640_655.compiled_eq]
  dsimp only [Chunk640_655.result]
  rw [compiled37_eq]
  rfl
def programs35 := Chunk624_639.programs ++ programs36
def bodies35 := Chunk624_639.bodies ++ bodies36
def frames35 := Chunk624_639.frames ++ frames36
def after35 (bitmapPrefix : AppList (BitVec 64)) := after36 (Chunk624_639.after bitmapPrefix)
theorem compiled35_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs35 (bitmapPrefix, 2525) = (bodies35, frames35, after35 bitmapPrefix, 4603) := by
  unfold programs35
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk624_639.compiled_eq]
  dsimp only [Chunk624_639.result]
  rw [compiled36_eq]
  rfl
def programs34 := Chunk608_623.programs ++ programs35
def bodies34 := Chunk608_623.bodies ++ bodies35
def frames34 := Chunk608_623.frames ++ frames35
def after34 (bitmapPrefix : AppList (BitVec 64)) := after35 (Chunk608_623.after bitmapPrefix)
theorem compiled34_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs34 (bitmapPrefix, 2334) = (bodies34, frames34, after34 bitmapPrefix, 4603) := by
  unfold programs34
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk608_623.compiled_eq]
  dsimp only [Chunk608_623.result]
  rw [compiled35_eq]
  rfl
def programs33 := Chunk592_607.programs ++ programs34
def bodies33 := Chunk592_607.bodies ++ bodies34
def frames33 := Chunk592_607.frames ++ frames34
def after33 (bitmapPrefix : AppList (BitVec 64)) := after34 (Chunk592_607.after bitmapPrefix)
theorem compiled33_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs33 (bitmapPrefix, 2127) = (bodies33, frames33, after33 bitmapPrefix, 4603) := by
  unfold programs33
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk592_607.compiled_eq]
  dsimp only [Chunk592_607.result]
  rw [compiled34_eq]
  rfl
def programs32 := Chunk576_591.programs ++ programs33
def bodies32 := Chunk576_591.bodies ++ bodies33
def frames32 := Chunk576_591.frames ++ frames33
def after32 (bitmapPrefix : AppList (BitVec 64)) := after33 (Chunk576_591.after bitmapPrefix)
theorem compiled32_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs32 (bitmapPrefix, 2007) = (bodies32, frames32, after32 bitmapPrefix, 4603) := by
  unfold programs32
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk576_591.compiled_eq]
  dsimp only [Chunk576_591.result]
  rw [compiled33_eq]
  rfl
def programs31 := Chunk560_575.programs ++ programs32
def bodies31 := Chunk560_575.bodies ++ bodies32
def frames31 := Chunk560_575.frames ++ frames32
def after31 (bitmapPrefix : AppList (BitVec 64)) := after32 (Chunk560_575.after bitmapPrefix)
theorem compiled31_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs31 (bitmapPrefix, 1910) = (bodies31, frames31, after31 bitmapPrefix, 4603) := by
  unfold programs31
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk560_575.compiled_eq]
  dsimp only [Chunk560_575.result]
  rw [compiled32_eq]
  rfl
def programs30 := Chunk544_559.programs ++ programs31
def bodies30 := Chunk544_559.bodies ++ bodies31
def frames30 := Chunk544_559.frames ++ frames31
def after30 (bitmapPrefix : AppList (BitVec 64)) := after31 (Chunk544_559.after bitmapPrefix)
theorem compiled30_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs30 (bitmapPrefix, 1799) = (bodies30, frames30, after30 bitmapPrefix, 4603) := by
  unfold programs30
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk544_559.compiled_eq]
  dsimp only [Chunk544_559.result]
  rw [compiled31_eq]
  rfl
def programs29 := Chunk528_543.programs ++ programs30
def bodies29 := Chunk528_543.bodies ++ bodies30
def frames29 := Chunk528_543.frames ++ frames30
def after29 (bitmapPrefix : AppList (BitVec 64)) := after30 (Chunk528_543.after bitmapPrefix)
theorem compiled29_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs29 (bitmapPrefix, 1729) = (bodies29, frames29, after29 bitmapPrefix, 4603) := by
  unfold programs29
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk528_543.compiled_eq]
  dsimp only [Chunk528_543.result]
  rw [compiled30_eq]
  rfl
def programs28 := Chunk512_527.programs ++ programs29
def bodies28 := Chunk512_527.bodies ++ bodies29
def frames28 := Chunk512_527.frames ++ frames29
def after28 (bitmapPrefix : AppList (BitVec 64)) := after29 (Chunk512_527.after bitmapPrefix)
theorem compiled28_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs28 (bitmapPrefix, 1637) = (bodies28, frames28, after28 bitmapPrefix, 4603) := by
  unfold programs28
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk512_527.compiled_eq]
  dsimp only [Chunk512_527.result]
  rw [compiled29_eq]
  rfl
def programs27 := Chunk496_511.programs ++ programs28
def bodies27 := Chunk496_511.bodies ++ bodies28
def frames27 := Chunk496_511.frames ++ frames28
def after27 (bitmapPrefix : AppList (BitVec 64)) := after28 (Chunk496_511.after bitmapPrefix)
theorem compiled27_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs27 (bitmapPrefix, 1542) = (bodies27, frames27, after27 bitmapPrefix, 4603) := by
  unfold programs27
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk496_511.compiled_eq]
  dsimp only [Chunk496_511.result]
  rw [compiled28_eq]
  rfl
def programs26 := Chunk480_495.programs ++ programs27
def bodies26 := Chunk480_495.bodies ++ bodies27
def frames26 := Chunk480_495.frames ++ frames27
def after26 (bitmapPrefix : AppList (BitVec 64)) := after27 (Chunk480_495.after bitmapPrefix)
theorem compiled26_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs26 (bitmapPrefix, 1503) = (bodies26, frames26, after26 bitmapPrefix, 4603) := by
  unfold programs26
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk480_495.compiled_eq]
  dsimp only [Chunk480_495.result]
  rw [compiled27_eq]
  rfl
def programs25 := Chunk464_479.programs ++ programs26
def bodies25 := Chunk464_479.bodies ++ bodies26
def frames25 := Chunk464_479.frames ++ frames26
def after25 (bitmapPrefix : AppList (BitVec 64)) := after26 (Chunk464_479.after bitmapPrefix)
theorem compiled25_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs25 (bitmapPrefix, 1487) = (bodies25, frames25, after25 bitmapPrefix, 4603) := by
  unfold programs25
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk464_479.compiled_eq]
  dsimp only [Chunk464_479.result]
  rw [compiled26_eq]
  rfl
def programs24 := Chunk448_463.programs ++ programs25
def bodies24 := Chunk448_463.bodies ++ bodies25
def frames24 := Chunk448_463.frames ++ frames25
def after24 (bitmapPrefix : AppList (BitVec 64)) := after25 (Chunk448_463.after bitmapPrefix)
theorem compiled24_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs24 (bitmapPrefix, 1348) = (bodies24, frames24, after24 bitmapPrefix, 4603) := by
  unfold programs24
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk448_463.compiled_eq]
  dsimp only [Chunk448_463.result]
  rw [compiled25_eq]
  rfl
def programs23 := Chunk432_447.programs ++ programs24
def bodies23 := Chunk432_447.bodies ++ bodies24
def frames23 := Chunk432_447.frames ++ frames24
def after23 (bitmapPrefix : AppList (BitVec 64)) := after24 (Chunk432_447.after bitmapPrefix)
theorem compiled23_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs23 (bitmapPrefix, 1300) = (bodies23, frames23, after23 bitmapPrefix, 4603) := by
  unfold programs23
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk432_447.compiled_eq]
  dsimp only [Chunk432_447.result]
  rw [compiled24_eq]
  rfl
def programs22 := Chunk416_431.programs ++ programs23
def bodies22 := Chunk416_431.bodies ++ bodies23
def frames22 := Chunk416_431.frames ++ frames23
def after22 (bitmapPrefix : AppList (BitVec 64)) := after23 (Chunk416_431.after bitmapPrefix)
theorem compiled22_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs22 (bitmapPrefix, 1240) = (bodies22, frames22, after22 bitmapPrefix, 4603) := by
  unfold programs22
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk416_431.compiled_eq]
  dsimp only [Chunk416_431.result]
  rw [compiled23_eq]
  rfl
def programs21 := Chunk400_415.programs ++ programs22
def bodies21 := Chunk400_415.bodies ++ bodies22
def frames21 := Chunk400_415.frames ++ frames22
def after21 (bitmapPrefix : AppList (BitVec 64)) := after22 (Chunk400_415.after bitmapPrefix)
theorem compiled21_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs21 (bitmapPrefix, 1184) = (bodies21, frames21, after21 bitmapPrefix, 4603) := by
  unfold programs21
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk400_415.compiled_eq]
  dsimp only [Chunk400_415.result]
  rw [compiled22_eq]
  rfl
def programs20 := Chunk384_399.programs ++ programs21
def bodies20 := Chunk384_399.bodies ++ bodies21
def frames20 := Chunk384_399.frames ++ frames21
def after20 (bitmapPrefix : AppList (BitVec 64)) := after21 (Chunk384_399.after bitmapPrefix)
theorem compiled20_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs20 (bitmapPrefix, 1129) = (bodies20, frames20, after20 bitmapPrefix, 4603) := by
  unfold programs20
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk384_399.compiled_eq]
  dsimp only [Chunk384_399.result]
  rw [compiled21_eq]
  rfl
def programs19 := Chunk368_383.programs ++ programs20
def bodies19 := Chunk368_383.bodies ++ bodies20
def frames19 := Chunk368_383.frames ++ frames20
def after19 (bitmapPrefix : AppList (BitVec 64)) := after20 (Chunk368_383.after bitmapPrefix)
theorem compiled19_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs19 (bitmapPrefix, 1083) = (bodies19, frames19, after19 bitmapPrefix, 4603) := by
  unfold programs19
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk368_383.compiled_eq]
  dsimp only [Chunk368_383.result]
  rw [compiled20_eq]
  rfl
def programs18 := Chunk352_367.programs ++ programs19
def bodies18 := Chunk352_367.bodies ++ bodies19
def frames18 := Chunk352_367.frames ++ frames19
def after18 (bitmapPrefix : AppList (BitVec 64)) := after19 (Chunk352_367.after bitmapPrefix)
theorem compiled18_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs18 (bitmapPrefix, 1026) = (bodies18, frames18, after18 bitmapPrefix, 4603) := by
  unfold programs18
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk352_367.compiled_eq]
  dsimp only [Chunk352_367.result]
  rw [compiled19_eq]
  rfl
def programs17 := Chunk336_351.programs ++ programs18
def bodies17 := Chunk336_351.bodies ++ bodies18
def frames17 := Chunk336_351.frames ++ frames18
def after17 (bitmapPrefix : AppList (BitVec 64)) := after18 (Chunk336_351.after bitmapPrefix)
theorem compiled17_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs17 (bitmapPrefix, 969) = (bodies17, frames17, after17 bitmapPrefix, 4603) := by
  unfold programs17
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk336_351.compiled_eq]
  dsimp only [Chunk336_351.result]
  rw [compiled18_eq]
  rfl
def programs16 := Chunk320_335.programs ++ programs17
def bodies16 := Chunk320_335.bodies ++ bodies17
def frames16 := Chunk320_335.frames ++ frames17
def after16 (bitmapPrefix : AppList (BitVec 64)) := after17 (Chunk320_335.after bitmapPrefix)
theorem compiled16_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs16 (bitmapPrefix, 895) = (bodies16, frames16, after16 bitmapPrefix, 4603) := by
  unfold programs16
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk320_335.compiled_eq]
  dsimp only [Chunk320_335.result]
  rw [compiled17_eq]
  rfl
def programs15 := Chunk304_319.programs ++ programs16
def bodies15 := Chunk304_319.bodies ++ bodies16
def frames15 := Chunk304_319.frames ++ frames16
def after15 (bitmapPrefix : AppList (BitVec 64)) := after16 (Chunk304_319.after bitmapPrefix)
theorem compiled15_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs15 (bitmapPrefix, 834) = (bodies15, frames15, after15 bitmapPrefix, 4603) := by
  unfold programs15
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk304_319.compiled_eq]
  dsimp only [Chunk304_319.result]
  rw [compiled16_eq]
  rfl
def programs14 := Chunk288_303.programs ++ programs15
def bodies14 := Chunk288_303.bodies ++ bodies15
def frames14 := Chunk288_303.frames ++ frames15
def after14 (bitmapPrefix : AppList (BitVec 64)) := after15 (Chunk288_303.after bitmapPrefix)
theorem compiled14_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs14 (bitmapPrefix, 789) = (bodies14, frames14, after14 bitmapPrefix, 4603) := by
  unfold programs14
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk288_303.compiled_eq]
  dsimp only [Chunk288_303.result]
  rw [compiled15_eq]
  rfl
def programs13 := Chunk272_287.programs ++ programs14
def bodies13 := Chunk272_287.bodies ++ bodies14
def frames13 := Chunk272_287.frames ++ frames14
def after13 (bitmapPrefix : AppList (BitVec 64)) := after14 (Chunk272_287.after bitmapPrefix)
theorem compiled13_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs13 (bitmapPrefix, 658) = (bodies13, frames13, after13 bitmapPrefix, 4603) := by
  unfold programs13
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk272_287.compiled_eq]
  dsimp only [Chunk272_287.result]
  rw [compiled14_eq]
  rfl
def programs12 := Chunk256_271.programs ++ programs13
def bodies12 := Chunk256_271.bodies ++ bodies13
def frames12 := Chunk256_271.frames ++ frames13
def after12 (bitmapPrefix : AppList (BitVec 64)) := after13 (Chunk256_271.after bitmapPrefix)
theorem compiled12_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs12 (bitmapPrefix, 534) = (bodies12, frames12, after12 bitmapPrefix, 4603) := by
  unfold programs12
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk256_271.compiled_eq]
  dsimp only [Chunk256_271.result]
  rw [compiled13_eq]
  rfl
def programs11 := Chunk240_255.programs ++ programs12
def bodies11 := Chunk240_255.bodies ++ bodies12
def frames11 := Chunk240_255.frames ++ frames12
def after11 (bitmapPrefix : AppList (BitVec 64)) := after12 (Chunk240_255.after bitmapPrefix)
theorem compiled11_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs11 (bitmapPrefix, 460) = (bodies11, frames11, after11 bitmapPrefix, 4603) := by
  unfold programs11
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk240_255.compiled_eq]
  dsimp only [Chunk240_255.result]
  rw [compiled12_eq]
  rfl
def programs10 := Chunk224_239.programs ++ programs11
def bodies10 := Chunk224_239.bodies ++ bodies11
def frames10 := Chunk224_239.frames ++ frames11
def after10 (bitmapPrefix : AppList (BitVec 64)) := after11 (Chunk224_239.after bitmapPrefix)
theorem compiled10_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs10 (bitmapPrefix, 298) = (bodies10, frames10, after10 bitmapPrefix, 4603) := by
  unfold programs10
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk224_239.compiled_eq]
  dsimp only [Chunk224_239.result]
  rw [compiled11_eq]
  rfl
def programs9 := Chunk208_223.programs ++ programs10
def bodies9 := Chunk208_223.bodies ++ bodies10
def frames9 := Chunk208_223.frames ++ frames10
def after9 (bitmapPrefix : AppList (BitVec 64)) := after10 (Chunk208_223.after bitmapPrefix)
theorem compiled9_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs9 (bitmapPrefix, 258) = (bodies9, frames9, after9 bitmapPrefix, 4603) := by
  unfold programs9
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk208_223.compiled_eq]
  dsimp only [Chunk208_223.result]
  rw [compiled10_eq]
  rfl
def programs8 := Chunk192_207.programs ++ programs9
def bodies8 := Chunk192_207.bodies ++ bodies9
def frames8 := Chunk192_207.frames ++ frames9
def after8 (bitmapPrefix : AppList (BitVec 64)) := after9 (Chunk192_207.after bitmapPrefix)
theorem compiled8_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs8 (bitmapPrefix, 224) = (bodies8, frames8, after8 bitmapPrefix, 4603) := by
  unfold programs8
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk192_207.compiled_eq]
  dsimp only [Chunk192_207.result]
  rw [compiled9_eq]
  rfl
def programs7 := Chunk176_191.programs ++ programs8
def bodies7 := Chunk176_191.bodies ++ bodies8
def frames7 := Chunk176_191.frames ++ frames8
def after7 (bitmapPrefix : AppList (BitVec 64)) := after8 (Chunk176_191.after bitmapPrefix)
theorem compiled7_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs7 (bitmapPrefix, 196) = (bodies7, frames7, after7 bitmapPrefix, 4603) := by
  unfold programs7
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk176_191.compiled_eq]
  dsimp only [Chunk176_191.result]
  rw [compiled8_eq]
  rfl
def programs6 := Chunk160_175.programs ++ programs7
def bodies6 := Chunk160_175.bodies ++ bodies7
def frames6 := Chunk160_175.frames ++ frames7
def after6 (bitmapPrefix : AppList (BitVec 64)) := after7 (Chunk160_175.after bitmapPrefix)
theorem compiled6_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs6 (bitmapPrefix, 146) = (bodies6, frames6, after6 bitmapPrefix, 4603) := by
  unfold programs6
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk160_175.compiled_eq]
  dsimp only [Chunk160_175.result]
  rw [compiled7_eq]
  rfl
def programs5 := Chunk144_159.programs ++ programs6
def bodies5 := Chunk144_159.bodies ++ bodies6
def frames5 := Chunk144_159.frames ++ frames6
def after5 (bitmapPrefix : AppList (BitVec 64)) := after6 (Chunk144_159.after bitmapPrefix)
theorem compiled5_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs5 (bitmapPrefix, 107) = (bodies5, frames5, after5 bitmapPrefix, 4603) := by
  unfold programs5
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk144_159.compiled_eq]
  dsimp only [Chunk144_159.result]
  rw [compiled6_eq]
  rfl
def programs4 := Chunk128_143.programs ++ programs5
def bodies4 := Chunk128_143.bodies ++ bodies5
def frames4 := Chunk128_143.frames ++ frames5
def after4 (bitmapPrefix : AppList (BitVec 64)) := after5 (Chunk128_143.after bitmapPrefix)
theorem compiled4_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs4 (bitmapPrefix, 72) = (bodies4, frames4, after4 bitmapPrefix, 4603) := by
  unfold programs4
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk128_143.compiled_eq]
  dsimp only [Chunk128_143.result]
  rw [compiled5_eq]
  rfl
def programs3 := Chunk112_127.programs ++ programs4
def bodies3 := Chunk112_127.bodies ++ bodies4
def frames3 := Chunk112_127.frames ++ frames4
def after3 (bitmapPrefix : AppList (BitVec 64)) := after4 (Chunk112_127.after bitmapPrefix)
theorem compiled3_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs3 (bitmapPrefix, 46) = (bodies3, frames3, after3 bitmapPrefix, 4603) := by
  unfold programs3
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk112_127.compiled_eq]
  dsimp only [Chunk112_127.result]
  rw [compiled4_eq]
  rfl
def programs2 := Chunk96_111.programs ++ programs3
def bodies2 := Chunk96_111.bodies ++ bodies3
def frames2 := Chunk96_111.frames ++ frames3
def after2 (bitmapPrefix : AppList (BitVec 64)) := after3 (Chunk96_111.after bitmapPrefix)
theorem compiled2_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs2 (bitmapPrefix, 41) = (bodies2, frames2, after2 bitmapPrefix, 4603) := by
  unfold programs2
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk96_111.compiled_eq]
  dsimp only [Chunk96_111.result]
  rw [compiled3_eq]
  rfl
def programs1 := Chunk80_95.programs ++ programs2
def bodies1 := Chunk80_95.bodies ++ bodies2
def frames1 := Chunk80_95.frames ++ frames2
def after1 (bitmapPrefix : AppList (BitVec 64)) := after2 (Chunk80_95.after bitmapPrefix)
theorem compiled1_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs1 (bitmapPrefix, 32) = (bodies1, frames1, after1 bitmapPrefix, 4603) := by
  unfold programs1
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk80_95.compiled_eq]
  dsimp only [Chunk80_95.result]
  rw [compiled2_eq]
  rfl
def programs0 := Chunk64_79.programs ++ programs1
def bodies0 := Chunk64_79.bodies ++ bodies1
def frames0 := Chunk64_79.frames ++ frames1
def after0 (bitmapPrefix : AppList (BitVec 64)) := after1 (Chunk64_79.after bitmapPrefix)
theorem compiled0_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs0 (bitmapPrefix, 1) = (bodies0, frames0, after0 bitmapPrefix, 4603) := by
  unfold programs0
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk64_79.compiled_eq]
  dsimp only [Chunk64_79.result]
  rw [compiled1_eq]
  rfl
theorem programs_eq : programs0 = [StackAnalysis.optimized64, StackAnalysis.optimized65, StackAnalysis.optimized66, StackAnalysis.optimized67, StackAnalysis.optimized68, StackAnalysis.optimized69, StackAnalysis.optimized70, StackAnalysis.optimized71, StackAnalysis.optimized72, StackAnalysis.optimized73, StackAnalysis.optimized74, StackAnalysis.optimized75, StackAnalysis.optimized76, StackAnalysis.optimized77, StackAnalysis.optimized78, StackAnalysis.optimized79, StackAnalysis.optimized80, StackAnalysis.optimized81, StackAnalysis.optimized82, StackAnalysis.optimized83, StackAnalysis.optimized84, StackAnalysis.optimized85, StackAnalysis.optimized86, StackAnalysis.optimized87, StackAnalysis.optimized88, StackAnalysis.optimized89, StackAnalysis.optimized90, StackAnalysis.optimized91, StackAnalysis.optimized92, StackAnalysis.optimized93, StackAnalysis.optimized94, StackAnalysis.optimized95, StackAnalysis.optimized96, StackAnalysis.optimized97, StackAnalysis.optimized98, StackAnalysis.optimized99, StackAnalysis.optimized100, StackAnalysis.optimized101, StackAnalysis.optimized102, StackAnalysis.optimized103, StackAnalysis.optimized104, StackAnalysis.optimized105, StackAnalysis.optimized106, StackAnalysis.optimized107, StackAnalysis.optimized108, StackAnalysis.optimized109, StackAnalysis.optimized110, StackAnalysis.optimized111, StackAnalysis.optimized112, StackAnalysis.optimized113, StackAnalysis.optimized114, StackAnalysis.optimized115, StackAnalysis.optimized116, StackAnalysis.optimized117, StackAnalysis.optimized118, StackAnalysis.optimized119, StackAnalysis.optimized120, StackAnalysis.optimized121, StackAnalysis.optimized122, StackAnalysis.optimized123, StackAnalysis.optimized124, StackAnalysis.optimized125, StackAnalysis.optimized126, StackAnalysis.optimized127, StackAnalysis.optimized128, StackAnalysis.optimized129, StackAnalysis.optimized130, StackAnalysis.optimized131, StackAnalysis.optimized132, StackAnalysis.optimized133, StackAnalysis.optimized134, StackAnalysis.optimized135, StackAnalysis.optimized136, StackAnalysis.optimized137, StackAnalysis.optimized138, StackAnalysis.optimized139, StackAnalysis.optimized140, StackAnalysis.optimized141, StackAnalysis.optimized142, StackAnalysis.optimized143, StackAnalysis.optimized144, StackAnalysis.optimized145, StackAnalysis.optimized146, StackAnalysis.optimized147, StackAnalysis.optimized148, StackAnalysis.optimized149, StackAnalysis.optimized150, StackAnalysis.optimized151, StackAnalysis.optimized152, StackAnalysis.optimized153, StackAnalysis.optimized154, StackAnalysis.optimized155, StackAnalysis.optimized156, StackAnalysis.optimized157, StackAnalysis.optimized158, StackAnalysis.optimized159, StackAnalysis.optimized160, StackAnalysis.optimized161, StackAnalysis.optimized162, StackAnalysis.optimized163, StackAnalysis.optimized164, StackAnalysis.optimized165, StackAnalysis.optimized166, StackAnalysis.optimized167, StackAnalysis.optimized168, StackAnalysis.optimized169, StackAnalysis.optimized170, StackAnalysis.optimized171, StackAnalysis.optimized172, StackAnalysis.optimized173, StackAnalysis.optimized174, StackAnalysis.optimized175, StackAnalysis.optimized176, StackAnalysis.optimized177, StackAnalysis.optimized178, StackAnalysis.optimized179, StackAnalysis.optimized180, StackAnalysis.optimized181, StackAnalysis.optimized182, StackAnalysis.optimized183, StackAnalysis.optimized184, StackAnalysis.optimized185, StackAnalysis.optimized186, StackAnalysis.optimized187, StackAnalysis.optimized188, StackAnalysis.optimized189, StackAnalysis.optimized190, StackAnalysis.optimized191, StackAnalysis.optimized192, StackAnalysis.optimized193, StackAnalysis.optimized194, StackAnalysis.optimized195, StackAnalysis.optimized196, StackAnalysis.optimized197, StackAnalysis.optimized198, StackAnalysis.optimized199, StackAnalysis.optimized200, StackAnalysis.optimized201, StackAnalysis.optimized202, StackAnalysis.optimized203, StackAnalysis.optimized204, StackAnalysis.optimized205, StackAnalysis.optimized206, StackAnalysis.optimized207, StackAnalysis.optimized208, StackAnalysis.optimized209, StackAnalysis.optimized210, StackAnalysis.optimized211, StackAnalysis.optimized212, StackAnalysis.optimized213, StackAnalysis.optimized214, StackAnalysis.optimized215, StackAnalysis.optimized216, StackAnalysis.optimized217, StackAnalysis.optimized218, StackAnalysis.optimized219, StackAnalysis.optimized220, StackAnalysis.optimized221, StackAnalysis.optimized222, StackAnalysis.optimized223, StackAnalysis.optimized224, StackAnalysis.optimized225, StackAnalysis.optimized226, StackAnalysis.optimized227, StackAnalysis.optimized228, StackAnalysis.optimized229, StackAnalysis.optimized230, StackAnalysis.optimized231, StackAnalysis.optimized232, StackAnalysis.optimized233, StackAnalysis.optimized234, StackAnalysis.optimized235, StackAnalysis.optimized236, StackAnalysis.optimized237, StackAnalysis.optimized238, StackAnalysis.optimized239, StackAnalysis.optimized240, StackAnalysis.optimized241, StackAnalysis.optimized242, StackAnalysis.optimized243, StackAnalysis.optimized244, StackAnalysis.optimized245, StackAnalysis.optimized246, StackAnalysis.optimized247, StackAnalysis.optimized248, StackAnalysis.optimized249, StackAnalysis.optimized250, StackAnalysis.optimized251, StackAnalysis.optimized252, StackAnalysis.optimized253, StackAnalysis.optimized254, StackAnalysis.optimized255, StackAnalysis.optimized256, StackAnalysis.optimized257, StackAnalysis.optimized258, StackAnalysis.optimized259, StackAnalysis.optimized260, StackAnalysis.optimized261, StackAnalysis.optimized262, StackAnalysis.optimized263, StackAnalysis.optimized264, StackAnalysis.optimized265, StackAnalysis.optimized266, StackAnalysis.optimized267, StackAnalysis.optimized268, StackAnalysis.optimized269, StackAnalysis.optimized270, StackAnalysis.optimized271, StackAnalysis.optimized272, StackAnalysis.optimized273, StackAnalysis.optimized274, StackAnalysis.optimized275, StackAnalysis.optimized276, StackAnalysis.optimized277, StackAnalysis.optimized278, StackAnalysis.optimized279, StackAnalysis.optimized280, StackAnalysis.optimized281, StackAnalysis.optimized282, StackAnalysis.optimized283, StackAnalysis.optimized284, StackAnalysis.optimized285, StackAnalysis.optimized286, StackAnalysis.optimized287, StackAnalysis.optimized288, StackAnalysis.optimized289, StackAnalysis.optimized290, StackAnalysis.optimized291, StackAnalysis.optimized292, StackAnalysis.optimized293, StackAnalysis.optimized294, StackAnalysis.optimized295, StackAnalysis.optimized296, StackAnalysis.optimized297, StackAnalysis.optimized298, StackAnalysis.optimized299, StackAnalysis.optimized300, StackAnalysis.optimized301, StackAnalysis.optimized302, StackAnalysis.optimized303, StackAnalysis.optimized304, StackAnalysis.optimized305, StackAnalysis.optimized306, StackAnalysis.optimized307, StackAnalysis.optimized308, StackAnalysis.optimized309, StackAnalysis.optimized310, StackAnalysis.optimized311, StackAnalysis.optimized312, StackAnalysis.optimized313, StackAnalysis.optimized314, StackAnalysis.optimized315, StackAnalysis.optimized316, StackAnalysis.optimized317, StackAnalysis.optimized318, StackAnalysis.optimized319, StackAnalysis.optimized320, StackAnalysis.optimized321, StackAnalysis.optimized322, StackAnalysis.optimized323, StackAnalysis.optimized324, StackAnalysis.optimized325, StackAnalysis.optimized326, StackAnalysis.optimized327, StackAnalysis.optimized328, StackAnalysis.optimized329, StackAnalysis.optimized330, StackAnalysis.optimized331, StackAnalysis.optimized332, StackAnalysis.optimized333, StackAnalysis.optimized334, StackAnalysis.optimized335, StackAnalysis.optimized336, StackAnalysis.optimized337, StackAnalysis.optimized338, StackAnalysis.optimized339, StackAnalysis.optimized340, StackAnalysis.optimized341, StackAnalysis.optimized342, StackAnalysis.optimized343, StackAnalysis.optimized344, StackAnalysis.optimized345, StackAnalysis.optimized346, StackAnalysis.optimized347, StackAnalysis.optimized348, StackAnalysis.optimized349, StackAnalysis.optimized350, StackAnalysis.optimized351, StackAnalysis.optimized352, StackAnalysis.optimized353, StackAnalysis.optimized354, StackAnalysis.optimized355, StackAnalysis.optimized356, StackAnalysis.optimized357, StackAnalysis.optimized358, StackAnalysis.optimized359, StackAnalysis.optimized360, StackAnalysis.optimized361, StackAnalysis.optimized362, StackAnalysis.optimized363, StackAnalysis.optimized364, StackAnalysis.optimized365, StackAnalysis.optimized366, StackAnalysis.optimized367, StackAnalysis.optimized368, StackAnalysis.optimized369, StackAnalysis.optimized370, StackAnalysis.optimized371, StackAnalysis.optimized372, StackAnalysis.optimized373, StackAnalysis.optimized374, StackAnalysis.optimized375, StackAnalysis.optimized376, StackAnalysis.optimized377, StackAnalysis.optimized378, StackAnalysis.optimized379, StackAnalysis.optimized380, StackAnalysis.optimized381, StackAnalysis.optimized382, StackAnalysis.optimized383, StackAnalysis.optimized384, StackAnalysis.optimized385, StackAnalysis.optimized386, StackAnalysis.optimized387, StackAnalysis.optimized388, StackAnalysis.optimized389, StackAnalysis.optimized390, StackAnalysis.optimized391, StackAnalysis.optimized392, StackAnalysis.optimized393, StackAnalysis.optimized394, StackAnalysis.optimized395, StackAnalysis.optimized396, StackAnalysis.optimized397, StackAnalysis.optimized398, StackAnalysis.optimized399, StackAnalysis.optimized400, StackAnalysis.optimized401, StackAnalysis.optimized402, StackAnalysis.optimized403, StackAnalysis.optimized404, StackAnalysis.optimized405, StackAnalysis.optimized406, StackAnalysis.optimized407, StackAnalysis.optimized408, StackAnalysis.optimized409, StackAnalysis.optimized410, StackAnalysis.optimized411, StackAnalysis.optimized412, StackAnalysis.optimized413, StackAnalysis.optimized414, StackAnalysis.optimized415, StackAnalysis.optimized416, StackAnalysis.optimized417, StackAnalysis.optimized418, StackAnalysis.optimized419, StackAnalysis.optimized420, StackAnalysis.optimized421, StackAnalysis.optimized422, StackAnalysis.optimized423, StackAnalysis.optimized424, StackAnalysis.optimized425, StackAnalysis.optimized426, StackAnalysis.optimized427, StackAnalysis.optimized428, StackAnalysis.optimized429, StackAnalysis.optimized430, StackAnalysis.optimized431, StackAnalysis.optimized432, StackAnalysis.optimized433, StackAnalysis.optimized434, StackAnalysis.optimized435, StackAnalysis.optimized436, StackAnalysis.optimized437, StackAnalysis.optimized438, StackAnalysis.optimized439, StackAnalysis.optimized440, StackAnalysis.optimized441, StackAnalysis.optimized442, StackAnalysis.optimized443, StackAnalysis.optimized444, StackAnalysis.optimized445, StackAnalysis.optimized446, StackAnalysis.optimized447, StackAnalysis.optimized448, StackAnalysis.optimized449, StackAnalysis.optimized450, StackAnalysis.optimized451, StackAnalysis.optimized452, StackAnalysis.optimized453, StackAnalysis.optimized454, StackAnalysis.optimized455, StackAnalysis.optimized456, StackAnalysis.optimized457, StackAnalysis.optimized458, StackAnalysis.optimized459, StackAnalysis.optimized460, StackAnalysis.optimized461, StackAnalysis.optimized462, StackAnalysis.optimized463, StackAnalysis.optimized464, StackAnalysis.optimized465, StackAnalysis.optimized466, StackAnalysis.optimized467, StackAnalysis.optimized468, StackAnalysis.optimized469, StackAnalysis.optimized470, StackAnalysis.optimized471, StackAnalysis.optimized472, StackAnalysis.optimized473, StackAnalysis.optimized474, StackAnalysis.optimized475, StackAnalysis.optimized476, StackAnalysis.optimized477, StackAnalysis.optimized478, StackAnalysis.optimized479, StackAnalysis.optimized480, StackAnalysis.optimized481, StackAnalysis.optimized482, StackAnalysis.optimized483, StackAnalysis.optimized484, StackAnalysis.optimized485, StackAnalysis.optimized486, StackAnalysis.optimized487, StackAnalysis.optimized488, StackAnalysis.optimized489, StackAnalysis.optimized490, StackAnalysis.optimized491, StackAnalysis.optimized492, StackAnalysis.optimized493, StackAnalysis.optimized494, StackAnalysis.optimized495, StackAnalysis.optimized496, StackAnalysis.optimized497, StackAnalysis.optimized498, StackAnalysis.optimized499, StackAnalysis.optimized500, StackAnalysis.optimized501, StackAnalysis.optimized502, StackAnalysis.optimized503, StackAnalysis.optimized504, StackAnalysis.optimized505, StackAnalysis.optimized506, StackAnalysis.optimized507, StackAnalysis.optimized508, StackAnalysis.optimized509, StackAnalysis.optimized510, StackAnalysis.optimized511, StackAnalysis.optimized512, StackAnalysis.optimized513, StackAnalysis.optimized514, StackAnalysis.optimized515, StackAnalysis.optimized516, StackAnalysis.optimized517, StackAnalysis.optimized518, StackAnalysis.optimized519, StackAnalysis.optimized520, StackAnalysis.optimized521, StackAnalysis.optimized522, StackAnalysis.optimized523, StackAnalysis.optimized524, StackAnalysis.optimized525, StackAnalysis.optimized526, StackAnalysis.optimized527, StackAnalysis.optimized528, StackAnalysis.optimized529, StackAnalysis.optimized530, StackAnalysis.optimized531, StackAnalysis.optimized532, StackAnalysis.optimized533, StackAnalysis.optimized534, StackAnalysis.optimized535, StackAnalysis.optimized536, StackAnalysis.optimized537, StackAnalysis.optimized538, StackAnalysis.optimized539, StackAnalysis.optimized540, StackAnalysis.optimized541, StackAnalysis.optimized542, StackAnalysis.optimized543, StackAnalysis.optimized544, StackAnalysis.optimized545, StackAnalysis.optimized546, StackAnalysis.optimized547, StackAnalysis.optimized548, StackAnalysis.optimized549, StackAnalysis.optimized550, StackAnalysis.optimized551, StackAnalysis.optimized552, StackAnalysis.optimized553, StackAnalysis.optimized554, StackAnalysis.optimized555, StackAnalysis.optimized556, StackAnalysis.optimized557, StackAnalysis.optimized558, StackAnalysis.optimized559, StackAnalysis.optimized560, StackAnalysis.optimized561, StackAnalysis.optimized562, StackAnalysis.optimized563, StackAnalysis.optimized564, StackAnalysis.optimized565, StackAnalysis.optimized566, StackAnalysis.optimized567, StackAnalysis.optimized568, StackAnalysis.optimized569, StackAnalysis.optimized570, StackAnalysis.optimized571, StackAnalysis.optimized572, StackAnalysis.optimized573, StackAnalysis.optimized574, StackAnalysis.optimized575, StackAnalysis.optimized576, StackAnalysis.optimized577, StackAnalysis.optimized578, StackAnalysis.optimized579, StackAnalysis.optimized580, StackAnalysis.optimized581, StackAnalysis.optimized582, StackAnalysis.optimized583, StackAnalysis.optimized584, StackAnalysis.optimized585, StackAnalysis.optimized586, StackAnalysis.optimized587, StackAnalysis.optimized588, StackAnalysis.optimized589, StackAnalysis.optimized590, StackAnalysis.optimized591, StackAnalysis.optimized592, StackAnalysis.optimized593, StackAnalysis.optimized594, StackAnalysis.optimized595, StackAnalysis.optimized596, StackAnalysis.optimized597, StackAnalysis.optimized598, StackAnalysis.optimized599, StackAnalysis.optimized600, StackAnalysis.optimized601, StackAnalysis.optimized602, StackAnalysis.optimized603, StackAnalysis.optimized604, StackAnalysis.optimized605, StackAnalysis.optimized606, StackAnalysis.optimized607, StackAnalysis.optimized608, StackAnalysis.optimized609, StackAnalysis.optimized610, StackAnalysis.optimized611, StackAnalysis.optimized612, StackAnalysis.optimized613, StackAnalysis.optimized614, StackAnalysis.optimized615, StackAnalysis.optimized616, StackAnalysis.optimized617, StackAnalysis.optimized618, StackAnalysis.optimized619, StackAnalysis.optimized620, StackAnalysis.optimized621, StackAnalysis.optimized622, StackAnalysis.optimized623, StackAnalysis.optimized624, StackAnalysis.optimized625, StackAnalysis.optimized626, StackAnalysis.optimized627, StackAnalysis.optimized628, StackAnalysis.optimized629, StackAnalysis.optimized630, StackAnalysis.optimized631, StackAnalysis.optimized632, StackAnalysis.optimized633, StackAnalysis.optimized634, StackAnalysis.optimized635, StackAnalysis.optimized636, StackAnalysis.optimized637, StackAnalysis.optimized638, StackAnalysis.optimized639, StackAnalysis.optimized640, StackAnalysis.optimized641, StackAnalysis.optimized642, StackAnalysis.optimized643, StackAnalysis.optimized644, StackAnalysis.optimized645, StackAnalysis.optimized646, StackAnalysis.optimized647, StackAnalysis.optimized648, StackAnalysis.optimized649, StackAnalysis.optimized650, StackAnalysis.optimized651, StackAnalysis.optimized652, StackAnalysis.optimized653, StackAnalysis.optimized654, StackAnalysis.optimized655, StackAnalysis.optimized656, StackAnalysis.optimized657, StackAnalysis.optimized658, StackAnalysis.optimized659, StackAnalysis.optimized660, StackAnalysis.optimized661, StackAnalysis.optimized662, StackAnalysis.optimized663, StackAnalysis.optimized664, StackAnalysis.optimized665, StackAnalysis.optimized666, StackAnalysis.optimized667, StackAnalysis.optimized668, StackAnalysis.optimized669, StackAnalysis.optimized670, StackAnalysis.optimized671, StackAnalysis.optimized672, StackAnalysis.optimized673, StackAnalysis.optimized674, StackAnalysis.optimized675, StackAnalysis.optimized676, StackAnalysis.optimized677, StackAnalysis.optimized678, StackAnalysis.optimized679, StackAnalysis.optimized680, StackAnalysis.optimized681, StackAnalysis.optimized682, StackAnalysis.optimized683, StackAnalysis.optimized684, StackAnalysis.optimized685, StackAnalysis.optimized686, StackAnalysis.optimized687, StackAnalysis.optimized688, StackAnalysis.optimized689, StackAnalysis.optimized690, StackAnalysis.optimized691, StackAnalysis.optimized692, StackAnalysis.optimized693, StackAnalysis.optimized694, StackAnalysis.optimized695, StackAnalysis.optimized696, StackAnalysis.optimized697, StackAnalysis.optimized698, StackAnalysis.optimized699, StackAnalysis.optimized700, StackAnalysis.optimized701, StackAnalysis.optimized702, StackAnalysis.optimized703, StackAnalysis.optimized704, StackAnalysis.optimized705, StackAnalysis.optimized706, StackAnalysis.optimized707, StackAnalysis.optimized708, StackAnalysis.optimized709, StackAnalysis.optimized710, StackAnalysis.optimized711, StackAnalysis.optimized712, StackAnalysis.optimized713, StackAnalysis.optimized714, StackAnalysis.optimized715, StackAnalysis.optimized716, StackAnalysis.optimized717, StackAnalysis.optimized718, StackAnalysis.optimized719, StackAnalysis.optimized720, StackAnalysis.optimized721, StackAnalysis.optimized722, StackAnalysis.optimized723, StackAnalysis.optimized724, StackAnalysis.optimized725, StackAnalysis.optimized726, StackAnalysis.optimized727, StackAnalysis.optimized728, StackAnalysis.optimized729, StackAnalysis.optimized730, StackAnalysis.optimized731, StackAnalysis.optimized732, StackAnalysis.optimized733, StackAnalysis.optimized734, StackAnalysis.optimized735, StackAnalysis.optimized736, StackAnalysis.optimized737, StackAnalysis.optimized738, StackAnalysis.optimized739, StackAnalysis.optimized740, StackAnalysis.optimized741, StackAnalysis.optimized742, StackAnalysis.optimized743, StackAnalysis.optimized744, StackAnalysis.optimized745, StackAnalysis.optimized746, StackAnalysis.optimized747, StackAnalysis.optimized748, StackAnalysis.optimized749, StackAnalysis.optimized750, StackAnalysis.optimized751, StackAnalysis.optimized752, StackAnalysis.optimized753, StackAnalysis.optimized754, StackAnalysis.optimized755, StackAnalysis.optimized756, StackAnalysis.optimized757, StackAnalysis.optimized758, StackAnalysis.optimized759, StackAnalysis.optimized760, StackAnalysis.optimized761, StackAnalysis.optimized762, StackAnalysis.optimized763, StackAnalysis.optimized764, StackAnalysis.optimized765, StackAnalysis.optimized766, StackAnalysis.optimized767, StackAnalysis.optimized768, StackAnalysis.optimized769, StackAnalysis.optimized770, StackAnalysis.optimized771, StackAnalysis.optimized772, StackAnalysis.optimized773, StackAnalysis.optimized774, StackAnalysis.optimized775, StackAnalysis.optimized776, StackAnalysis.optimized777, StackAnalysis.optimized778, StackAnalysis.optimized779, StackAnalysis.optimized780, StackAnalysis.optimized781, StackAnalysis.optimized782, StackAnalysis.optimized783, StackAnalysis.optimized784, StackAnalysis.optimized785, StackAnalysis.optimized786, StackAnalysis.optimized787, StackAnalysis.optimized788, StackAnalysis.optimized789, StackAnalysis.optimized790, StackAnalysis.optimized791, StackAnalysis.optimized792, StackAnalysis.optimized793, StackAnalysis.optimized794, StackAnalysis.optimized795, StackAnalysis.optimized796, StackAnalysis.optimized797, StackAnalysis.optimized798, StackAnalysis.optimized799, StackAnalysis.optimized800, StackAnalysis.optimized801, StackAnalysis.optimized802, StackAnalysis.optimized803, StackAnalysis.optimized804, StackAnalysis.optimized805, StackAnalysis.optimized806, StackAnalysis.optimized807, StackAnalysis.optimized808, StackAnalysis.optimized809, StackAnalysis.optimized810, StackAnalysis.optimized811, StackAnalysis.optimized812, StackAnalysis.optimized813, StackAnalysis.optimized814, StackAnalysis.optimized815, StackAnalysis.optimized816, StackAnalysis.optimized817, StackAnalysis.optimized818, StackAnalysis.optimized819, StackAnalysis.optimized820, StackAnalysis.optimized821, StackAnalysis.optimized822, StackAnalysis.optimized823, StackAnalysis.optimized824, StackAnalysis.optimized825, StackAnalysis.optimized826, StackAnalysis.optimized827, StackAnalysis.optimized828, StackAnalysis.optimized829, StackAnalysis.optimized830, StackAnalysis.optimized831, StackAnalysis.optimized832, StackAnalysis.optimized833, StackAnalysis.optimized834, StackAnalysis.optimized835, StackAnalysis.optimized836, StackAnalysis.optimized837, StackAnalysis.optimized838, StackAnalysis.optimized839, StackAnalysis.optimized840, StackAnalysis.optimized841, StackAnalysis.optimized842, StackAnalysis.optimized843, StackAnalysis.optimized844, StackAnalysis.optimized845, StackAnalysis.optimized846, StackAnalysis.optimized847, StackAnalysis.optimized848, StackAnalysis.optimized849, StackAnalysis.optimized850, StackAnalysis.optimized851, StackAnalysis.optimized852, StackAnalysis.optimized853, StackAnalysis.optimized854, StackAnalysis.optimized855, StackAnalysis.optimized856, StackAnalysis.optimized857, StackAnalysis.optimized858, StackAnalysis.optimized859, StackAnalysis.optimized860, StackAnalysis.optimized861, StackAnalysis.optimized862, StackAnalysis.optimized863, StackAnalysis.optimized864, StackAnalysis.optimized865, StackAnalysis.optimized866, StackAnalysis.optimized867, StackAnalysis.optimized868, StackAnalysis.optimized869, StackAnalysis.optimized870, StackAnalysis.optimized871, StackAnalysis.optimized872, StackAnalysis.optimized873, StackAnalysis.optimized874, StackAnalysis.optimized875, StackAnalysis.optimized876, StackAnalysis.optimized877] := by rfl
#print axioms compiled0_eq
#print axioms programs_eq
def bitmaps : List (BitVec 64) := appListAppend (after0 (.list [4]))
def wordConfig : WordToStack.Native.Config := { bitmapsLength := 4603, stackFrameSize := sptFromAList ((bodies0.zip frames0).map (fun ((identifier, _), frame) => (identifier, frame))) }
def stack : List (Nat × StackLang.HolProg 64) := (raiseStubLocation, WordToStack.Native.raiseStubNative false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: (storeConstsStubLocation, WordToStack.Native.storeConstsStubNative (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: bodies0
theorem native_eq : WordToStack.Native.compileNative riscvConfig false programs0 = (bitmaps, wordConfig, 0 :: frames0, stack) := by
  exact InitECandidate.Proofs.BackendComputation.compileNative_of_bodies riscvConfig false programs0 bodies0 frames0 _ (compiled0_eq (.list [4]))
#print axioms native_eq
end InitECandidate.Proofs.BackendStages.Native
