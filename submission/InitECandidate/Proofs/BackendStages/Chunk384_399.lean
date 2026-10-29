import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function384
import InitECandidate.Proofs.BackendStages.Function385
import InitECandidate.Proofs.BackendStages.Function386
import InitECandidate.Proofs.BackendStages.Function387
import InitECandidate.Proofs.BackendStages.Function388
import InitECandidate.Proofs.BackendStages.Function389
import InitECandidate.Proofs.BackendStages.Function390
import InitECandidate.Proofs.BackendStages.Function391
import InitECandidate.Proofs.BackendStages.Function392
import InitECandidate.Proofs.BackendStages.Function393
import InitECandidate.Proofs.BackendStages.Function394
import InitECandidate.Proofs.BackendStages.Function395
import InitECandidate.Proofs.BackendStages.Function396
import InitECandidate.Proofs.BackendStages.Function397
import InitECandidate.Proofs.BackendStages.Function398
import InitECandidate.Proofs.BackendStages.Function399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk384_399
def programs400 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies400 : List (Nat × StackLang.HolProg 64) := []
def frames400 : List Nat := []
def after400 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled400_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs400 (bitmapPrefix, 1184) = (bodies400, frames400, after400 bitmapPrefix, 1184) := by rfl
def step399 (bitmapPrefix : AppList (BitVec 64)) := (function399 bitmapPrefix).2.2.1
def programs399 := (399, StackAnalysis.optimized399.2.1, StackAnalysis.optimized399.2.2) :: programs400
def bodies399 := (399, stackBody399_86) :: bodies400
def frames399 := 2 :: frames400
def after399 (bitmapPrefix : AppList (BitVec 64)) := after400 (step399 bitmapPrefix)
theorem compiled399_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs399 (bitmapPrefix, 1183) = (bodies399, frames399, after399 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 399 StackAnalysis.optimized399.2.1 StackAnalysis.optimized399.2.2 programs400 (bitmapPrefix, 1183) (step399 bitmapPrefix, 1184) (after400 (step399 bitmapPrefix), 1184) stackBody399_86 2 bodies400 frames400 (function399_eq bitmapPrefix) (compiled400_eq (step399 bitmapPrefix))
def step398 (bitmapPrefix : AppList (BitVec 64)) := (function398 bitmapPrefix).2.2.1
def programs398 := (398, StackAnalysis.optimized398.2.1, StackAnalysis.optimized398.2.2) :: programs399
def bodies398 := (398, stackBody398_190) :: bodies399
def frames398 := 4 :: frames399
def after398 (bitmapPrefix : AppList (BitVec 64)) := after399 (step398 bitmapPrefix)
theorem compiled398_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs398 (bitmapPrefix, 1180) = (bodies398, frames398, after398 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 398 StackAnalysis.optimized398.2.1 StackAnalysis.optimized398.2.2 programs399 (bitmapPrefix, 1180) (step398 bitmapPrefix, 1183) (after399 (step398 bitmapPrefix), 1184) stackBody398_190 4 bodies399 frames399 (function398_eq bitmapPrefix) (compiled399_eq (step398 bitmapPrefix))
def step397 (bitmapPrefix : AppList (BitVec 64)) := (function397 bitmapPrefix).2.2.1
def programs397 := (397, StackAnalysis.optimized397.2.1, StackAnalysis.optimized397.2.2) :: programs398
def bodies397 := (397, stackBody397_294) :: bodies398
def frames397 := 5 :: frames398
def after397 (bitmapPrefix : AppList (BitVec 64)) := after398 (step397 bitmapPrefix)
theorem compiled397_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs397 (bitmapPrefix, 1175) = (bodies397, frames397, after397 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 397 StackAnalysis.optimized397.2.1 StackAnalysis.optimized397.2.2 programs398 (bitmapPrefix, 1175) (step397 bitmapPrefix, 1180) (after398 (step397 bitmapPrefix), 1184) stackBody397_294 5 bodies398 frames398 (function397_eq bitmapPrefix) (compiled398_eq (step397 bitmapPrefix))
def step396 (bitmapPrefix : AppList (BitVec 64)) := (function396 bitmapPrefix).2.2.1
def programs396 := (396, StackAnalysis.optimized396.2.1, StackAnalysis.optimized396.2.2) :: programs397
def bodies396 := (396, stackBody396_72) :: bodies397
def frames396 := 2 :: frames397
def after396 (bitmapPrefix : AppList (BitVec 64)) := after397 (step396 bitmapPrefix)
theorem compiled396_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs396 (bitmapPrefix, 1174) = (bodies396, frames396, after396 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 396 StackAnalysis.optimized396.2.1 StackAnalysis.optimized396.2.2 programs397 (bitmapPrefix, 1174) (step396 bitmapPrefix, 1175) (after397 (step396 bitmapPrefix), 1184) stackBody396_72 2 bodies397 frames397 (function396_eq bitmapPrefix) (compiled397_eq (step396 bitmapPrefix))
def step395 (bitmapPrefix : AppList (BitVec 64)) := (function395 bitmapPrefix).2.2.1
def programs395 := (395, StackAnalysis.optimized395.2.1, StackAnalysis.optimized395.2.2) :: programs396
def bodies395 := (395, stackBody395_118) :: bodies396
def frames395 := 3 :: frames396
def after395 (bitmapPrefix : AppList (BitVec 64)) := after396 (step395 bitmapPrefix)
theorem compiled395_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs395 (bitmapPrefix, 1172) = (bodies395, frames395, after395 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 395 StackAnalysis.optimized395.2.1 StackAnalysis.optimized395.2.2 programs396 (bitmapPrefix, 1172) (step395 bitmapPrefix, 1174) (after396 (step395 bitmapPrefix), 1184) stackBody395_118 3 bodies396 frames396 (function395_eq bitmapPrefix) (compiled396_eq (step395 bitmapPrefix))
def step394 (bitmapPrefix : AppList (BitVec 64)) := (function394 bitmapPrefix).2.2.1
def programs394 := (394, StackAnalysis.optimized394.2.1, StackAnalysis.optimized394.2.2) :: programs395
def bodies394 := (394, stackBody394_76) :: bodies395
def frames394 := 2 :: frames395
def after394 (bitmapPrefix : AppList (BitVec 64)) := after395 (step394 bitmapPrefix)
theorem compiled394_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs394 (bitmapPrefix, 1171) = (bodies394, frames394, after394 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 394 StackAnalysis.optimized394.2.1 StackAnalysis.optimized394.2.2 programs395 (bitmapPrefix, 1171) (step394 bitmapPrefix, 1172) (after395 (step394 bitmapPrefix), 1184) stackBody394_76 2 bodies395 frames395 (function394_eq bitmapPrefix) (compiled395_eq (step394 bitmapPrefix))
def step393 (bitmapPrefix : AppList (BitVec 64)) := (function393 bitmapPrefix).2.2.1
def programs393 := (393, StackAnalysis.optimized393.2.1, StackAnalysis.optimized393.2.2) :: programs394
def bodies393 := (393, stackBody393_144) :: bodies394
def frames393 := 8 :: frames394
def after393 (bitmapPrefix : AppList (BitVec 64)) := after394 (step393 bitmapPrefix)
theorem compiled393_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs393 (bitmapPrefix, 1170) = (bodies393, frames393, after393 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 393 StackAnalysis.optimized393.2.1 StackAnalysis.optimized393.2.2 programs394 (bitmapPrefix, 1170) (step393 bitmapPrefix, 1171) (after394 (step393 bitmapPrefix), 1184) stackBody393_144 8 bodies394 frames394 (function393_eq bitmapPrefix) (compiled394_eq (step393 bitmapPrefix))
def step392 (bitmapPrefix : AppList (BitVec 64)) := (function392 bitmapPrefix).2.2.1
def programs392 := (392, StackAnalysis.optimized392.2.1, StackAnalysis.optimized392.2.2) :: programs393
def bodies392 := (392, stackBody392_142) :: bodies393
def frames392 := 3 :: frames393
def after392 (bitmapPrefix : AppList (BitVec 64)) := after393 (step392 bitmapPrefix)
theorem compiled392_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs392 (bitmapPrefix, 1168) = (bodies392, frames392, after392 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 392 StackAnalysis.optimized392.2.1 StackAnalysis.optimized392.2.2 programs393 (bitmapPrefix, 1168) (step392 bitmapPrefix, 1170) (after393 (step392 bitmapPrefix), 1184) stackBody392_142 3 bodies393 frames393 (function392_eq bitmapPrefix) (compiled393_eq (step392 bitmapPrefix))
def step391 (bitmapPrefix : AppList (BitVec 64)) := (function391 bitmapPrefix).2.2.1
def programs391 := (391, StackAnalysis.optimized391.2.1, StackAnalysis.optimized391.2.2) :: programs392
def bodies391 := (391, stackBody391_201) :: bodies392
def frames391 := 3 :: frames392
def after391 (bitmapPrefix : AppList (BitVec 64)) := after392 (step391 bitmapPrefix)
theorem compiled391_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs391 (bitmapPrefix, 1166) = (bodies391, frames391, after391 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 391 StackAnalysis.optimized391.2.1 StackAnalysis.optimized391.2.2 programs392 (bitmapPrefix, 1166) (step391 bitmapPrefix, 1168) (after392 (step391 bitmapPrefix), 1184) stackBody391_201 3 bodies392 frames392 (function391_eq bitmapPrefix) (compiled392_eq (step391 bitmapPrefix))
def step390 (bitmapPrefix : AppList (BitVec 64)) := (function390 bitmapPrefix).2.2.1
def programs390 := (390, StackAnalysis.optimized390.2.1, StackAnalysis.optimized390.2.2) :: programs391
def bodies390 := (390, stackBody390_14) :: bodies391
def frames390 := 0 :: frames391
def after390 (bitmapPrefix : AppList (BitVec 64)) := after391 (step390 bitmapPrefix)
theorem compiled390_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs390 (bitmapPrefix, 1166) = (bodies390, frames390, after390 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 390 StackAnalysis.optimized390.2.1 StackAnalysis.optimized390.2.2 programs391 (bitmapPrefix, 1166) (step390 bitmapPrefix, 1166) (after391 (step390 bitmapPrefix), 1184) stackBody390_14 0 bodies391 frames391 (function390_eq bitmapPrefix) (compiled391_eq (step390 bitmapPrefix))
def step389 (bitmapPrefix : AppList (BitVec 64)) := (function389 bitmapPrefix).2.2.1
def programs389 := (389, StackAnalysis.optimized389.2.1, StackAnalysis.optimized389.2.2) :: programs390
def bodies389 := (389, stackBody389_400) :: bodies390
def frames389 := 6 :: frames390
def after389 (bitmapPrefix : AppList (BitVec 64)) := after390 (step389 bitmapPrefix)
theorem compiled389_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs389 (bitmapPrefix, 1161) = (bodies389, frames389, after389 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 389 StackAnalysis.optimized389.2.1 StackAnalysis.optimized389.2.2 programs390 (bitmapPrefix, 1161) (step389 bitmapPrefix, 1166) (after390 (step389 bitmapPrefix), 1184) stackBody389_400 6 bodies390 frames390 (function389_eq bitmapPrefix) (compiled390_eq (step389 bitmapPrefix))
def step388 (bitmapPrefix : AppList (BitVec 64)) := (function388 bitmapPrefix).2.2.1
def programs388 := (388, StackAnalysis.optimized388.2.1, StackAnalysis.optimized388.2.2) :: programs389
def bodies388 := (388, stackBody388_378) :: bodies389
def frames388 := 8 :: frames389
def after388 (bitmapPrefix : AppList (BitVec 64)) := after389 (step388 bitmapPrefix)
theorem compiled388_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs388 (bitmapPrefix, 1156) = (bodies388, frames388, after388 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 388 StackAnalysis.optimized388.2.1 StackAnalysis.optimized388.2.2 programs389 (bitmapPrefix, 1156) (step388 bitmapPrefix, 1161) (after389 (step388 bitmapPrefix), 1184) stackBody388_378 8 bodies389 frames389 (function388_eq bitmapPrefix) (compiled389_eq (step388 bitmapPrefix))
def step387 (bitmapPrefix : AppList (BitVec 64)) := (function387 bitmapPrefix).2.2.1
def programs387 := (387, StackAnalysis.optimized387.2.1, StackAnalysis.optimized387.2.2) :: programs388
def bodies387 := (387, stackBody387_624) :: bodies388
def frames387 := 2 :: frames388
def after387 (bitmapPrefix : AppList (BitVec 64)) := after388 (step387 bitmapPrefix)
theorem compiled387_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs387 (bitmapPrefix, 1147) = (bodies387, frames387, after387 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 387 StackAnalysis.optimized387.2.1 StackAnalysis.optimized387.2.2 programs388 (bitmapPrefix, 1147) (step387 bitmapPrefix, 1156) (after388 (step387 bitmapPrefix), 1184) stackBody387_624 2 bodies388 frames388 (function387_eq bitmapPrefix) (compiled388_eq (step387 bitmapPrefix))
def step386 (bitmapPrefix : AppList (BitVec 64)) := (function386 bitmapPrefix).2.2.1
def programs386 := (386, StackAnalysis.optimized386.2.1, StackAnalysis.optimized386.2.2) :: programs387
def bodies386 := (386, stackBody386_964) :: bodies387
def frames386 := 5 :: frames387
def after386 (bitmapPrefix : AppList (BitVec 64)) := after387 (step386 bitmapPrefix)
theorem compiled386_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs386 (bitmapPrefix, 1134) = (bodies386, frames386, after386 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 386 StackAnalysis.optimized386.2.1 StackAnalysis.optimized386.2.2 programs387 (bitmapPrefix, 1134) (step386 bitmapPrefix, 1147) (after387 (step386 bitmapPrefix), 1184) stackBody386_964 5 bodies387 frames387 (function386_eq bitmapPrefix) (compiled387_eq (step386 bitmapPrefix))
def step385 (bitmapPrefix : AppList (BitVec 64)) := (function385 bitmapPrefix).2.2.1
def programs385 := (385, StackAnalysis.optimized385.2.1, StackAnalysis.optimized385.2.2) :: programs386
def bodies385 := (385, stackBody385_358) :: bodies386
def frames385 := 6 :: frames386
def after385 (bitmapPrefix : AppList (BitVec 64)) := after386 (step385 bitmapPrefix)
theorem compiled385_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs385 (bitmapPrefix, 1132) = (bodies385, frames385, after385 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 385 StackAnalysis.optimized385.2.1 StackAnalysis.optimized385.2.2 programs386 (bitmapPrefix, 1132) (step385 bitmapPrefix, 1134) (after386 (step385 bitmapPrefix), 1184) stackBody385_358 6 bodies386 frames386 (function385_eq bitmapPrefix) (compiled386_eq (step385 bitmapPrefix))
def step384 (bitmapPrefix : AppList (BitVec 64)) := (function384 bitmapPrefix).2.2.1
def programs384 := (384, StackAnalysis.optimized384.2.1, StackAnalysis.optimized384.2.2) :: programs385
def bodies384 := (384, stackBody384_557) :: bodies385
def frames384 := 12 :: frames385
def after384 (bitmapPrefix : AppList (BitVec 64)) := after385 (step384 bitmapPrefix)
theorem compiled384_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs384 (bitmapPrefix, 1129) = (bodies384, frames384, after384 bitmapPrefix, 1184) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 384 StackAnalysis.optimized384.2.1 StackAnalysis.optimized384.2.2 programs385 (bitmapPrefix, 1129) (step384 bitmapPrefix, 1132) (after385 (step384 bitmapPrefix), 1184) stackBody384_557 12 bodies385 frames385 (function384_eq bitmapPrefix) (compiled385_eq (step384 bitmapPrefix))
def programs := programs384
def bodies := bodies384
def frames := frames384
def after := after384
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1184)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1129) = result bitmapPrefix := compiled384_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk384_399
