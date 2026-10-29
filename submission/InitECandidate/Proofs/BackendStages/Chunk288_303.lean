import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function288
import InitECandidate.Proofs.BackendStages.Function289
import InitECandidate.Proofs.BackendStages.Function290
import InitECandidate.Proofs.BackendStages.Function291
import InitECandidate.Proofs.BackendStages.Function292
import InitECandidate.Proofs.BackendStages.Function293
import InitECandidate.Proofs.BackendStages.Function294
import InitECandidate.Proofs.BackendStages.Function295
import InitECandidate.Proofs.BackendStages.Function296
import InitECandidate.Proofs.BackendStages.Function297
import InitECandidate.Proofs.BackendStages.Function298
import InitECandidate.Proofs.BackendStages.Function299
import InitECandidate.Proofs.BackendStages.Function300
import InitECandidate.Proofs.BackendStages.Function301
import InitECandidate.Proofs.BackendStages.Function302
import InitECandidate.Proofs.BackendStages.Function303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk288_303
def programs304 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies304 : List (Nat × StackLang.HolProg 64) := []
def frames304 : List Nat := []
def after304 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled304_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs304 (bitmapPrefix, 834) = (bodies304, frames304, after304 bitmapPrefix, 834) := by rfl
def step303 (bitmapPrefix : AppList (BitVec 64)) := (function303 bitmapPrefix).2.2.1
def programs303 := (303, StackAnalysis.optimized303.2.1, StackAnalysis.optimized303.2.2) :: programs304
def bodies303 := (303, stackBody303_132) :: bodies304
def frames303 := 3 :: frames304
def after303 (bitmapPrefix : AppList (BitVec 64)) := after304 (step303 bitmapPrefix)
theorem compiled303_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs303 (bitmapPrefix, 832) = (bodies303, frames303, after303 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 303 StackAnalysis.optimized303.2.1 StackAnalysis.optimized303.2.2 programs304 (bitmapPrefix, 832) (step303 bitmapPrefix, 834) (after304 (step303 bitmapPrefix), 834) stackBody303_132 3 bodies304 frames304 (function303_eq bitmapPrefix) (compiled304_eq (step303 bitmapPrefix))
def step302 (bitmapPrefix : AppList (BitVec 64)) := (function302 bitmapPrefix).2.2.1
def programs302 := (302, StackAnalysis.optimized302.2.1, StackAnalysis.optimized302.2.2) :: programs303
def bodies302 := (302, stackBody302_1343) :: bodies303
def frames302 := 12 :: frames303
def after302 (bitmapPrefix : AppList (BitVec 64)) := after303 (step302 bitmapPrefix)
theorem compiled302_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs302 (bitmapPrefix, 825) = (bodies302, frames302, after302 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 302 StackAnalysis.optimized302.2.1 StackAnalysis.optimized302.2.2 programs303 (bitmapPrefix, 825) (step302 bitmapPrefix, 832) (after303 (step302 bitmapPrefix), 834) stackBody302_1343 12 bodies303 frames303 (function302_eq bitmapPrefix) (compiled303_eq (step302 bitmapPrefix))
def step301 (bitmapPrefix : AppList (BitVec 64)) := (function301 bitmapPrefix).2.2.1
def programs301 := (301, StackAnalysis.optimized301.2.1, StackAnalysis.optimized301.2.2) :: programs302
def bodies301 := (301, stackBody301_1206) :: bodies302
def frames301 := 11 :: frames302
def after301 (bitmapPrefix : AppList (BitVec 64)) := after302 (step301 bitmapPrefix)
theorem compiled301_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs301 (bitmapPrefix, 810) = (bodies301, frames301, after301 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 301 StackAnalysis.optimized301.2.1 StackAnalysis.optimized301.2.2 programs302 (bitmapPrefix, 810) (step301 bitmapPrefix, 825) (after302 (step301 bitmapPrefix), 834) stackBody301_1206 11 bodies302 frames302 (function301_eq bitmapPrefix) (compiled302_eq (step301 bitmapPrefix))
def step300 (bitmapPrefix : AppList (BitVec 64)) := (function300 bitmapPrefix).2.2.1
def programs300 := (300, StackAnalysis.optimized300.2.1, StackAnalysis.optimized300.2.2) :: programs301
def bodies300 := (300, stackBody300_462) :: bodies301
def frames300 := 10 :: frames301
def after300 (bitmapPrefix : AppList (BitVec 64)) := after301 (step300 bitmapPrefix)
theorem compiled300_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs300 (bitmapPrefix, 805) = (bodies300, frames300, after300 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 300 StackAnalysis.optimized300.2.1 StackAnalysis.optimized300.2.2 programs301 (bitmapPrefix, 805) (step300 bitmapPrefix, 810) (after301 (step300 bitmapPrefix), 834) stackBody300_462 10 bodies301 frames301 (function300_eq bitmapPrefix) (compiled301_eq (step300 bitmapPrefix))
def step299 (bitmapPrefix : AppList (BitVec 64)) := (function299 bitmapPrefix).2.2.1
def programs299 := (299, StackAnalysis.optimized299.2.1, StackAnalysis.optimized299.2.2) :: programs300
def bodies299 := (299, stackBody299_36) :: bodies300
def frames299 := 0 :: frames300
def after299 (bitmapPrefix : AppList (BitVec 64)) := after300 (step299 bitmapPrefix)
theorem compiled299_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs299 (bitmapPrefix, 805) = (bodies299, frames299, after299 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 299 StackAnalysis.optimized299.2.1 StackAnalysis.optimized299.2.2 programs300 (bitmapPrefix, 805) (step299 bitmapPrefix, 805) (after300 (step299 bitmapPrefix), 834) stackBody299_36 0 bodies300 frames300 (function299_eq bitmapPrefix) (compiled300_eq (step299 bitmapPrefix))
def step298 (bitmapPrefix : AppList (BitVec 64)) := (function298 bitmapPrefix).2.2.1
def programs298 := (298, StackAnalysis.optimized298.2.1, StackAnalysis.optimized298.2.2) :: programs299
def bodies298 := (298, stackBody298_122) :: bodies299
def frames298 := 3 :: frames299
def after298 (bitmapPrefix : AppList (BitVec 64)) := after299 (step298 bitmapPrefix)
theorem compiled298_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs298 (bitmapPrefix, 803) = (bodies298, frames298, after298 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 298 StackAnalysis.optimized298.2.1 StackAnalysis.optimized298.2.2 programs299 (bitmapPrefix, 803) (step298 bitmapPrefix, 805) (after299 (step298 bitmapPrefix), 834) stackBody298_122 3 bodies299 frames299 (function298_eq bitmapPrefix) (compiled299_eq (step298 bitmapPrefix))
def step297 (bitmapPrefix : AppList (BitVec 64)) := (function297 bitmapPrefix).2.2.1
def programs297 := (297, StackAnalysis.optimized297.2.1, StackAnalysis.optimized297.2.2) :: programs298
def bodies297 := (297, stackBody297_140) :: bodies298
def frames297 := 5 :: frames298
def after297 (bitmapPrefix : AppList (BitVec 64)) := after298 (step297 bitmapPrefix)
theorem compiled297_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs297 (bitmapPrefix, 802) = (bodies297, frames297, after297 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 297 StackAnalysis.optimized297.2.1 StackAnalysis.optimized297.2.2 programs298 (bitmapPrefix, 802) (step297 bitmapPrefix, 803) (after298 (step297 bitmapPrefix), 834) stackBody297_140 5 bodies298 frames298 (function297_eq bitmapPrefix) (compiled298_eq (step297 bitmapPrefix))
def step296 (bitmapPrefix : AppList (BitVec 64)) := (function296 bitmapPrefix).2.2.1
def programs296 := (296, StackAnalysis.optimized296.2.1, StackAnalysis.optimized296.2.2) :: programs297
def bodies296 := (296, stackBody296_154) :: bodies297
def frames296 := 6 :: frames297
def after296 (bitmapPrefix : AppList (BitVec 64)) := after297 (step296 bitmapPrefix)
theorem compiled296_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs296 (bitmapPrefix, 801) = (bodies296, frames296, after296 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 296 StackAnalysis.optimized296.2.1 StackAnalysis.optimized296.2.2 programs297 (bitmapPrefix, 801) (step296 bitmapPrefix, 802) (after297 (step296 bitmapPrefix), 834) stackBody296_154 6 bodies297 frames297 (function296_eq bitmapPrefix) (compiled297_eq (step296 bitmapPrefix))
def step295 (bitmapPrefix : AppList (BitVec 64)) := (function295 bitmapPrefix).2.2.1
def programs295 := (295, StackAnalysis.optimized295.2.1, StackAnalysis.optimized295.2.2) :: programs296
def bodies295 := (295, stackBody295_102) :: bodies296
def frames295 := 3 :: frames296
def after295 (bitmapPrefix : AppList (BitVec 64)) := after296 (step295 bitmapPrefix)
theorem compiled295_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs295 (bitmapPrefix, 800) = (bodies295, frames295, after295 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 295 StackAnalysis.optimized295.2.1 StackAnalysis.optimized295.2.2 programs296 (bitmapPrefix, 800) (step295 bitmapPrefix, 801) (after296 (step295 bitmapPrefix), 834) stackBody295_102 3 bodies296 frames296 (function295_eq bitmapPrefix) (compiled296_eq (step295 bitmapPrefix))
def step294 (bitmapPrefix : AppList (BitVec 64)) := (function294 bitmapPrefix).2.2.1
def programs294 := (294, StackAnalysis.optimized294.2.1, StackAnalysis.optimized294.2.2) :: programs295
def bodies294 := (294, stackBody294_92) :: bodies295
def frames294 := 2 :: frames295
def after294 (bitmapPrefix : AppList (BitVec 64)) := after295 (step294 bitmapPrefix)
theorem compiled294_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs294 (bitmapPrefix, 799) = (bodies294, frames294, after294 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 294 StackAnalysis.optimized294.2.1 StackAnalysis.optimized294.2.2 programs295 (bitmapPrefix, 799) (step294 bitmapPrefix, 800) (after295 (step294 bitmapPrefix), 834) stackBody294_92 2 bodies295 frames295 (function294_eq bitmapPrefix) (compiled295_eq (step294 bitmapPrefix))
def step293 (bitmapPrefix : AppList (BitVec 64)) := (function293 bitmapPrefix).2.2.1
def programs293 := (293, StackAnalysis.optimized293.2.1, StackAnalysis.optimized293.2.2) :: programs294
def bodies293 := (293, stackBody293_324) :: bodies294
def frames293 := 7 :: frames294
def after293 (bitmapPrefix : AppList (BitVec 64)) := after294 (step293 bitmapPrefix)
theorem compiled293_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs293 (bitmapPrefix, 796) = (bodies293, frames293, after293 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 293 StackAnalysis.optimized293.2.1 StackAnalysis.optimized293.2.2 programs294 (bitmapPrefix, 796) (step293 bitmapPrefix, 799) (after294 (step293 bitmapPrefix), 834) stackBody293_324 7 bodies294 frames294 (function293_eq bitmapPrefix) (compiled294_eq (step293 bitmapPrefix))
def step292 (bitmapPrefix : AppList (BitVec 64)) := (function292 bitmapPrefix).2.2.1
def programs292 := (292, StackAnalysis.optimized292.2.1, StackAnalysis.optimized292.2.2) :: programs293
def bodies292 := (292, stackBody292_192) :: bodies293
def frames292 := 6 :: frames293
def after292 (bitmapPrefix : AppList (BitVec 64)) := after293 (step292 bitmapPrefix)
theorem compiled292_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs292 (bitmapPrefix, 793) = (bodies292, frames292, after292 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 292 StackAnalysis.optimized292.2.1 StackAnalysis.optimized292.2.2 programs293 (bitmapPrefix, 793) (step292 bitmapPrefix, 796) (after293 (step292 bitmapPrefix), 834) stackBody292_192 6 bodies293 frames293 (function292_eq bitmapPrefix) (compiled293_eq (step292 bitmapPrefix))
def step291 (bitmapPrefix : AppList (BitVec 64)) := (function291 bitmapPrefix).2.2.1
def programs291 := (291, StackAnalysis.optimized291.2.1, StackAnalysis.optimized291.2.2) :: programs292
def bodies291 := (291, stackBody291_143) :: bodies292
def frames291 := 6 :: frames292
def after291 (bitmapPrefix : AppList (BitVec 64)) := after292 (step291 bitmapPrefix)
theorem compiled291_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs291 (bitmapPrefix, 792) = (bodies291, frames291, after291 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 291 StackAnalysis.optimized291.2.1 StackAnalysis.optimized291.2.2 programs292 (bitmapPrefix, 792) (step291 bitmapPrefix, 793) (after292 (step291 bitmapPrefix), 834) stackBody291_143 6 bodies292 frames292 (function291_eq bitmapPrefix) (compiled292_eq (step291 bitmapPrefix))
def step290 (bitmapPrefix : AppList (BitVec 64)) := (function290 bitmapPrefix).2.2.1
def programs290 := (290, StackAnalysis.optimized290.2.1, StackAnalysis.optimized290.2.2) :: programs291
def bodies290 := (290, stackBody290_105) :: bodies291
def frames290 := 0 :: frames291
def after290 (bitmapPrefix : AppList (BitVec 64)) := after291 (step290 bitmapPrefix)
theorem compiled290_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs290 (bitmapPrefix, 792) = (bodies290, frames290, after290 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 290 StackAnalysis.optimized290.2.1 StackAnalysis.optimized290.2.2 programs291 (bitmapPrefix, 792) (step290 bitmapPrefix, 792) (after291 (step290 bitmapPrefix), 834) stackBody290_105 0 bodies291 frames291 (function290_eq bitmapPrefix) (compiled291_eq (step290 bitmapPrefix))
def step289 (bitmapPrefix : AppList (BitVec 64)) := (function289 bitmapPrefix).2.2.1
def programs289 := (289, StackAnalysis.optimized289.2.1, StackAnalysis.optimized289.2.2) :: programs290
def bodies289 := (289, stackBody289_292) :: bodies290
def frames289 := 7 :: frames290
def after289 (bitmapPrefix : AppList (BitVec 64)) := after290 (step289 bitmapPrefix)
theorem compiled289_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs289 (bitmapPrefix, 789) = (bodies289, frames289, after289 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 289 StackAnalysis.optimized289.2.1 StackAnalysis.optimized289.2.2 programs290 (bitmapPrefix, 789) (step289 bitmapPrefix, 792) (after290 (step289 bitmapPrefix), 834) stackBody289_292 7 bodies290 frames290 (function289_eq bitmapPrefix) (compiled290_eq (step289 bitmapPrefix))
def step288 (bitmapPrefix : AppList (BitVec 64)) := (function288 bitmapPrefix).2.2.1
def programs288 := (288, StackAnalysis.optimized288.2.1, StackAnalysis.optimized288.2.2) :: programs289
def bodies288 := (288, stackBody288_202) :: bodies289
def frames288 := 0 :: frames289
def after288 (bitmapPrefix : AppList (BitVec 64)) := after289 (step288 bitmapPrefix)
theorem compiled288_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs288 (bitmapPrefix, 789) = (bodies288, frames288, after288 bitmapPrefix, 834) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 288 StackAnalysis.optimized288.2.1 StackAnalysis.optimized288.2.2 programs289 (bitmapPrefix, 789) (step288 bitmapPrefix, 789) (after289 (step288 bitmapPrefix), 834) stackBody288_202 0 bodies289 frames289 (function288_eq bitmapPrefix) (compiled289_eq (step288 bitmapPrefix))
def programs := programs288
def bodies := bodies288
def frames := frames288
def after := after288
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 834)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 789) = result bitmapPrefix := compiled288_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk288_303
