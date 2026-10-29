import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function320
import InitECandidate.Proofs.BackendStages.Function321
import InitECandidate.Proofs.BackendStages.Function322
import InitECandidate.Proofs.BackendStages.Function323
import InitECandidate.Proofs.BackendStages.Function324
import InitECandidate.Proofs.BackendStages.Function325
import InitECandidate.Proofs.BackendStages.Function326
import InitECandidate.Proofs.BackendStages.Function327
import InitECandidate.Proofs.BackendStages.Function328
import InitECandidate.Proofs.BackendStages.Function329
import InitECandidate.Proofs.BackendStages.Function330
import InitECandidate.Proofs.BackendStages.Function331
import InitECandidate.Proofs.BackendStages.Function332
import InitECandidate.Proofs.BackendStages.Function333
import InitECandidate.Proofs.BackendStages.Function334
import InitECandidate.Proofs.BackendStages.Function335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk320_335
def programs336 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies336 : List (Nat × StackLang.HolProg 64) := []
def frames336 : List Nat := []
def after336 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled336_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs336 (bitmapPrefix, 969) = (bodies336, frames336, after336 bitmapPrefix, 969) := by rfl
def step335 (bitmapPrefix : AppList (BitVec 64)) := (function335 bitmapPrefix).2.2.1
def programs335 := (335, StackAnalysis.optimized335.2.1, StackAnalysis.optimized335.2.2) :: programs336
def bodies335 := (335, stackBody335_180) :: bodies336
def frames335 := 3 :: frames336
def after335 (bitmapPrefix : AppList (BitVec 64)) := after336 (step335 bitmapPrefix)
theorem compiled335_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs335 (bitmapPrefix, 968) = (bodies335, frames335, after335 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 335 StackAnalysis.optimized335.2.1 StackAnalysis.optimized335.2.2 programs336 (bitmapPrefix, 968) (step335 bitmapPrefix, 969) (after336 (step335 bitmapPrefix), 969) stackBody335_180 3 bodies336 frames336 (function335_eq bitmapPrefix) (compiled336_eq (step335 bitmapPrefix))
def step334 (bitmapPrefix : AppList (BitVec 64)) := (function334 bitmapPrefix).2.2.1
def programs334 := (334, StackAnalysis.optimized334.2.1, StackAnalysis.optimized334.2.2) :: programs335
def bodies334 := (334, stackBody334_685) :: bodies335
def frames334 := 12 :: frames335
def after334 (bitmapPrefix : AppList (BitVec 64)) := after335 (step334 bitmapPrefix)
theorem compiled334_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs334 (bitmapPrefix, 960) = (bodies334, frames334, after334 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 334 StackAnalysis.optimized334.2.1 StackAnalysis.optimized334.2.2 programs335 (bitmapPrefix, 960) (step334 bitmapPrefix, 968) (after335 (step334 bitmapPrefix), 969) stackBody334_685 12 bodies335 frames335 (function334_eq bitmapPrefix) (compiled335_eq (step334 bitmapPrefix))
def step333 (bitmapPrefix : AppList (BitVec 64)) := (function333 bitmapPrefix).2.2.1
def programs333 := (333, StackAnalysis.optimized333.2.1, StackAnalysis.optimized333.2.2) :: programs334
def bodies333 := (333, stackBody333_1522) :: bodies334
def frames333 := 30 :: frames334
def after333 (bitmapPrefix : AppList (BitVec 64)) := after334 (step333 bitmapPrefix)
theorem compiled333_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs333 (bitmapPrefix, 945) = (bodies333, frames333, after333 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 333 StackAnalysis.optimized333.2.1 StackAnalysis.optimized333.2.2 programs334 (bitmapPrefix, 945) (step333 bitmapPrefix, 960) (after334 (step333 bitmapPrefix), 969) stackBody333_1522 30 bodies334 frames334 (function333_eq bitmapPrefix) (compiled334_eq (step333 bitmapPrefix))
def step332 (bitmapPrefix : AppList (BitVec 64)) := (function332 bitmapPrefix).2.2.1
def programs332 := (332, StackAnalysis.optimized332.2.1, StackAnalysis.optimized332.2.2) :: programs333
def bodies332 := (332, stackBody332_441) :: bodies333
def frames332 := 8 :: frames333
def after332 (bitmapPrefix : AppList (BitVec 64)) := after333 (step332 bitmapPrefix)
theorem compiled332_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs332 (bitmapPrefix, 939) = (bodies332, frames332, after332 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 332 StackAnalysis.optimized332.2.1 StackAnalysis.optimized332.2.2 programs333 (bitmapPrefix, 939) (step332 bitmapPrefix, 945) (after333 (step332 bitmapPrefix), 969) stackBody332_441 8 bodies333 frames333 (function332_eq bitmapPrefix) (compiled333_eq (step332 bitmapPrefix))
def step331 (bitmapPrefix : AppList (BitVec 64)) := (function331 bitmapPrefix).2.2.1
def programs331 := (331, StackAnalysis.optimized331.2.1, StackAnalysis.optimized331.2.2) :: programs332
def bodies331 := (331, stackBody331_196) :: bodies332
def frames331 := 4 :: frames332
def after331 (bitmapPrefix : AppList (BitVec 64)) := after332 (step331 bitmapPrefix)
theorem compiled331_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs331 (bitmapPrefix, 936) = (bodies331, frames331, after331 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 331 StackAnalysis.optimized331.2.1 StackAnalysis.optimized331.2.2 programs332 (bitmapPrefix, 936) (step331 bitmapPrefix, 939) (after332 (step331 bitmapPrefix), 969) stackBody331_196 4 bodies332 frames332 (function331_eq bitmapPrefix) (compiled332_eq (step331 bitmapPrefix))
def step330 (bitmapPrefix : AppList (BitVec 64)) := (function330 bitmapPrefix).2.2.1
def programs330 := (330, StackAnalysis.optimized330.2.1, StackAnalysis.optimized330.2.2) :: programs331
def bodies330 := (330, stackBody330_212) :: bodies331
def frames330 := 5 :: frames331
def after330 (bitmapPrefix : AppList (BitVec 64)) := after331 (step330 bitmapPrefix)
theorem compiled330_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs330 (bitmapPrefix, 933) = (bodies330, frames330, after330 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 330 StackAnalysis.optimized330.2.1 StackAnalysis.optimized330.2.2 programs331 (bitmapPrefix, 933) (step330 bitmapPrefix, 936) (after331 (step330 bitmapPrefix), 969) stackBody330_212 5 bodies331 frames331 (function330_eq bitmapPrefix) (compiled331_eq (step330 bitmapPrefix))
def step329 (bitmapPrefix : AppList (BitVec 64)) := (function329 bitmapPrefix).2.2.1
def programs329 := (329, StackAnalysis.optimized329.2.1, StackAnalysis.optimized329.2.2) :: programs330
def bodies329 := (329, stackBody329_382) :: bodies330
def frames329 := 5 :: frames330
def after329 (bitmapPrefix : AppList (BitVec 64)) := after330 (step329 bitmapPrefix)
theorem compiled329_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs329 (bitmapPrefix, 928) = (bodies329, frames329, after329 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 329 StackAnalysis.optimized329.2.1 StackAnalysis.optimized329.2.2 programs330 (bitmapPrefix, 928) (step329 bitmapPrefix, 933) (after330 (step329 bitmapPrefix), 969) stackBody329_382 5 bodies330 frames330 (function329_eq bitmapPrefix) (compiled330_eq (step329 bitmapPrefix))
def step328 (bitmapPrefix : AppList (BitVec 64)) := (function328 bitmapPrefix).2.2.1
def programs328 := (328, StackAnalysis.optimized328.2.1, StackAnalysis.optimized328.2.2) :: programs329
def bodies328 := (328, stackBody328_224) :: bodies329
def frames328 := 4 :: frames329
def after328 (bitmapPrefix : AppList (BitVec 64)) := after329 (step328 bitmapPrefix)
theorem compiled328_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs328 (bitmapPrefix, 925) = (bodies328, frames328, after328 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 328 StackAnalysis.optimized328.2.1 StackAnalysis.optimized328.2.2 programs329 (bitmapPrefix, 925) (step328 bitmapPrefix, 928) (after329 (step328 bitmapPrefix), 969) stackBody328_224 4 bodies329 frames329 (function328_eq bitmapPrefix) (compiled329_eq (step328 bitmapPrefix))
def step327 (bitmapPrefix : AppList (BitVec 64)) := (function327 bitmapPrefix).2.2.1
def programs327 := (327, StackAnalysis.optimized327.2.1, StackAnalysis.optimized327.2.2) :: programs328
def bodies327 := (327, stackBody327_144) :: bodies328
def frames327 := 3 :: frames328
def after327 (bitmapPrefix : AppList (BitVec 64)) := after328 (step327 bitmapPrefix)
theorem compiled327_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs327 (bitmapPrefix, 924) = (bodies327, frames327, after327 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 327 StackAnalysis.optimized327.2.1 StackAnalysis.optimized327.2.2 programs328 (bitmapPrefix, 924) (step327 bitmapPrefix, 925) (after328 (step327 bitmapPrefix), 969) stackBody327_144 3 bodies328 frames328 (function327_eq bitmapPrefix) (compiled328_eq (step327 bitmapPrefix))
def step326 (bitmapPrefix : AppList (BitVec 64)) := (function326 bitmapPrefix).2.2.1
def programs326 := (326, StackAnalysis.optimized326.2.1, StackAnalysis.optimized326.2.2) :: programs327
def bodies326 := (326, stackBody326_28) :: bodies327
def frames326 := 0 :: frames327
def after326 (bitmapPrefix : AppList (BitVec 64)) := after327 (step326 bitmapPrefix)
theorem compiled326_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs326 (bitmapPrefix, 924) = (bodies326, frames326, after326 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 326 StackAnalysis.optimized326.2.1 StackAnalysis.optimized326.2.2 programs327 (bitmapPrefix, 924) (step326 bitmapPrefix, 924) (after327 (step326 bitmapPrefix), 969) stackBody326_28 0 bodies327 frames327 (function326_eq bitmapPrefix) (compiled327_eq (step326 bitmapPrefix))
def step325 (bitmapPrefix : AppList (BitVec 64)) := (function325 bitmapPrefix).2.2.1
def programs325 := (325, StackAnalysis.optimized325.2.1, StackAnalysis.optimized325.2.2) :: programs326
def bodies325 := (325, stackBody325_162) :: bodies326
def frames325 := 3 :: frames326
def after325 (bitmapPrefix : AppList (BitVec 64)) := after326 (step325 bitmapPrefix)
theorem compiled325_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs325 (bitmapPrefix, 922) = (bodies325, frames325, after325 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 325 StackAnalysis.optimized325.2.1 StackAnalysis.optimized325.2.2 programs326 (bitmapPrefix, 922) (step325 bitmapPrefix, 924) (after326 (step325 bitmapPrefix), 969) stackBody325_162 3 bodies326 frames326 (function325_eq bitmapPrefix) (compiled326_eq (step325 bitmapPrefix))
def step324 (bitmapPrefix : AppList (BitVec 64)) := (function324 bitmapPrefix).2.2.1
def programs324 := (324, StackAnalysis.optimized324.2.1, StackAnalysis.optimized324.2.2) :: programs325
def bodies324 := (324, stackBody324_884) :: bodies325
def frames324 := 10 :: frames325
def after324 (bitmapPrefix : AppList (BitVec 64)) := after325 (step324 bitmapPrefix)
theorem compiled324_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs324 (bitmapPrefix, 913) = (bodies324, frames324, after324 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 324 StackAnalysis.optimized324.2.1 StackAnalysis.optimized324.2.2 programs325 (bitmapPrefix, 913) (step324 bitmapPrefix, 922) (after325 (step324 bitmapPrefix), 969) stackBody324_884 10 bodies325 frames325 (function324_eq bitmapPrefix) (compiled325_eq (step324 bitmapPrefix))
def step323 (bitmapPrefix : AppList (BitVec 64)) := (function323 bitmapPrefix).2.2.1
def programs323 := (323, StackAnalysis.optimized323.2.1, StackAnalysis.optimized323.2.2) :: programs324
def bodies323 := (323, stackBody323_64) :: bodies324
def frames323 := 0 :: frames324
def after323 (bitmapPrefix : AppList (BitVec 64)) := after324 (step323 bitmapPrefix)
theorem compiled323_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs323 (bitmapPrefix, 913) = (bodies323, frames323, after323 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 323 StackAnalysis.optimized323.2.1 StackAnalysis.optimized323.2.2 programs324 (bitmapPrefix, 913) (step323 bitmapPrefix, 913) (after324 (step323 bitmapPrefix), 969) stackBody323_64 0 bodies324 frames324 (function323_eq bitmapPrefix) (compiled324_eq (step323 bitmapPrefix))
def step322 (bitmapPrefix : AppList (BitVec 64)) := (function322 bitmapPrefix).2.2.1
def programs322 := (322, StackAnalysis.optimized322.2.1, StackAnalysis.optimized322.2.2) :: programs323
def bodies322 := (322, stackBody322_1088) :: bodies323
def frames322 := 12 :: frames323
def after322 (bitmapPrefix : AppList (BitVec 64)) := after323 (step322 bitmapPrefix)
theorem compiled322_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs322 (bitmapPrefix, 902) = (bodies322, frames322, after322 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 322 StackAnalysis.optimized322.2.1 StackAnalysis.optimized322.2.2 programs323 (bitmapPrefix, 902) (step322 bitmapPrefix, 913) (after323 (step322 bitmapPrefix), 969) stackBody322_1088 12 bodies323 frames323 (function322_eq bitmapPrefix) (compiled323_eq (step322 bitmapPrefix))
def step321 (bitmapPrefix : AppList (BitVec 64)) := (function321 bitmapPrefix).2.2.1
def programs321 := (321, StackAnalysis.optimized321.2.1, StackAnalysis.optimized321.2.2) :: programs322
def bodies321 := (321, stackBody321_376) :: bodies322
def frames321 := 7 :: frames322
def after321 (bitmapPrefix : AppList (BitVec 64)) := after322 (step321 bitmapPrefix)
theorem compiled321_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs321 (bitmapPrefix, 898) = (bodies321, frames321, after321 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 321 StackAnalysis.optimized321.2.1 StackAnalysis.optimized321.2.2 programs322 (bitmapPrefix, 898) (step321 bitmapPrefix, 902) (after322 (step321 bitmapPrefix), 969) stackBody321_376 7 bodies322 frames322 (function321_eq bitmapPrefix) (compiled322_eq (step321 bitmapPrefix))
def step320 (bitmapPrefix : AppList (BitVec 64)) := (function320 bitmapPrefix).2.2.1
def programs320 := (320, StackAnalysis.optimized320.2.1, StackAnalysis.optimized320.2.2) :: programs321
def bodies320 := (320, stackBody320_244) :: bodies321
def frames320 := 5 :: frames321
def after320 (bitmapPrefix : AppList (BitVec 64)) := after321 (step320 bitmapPrefix)
theorem compiled320_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs320 (bitmapPrefix, 895) = (bodies320, frames320, after320 bitmapPrefix, 969) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 320 StackAnalysis.optimized320.2.1 StackAnalysis.optimized320.2.2 programs321 (bitmapPrefix, 895) (step320 bitmapPrefix, 898) (after321 (step320 bitmapPrefix), 969) stackBody320_244 5 bodies321 frames321 (function320_eq bitmapPrefix) (compiled321_eq (step320 bitmapPrefix))
def programs := programs320
def bodies := bodies320
def frames := frames320
def after := after320
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 969)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 895) = result bitmapPrefix := compiled320_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk320_335
