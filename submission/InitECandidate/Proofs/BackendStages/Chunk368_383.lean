import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function368
import InitECandidate.Proofs.BackendStages.Function369
import InitECandidate.Proofs.BackendStages.Function370
import InitECandidate.Proofs.BackendStages.Function371
import InitECandidate.Proofs.BackendStages.Function372
import InitECandidate.Proofs.BackendStages.Function373
import InitECandidate.Proofs.BackendStages.Function374
import InitECandidate.Proofs.BackendStages.Function375
import InitECandidate.Proofs.BackendStages.Function376
import InitECandidate.Proofs.BackendStages.Function377
import InitECandidate.Proofs.BackendStages.Function378
import InitECandidate.Proofs.BackendStages.Function379
import InitECandidate.Proofs.BackendStages.Function380
import InitECandidate.Proofs.BackendStages.Function381
import InitECandidate.Proofs.BackendStages.Function382
import InitECandidate.Proofs.BackendStages.Function383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk368_383
def programs384 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies384 : List (Nat × StackLang.HolProg 64) := []
def frames384 : List Nat := []
def after384 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled384_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs384 (bitmapPrefix, 1129) = (bodies384, frames384, after384 bitmapPrefix, 1129) := by rfl
def step383 (bitmapPrefix : AppList (BitVec 64)) := (function383 bitmapPrefix).2.2.1
def programs383 := (383, StackAnalysis.optimized383.2.1, StackAnalysis.optimized383.2.2) :: programs384
def bodies383 := (383, stackBody383_73) :: bodies384
def frames383 := 0 :: frames384
def after383 (bitmapPrefix : AppList (BitVec 64)) := after384 (step383 bitmapPrefix)
theorem compiled383_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs383 (bitmapPrefix, 1129) = (bodies383, frames383, after383 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 383 StackAnalysis.optimized383.2.1 StackAnalysis.optimized383.2.2 programs384 (bitmapPrefix, 1129) (step383 bitmapPrefix, 1129) (after384 (step383 bitmapPrefix), 1129) stackBody383_73 0 bodies384 frames384 (function383_eq bitmapPrefix) (compiled384_eq (step383 bitmapPrefix))
def step382 (bitmapPrefix : AppList (BitVec 64)) := (function382 bitmapPrefix).2.2.1
def programs382 := (382, StackAnalysis.optimized382.2.1, StackAnalysis.optimized382.2.2) :: programs383
def bodies382 := (382, stackBody382_300) :: bodies383
def frames382 := 6 :: frames383
def after382 (bitmapPrefix : AppList (BitVec 64)) := after383 (step382 bitmapPrefix)
theorem compiled382_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs382 (bitmapPrefix, 1124) = (bodies382, frames382, after382 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 382 StackAnalysis.optimized382.2.1 StackAnalysis.optimized382.2.2 programs383 (bitmapPrefix, 1124) (step382 bitmapPrefix, 1129) (after383 (step382 bitmapPrefix), 1129) stackBody382_300 6 bodies383 frames383 (function382_eq bitmapPrefix) (compiled383_eq (step382 bitmapPrefix))
def step381 (bitmapPrefix : AppList (BitVec 64)) := (function381 bitmapPrefix).2.2.1
def programs381 := (381, StackAnalysis.optimized381.2.1, StackAnalysis.optimized381.2.2) :: programs382
def bodies381 := (381, stackBody381_330) :: bodies382
def frames381 := 6 :: frames382
def after381 (bitmapPrefix : AppList (BitVec 64)) := after382 (step381 bitmapPrefix)
theorem compiled381_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs381 (bitmapPrefix, 1118) = (bodies381, frames381, after381 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 381 StackAnalysis.optimized381.2.1 StackAnalysis.optimized381.2.2 programs382 (bitmapPrefix, 1118) (step381 bitmapPrefix, 1124) (after382 (step381 bitmapPrefix), 1129) stackBody381_330 6 bodies382 frames382 (function381_eq bitmapPrefix) (compiled382_eq (step381 bitmapPrefix))
def step380 (bitmapPrefix : AppList (BitVec 64)) := (function380 bitmapPrefix).2.2.1
def programs380 := (380, StackAnalysis.optimized380.2.1, StackAnalysis.optimized380.2.2) :: programs381
def bodies380 := (380, stackBody380_282) :: bodies381
def frames380 := 5 :: frames381
def after380 (bitmapPrefix : AppList (BitVec 64)) := after381 (step380 bitmapPrefix)
theorem compiled380_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs380 (bitmapPrefix, 1113) = (bodies380, frames380, after380 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 380 StackAnalysis.optimized380.2.1 StackAnalysis.optimized380.2.2 programs381 (bitmapPrefix, 1113) (step380 bitmapPrefix, 1118) (after381 (step380 bitmapPrefix), 1129) stackBody380_282 5 bodies381 frames381 (function380_eq bitmapPrefix) (compiled381_eq (step380 bitmapPrefix))
def step379 (bitmapPrefix : AppList (BitVec 64)) := (function379 bitmapPrefix).2.2.1
def programs379 := (379, StackAnalysis.optimized379.2.1, StackAnalysis.optimized379.2.2) :: programs380
def bodies379 := (379, stackBody379_348) :: bodies380
def frames379 := 6 :: frames380
def after379 (bitmapPrefix : AppList (BitVec 64)) := after380 (step379 bitmapPrefix)
theorem compiled379_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs379 (bitmapPrefix, 1108) = (bodies379, frames379, after379 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 379 StackAnalysis.optimized379.2.1 StackAnalysis.optimized379.2.2 programs380 (bitmapPrefix, 1108) (step379 bitmapPrefix, 1113) (after380 (step379 bitmapPrefix), 1129) stackBody379_348 6 bodies380 frames380 (function379_eq bitmapPrefix) (compiled380_eq (step379 bitmapPrefix))
def step378 (bitmapPrefix : AppList (BitVec 64)) := (function378 bitmapPrefix).2.2.1
def programs378 := (378, StackAnalysis.optimized378.2.1, StackAnalysis.optimized378.2.2) :: programs379
def bodies378 := (378, stackBody378_1640) :: bodies379
def frames378 := 13 :: frames379
def after378 (bitmapPrefix : AppList (BitVec 64)) := after379 (step378 bitmapPrefix)
theorem compiled378_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs378 (bitmapPrefix, 1092) = (bodies378, frames378, after378 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 378 StackAnalysis.optimized378.2.1 StackAnalysis.optimized378.2.2 programs379 (bitmapPrefix, 1092) (step378 bitmapPrefix, 1108) (after379 (step378 bitmapPrefix), 1129) stackBody378_1640 13 bodies379 frames379 (function378_eq bitmapPrefix) (compiled379_eq (step378 bitmapPrefix))
def step377 (bitmapPrefix : AppList (BitVec 64)) := (function377 bitmapPrefix).2.2.1
def programs377 := (377, StackAnalysis.optimized377.2.1, StackAnalysis.optimized377.2.2) :: programs378
def bodies377 := (377, stackBody377_406) :: bodies378
def frames377 := 6 :: frames378
def after377 (bitmapPrefix : AppList (BitVec 64)) := after378 (step377 bitmapPrefix)
theorem compiled377_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs377 (bitmapPrefix, 1088) = (bodies377, frames377, after377 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 377 StackAnalysis.optimized377.2.1 StackAnalysis.optimized377.2.2 programs378 (bitmapPrefix, 1088) (step377 bitmapPrefix, 1092) (after378 (step377 bitmapPrefix), 1129) stackBody377_406 6 bodies378 frames378 (function377_eq bitmapPrefix) (compiled378_eq (step377 bitmapPrefix))
def step376 (bitmapPrefix : AppList (BitVec 64)) := (function376 bitmapPrefix).2.2.1
def programs376 := (376, StackAnalysis.optimized376.2.1, StackAnalysis.optimized376.2.2) :: programs377
def bodies376 := (376, stackBody376_12) :: bodies377
def frames376 := 0 :: frames377
def after376 (bitmapPrefix : AppList (BitVec 64)) := after377 (step376 bitmapPrefix)
theorem compiled376_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs376 (bitmapPrefix, 1088) = (bodies376, frames376, after376 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 376 StackAnalysis.optimized376.2.1 StackAnalysis.optimized376.2.2 programs377 (bitmapPrefix, 1088) (step376 bitmapPrefix, 1088) (after377 (step376 bitmapPrefix), 1129) stackBody376_12 0 bodies377 frames377 (function376_eq bitmapPrefix) (compiled377_eq (step376 bitmapPrefix))
def step375 (bitmapPrefix : AppList (BitVec 64)) := (function375 bitmapPrefix).2.2.1
def programs375 := (375, StackAnalysis.optimized375.2.1, StackAnalysis.optimized375.2.2) :: programs376
def bodies375 := (375, stackBody375_12) :: bodies376
def frames375 := 0 :: frames376
def after375 (bitmapPrefix : AppList (BitVec 64)) := after376 (step375 bitmapPrefix)
theorem compiled375_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs375 (bitmapPrefix, 1088) = (bodies375, frames375, after375 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 375 StackAnalysis.optimized375.2.1 StackAnalysis.optimized375.2.2 programs376 (bitmapPrefix, 1088) (step375 bitmapPrefix, 1088) (after376 (step375 bitmapPrefix), 1129) stackBody375_12 0 bodies376 frames376 (function375_eq bitmapPrefix) (compiled376_eq (step375 bitmapPrefix))
def step374 (bitmapPrefix : AppList (BitVec 64)) := (function374 bitmapPrefix).2.2.1
def programs374 := (374, StackAnalysis.optimized374.2.1, StackAnalysis.optimized374.2.2) :: programs375
def bodies374 := (374, stackBody374_12) :: bodies375
def frames374 := 0 :: frames375
def after374 (bitmapPrefix : AppList (BitVec 64)) := after375 (step374 bitmapPrefix)
theorem compiled374_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs374 (bitmapPrefix, 1088) = (bodies374, frames374, after374 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 374 StackAnalysis.optimized374.2.1 StackAnalysis.optimized374.2.2 programs375 (bitmapPrefix, 1088) (step374 bitmapPrefix, 1088) (after375 (step374 bitmapPrefix), 1129) stackBody374_12 0 bodies375 frames375 (function374_eq bitmapPrefix) (compiled375_eq (step374 bitmapPrefix))
def step373 (bitmapPrefix : AppList (BitVec 64)) := (function373 bitmapPrefix).2.2.1
def programs373 := (373, StackAnalysis.optimized373.2.1, StackAnalysis.optimized373.2.2) :: programs374
def bodies373 := (373, stackBody373_12) :: bodies374
def frames373 := 0 :: frames374
def after373 (bitmapPrefix : AppList (BitVec 64)) := after374 (step373 bitmapPrefix)
theorem compiled373_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs373 (bitmapPrefix, 1088) = (bodies373, frames373, after373 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 373 StackAnalysis.optimized373.2.1 StackAnalysis.optimized373.2.2 programs374 (bitmapPrefix, 1088) (step373 bitmapPrefix, 1088) (after374 (step373 bitmapPrefix), 1129) stackBody373_12 0 bodies374 frames374 (function373_eq bitmapPrefix) (compiled374_eq (step373 bitmapPrefix))
def step372 (bitmapPrefix : AppList (BitVec 64)) := (function372 bitmapPrefix).2.2.1
def programs372 := (372, StackAnalysis.optimized372.2.1, StackAnalysis.optimized372.2.2) :: programs373
def bodies372 := (372, stackBody372_12) :: bodies373
def frames372 := 0 :: frames373
def after372 (bitmapPrefix : AppList (BitVec 64)) := after373 (step372 bitmapPrefix)
theorem compiled372_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs372 (bitmapPrefix, 1088) = (bodies372, frames372, after372 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 372 StackAnalysis.optimized372.2.1 StackAnalysis.optimized372.2.2 programs373 (bitmapPrefix, 1088) (step372 bitmapPrefix, 1088) (after373 (step372 bitmapPrefix), 1129) stackBody372_12 0 bodies373 frames373 (function372_eq bitmapPrefix) (compiled373_eq (step372 bitmapPrefix))
def step371 (bitmapPrefix : AppList (BitVec 64)) := (function371 bitmapPrefix).2.2.1
def programs371 := (371, StackAnalysis.optimized371.2.1, StackAnalysis.optimized371.2.2) :: programs372
def bodies371 := (371, stackBody371_12) :: bodies372
def frames371 := 0 :: frames372
def after371 (bitmapPrefix : AppList (BitVec 64)) := after372 (step371 bitmapPrefix)
theorem compiled371_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs371 (bitmapPrefix, 1088) = (bodies371, frames371, after371 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 371 StackAnalysis.optimized371.2.1 StackAnalysis.optimized371.2.2 programs372 (bitmapPrefix, 1088) (step371 bitmapPrefix, 1088) (after372 (step371 bitmapPrefix), 1129) stackBody371_12 0 bodies372 frames372 (function371_eq bitmapPrefix) (compiled372_eq (step371 bitmapPrefix))
def step370 (bitmapPrefix : AppList (BitVec 64)) := (function370 bitmapPrefix).2.2.1
def programs370 := (370, StackAnalysis.optimized370.2.1, StackAnalysis.optimized370.2.2) :: programs371
def bodies370 := (370, stackBody370_230) :: bodies371
def frames370 := 6 :: frames371
def after370 (bitmapPrefix : AppList (BitVec 64)) := after371 (step370 bitmapPrefix)
theorem compiled370_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs370 (bitmapPrefix, 1084) = (bodies370, frames370, after370 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 370 StackAnalysis.optimized370.2.1 StackAnalysis.optimized370.2.2 programs371 (bitmapPrefix, 1084) (step370 bitmapPrefix, 1088) (after371 (step370 bitmapPrefix), 1129) stackBody370_230 6 bodies371 frames371 (function370_eq bitmapPrefix) (compiled371_eq (step370 bitmapPrefix))
def step369 (bitmapPrefix : AppList (BitVec 64)) := (function369 bitmapPrefix).2.2.1
def programs369 := (369, StackAnalysis.optimized369.2.1, StackAnalysis.optimized369.2.2) :: programs370
def bodies369 := (369, stackBody369_66) :: bodies370
def frames369 := 2 :: frames370
def after369 (bitmapPrefix : AppList (BitVec 64)) := after370 (step369 bitmapPrefix)
theorem compiled369_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs369 (bitmapPrefix, 1083) = (bodies369, frames369, after369 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 369 StackAnalysis.optimized369.2.1 StackAnalysis.optimized369.2.2 programs370 (bitmapPrefix, 1083) (step369 bitmapPrefix, 1084) (after370 (step369 bitmapPrefix), 1129) stackBody369_66 2 bodies370 frames370 (function369_eq bitmapPrefix) (compiled370_eq (step369 bitmapPrefix))
def step368 (bitmapPrefix : AppList (BitVec 64)) := (function368 bitmapPrefix).2.2.1
def programs368 := (368, StackAnalysis.optimized368.2.1, StackAnalysis.optimized368.2.2) :: programs369
def bodies368 := (368, stackBody368_12) :: bodies369
def frames368 := 0 :: frames369
def after368 (bitmapPrefix : AppList (BitVec 64)) := after369 (step368 bitmapPrefix)
theorem compiled368_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs368 (bitmapPrefix, 1083) = (bodies368, frames368, after368 bitmapPrefix, 1129) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 368 StackAnalysis.optimized368.2.1 StackAnalysis.optimized368.2.2 programs369 (bitmapPrefix, 1083) (step368 bitmapPrefix, 1083) (after369 (step368 bitmapPrefix), 1129) stackBody368_12 0 bodies369 frames369 (function368_eq bitmapPrefix) (compiled369_eq (step368 bitmapPrefix))
def programs := programs368
def bodies := bodies368
def frames := frames368
def after := after368
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1129)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1083) = result bitmapPrefix := compiled368_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk368_383
