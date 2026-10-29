import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function336
import InitECandidate.Proofs.BackendStages.Function337
import InitECandidate.Proofs.BackendStages.Function338
import InitECandidate.Proofs.BackendStages.Function339
import InitECandidate.Proofs.BackendStages.Function340
import InitECandidate.Proofs.BackendStages.Function341
import InitECandidate.Proofs.BackendStages.Function342
import InitECandidate.Proofs.BackendStages.Function343
import InitECandidate.Proofs.BackendStages.Function344
import InitECandidate.Proofs.BackendStages.Function345
import InitECandidate.Proofs.BackendStages.Function346
import InitECandidate.Proofs.BackendStages.Function347
import InitECandidate.Proofs.BackendStages.Function348
import InitECandidate.Proofs.BackendStages.Function349
import InitECandidate.Proofs.BackendStages.Function350
import InitECandidate.Proofs.BackendStages.Function351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk336_351
def programs352 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies352 : List (Nat × StackLang.HolProg 64) := []
def frames352 : List Nat := []
def after352 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled352_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs352 (bitmapPrefix, 1026) = (bodies352, frames352, after352 bitmapPrefix, 1026) := by rfl
def step351 (bitmapPrefix : AppList (BitVec 64)) := (function351 bitmapPrefix).2.2.1
def programs351 := (351, StackAnalysis.optimized351.2.1, StackAnalysis.optimized351.2.2) :: programs352
def bodies351 := (351, stackBody351_12) :: bodies352
def frames351 := 0 :: frames352
def after351 (bitmapPrefix : AppList (BitVec 64)) := after352 (step351 bitmapPrefix)
theorem compiled351_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs351 (bitmapPrefix, 1026) = (bodies351, frames351, after351 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 351 StackAnalysis.optimized351.2.1 StackAnalysis.optimized351.2.2 programs352 (bitmapPrefix, 1026) (step351 bitmapPrefix, 1026) (after352 (step351 bitmapPrefix), 1026) stackBody351_12 0 bodies352 frames352 (function351_eq bitmapPrefix) (compiled352_eq (step351 bitmapPrefix))
def step350 (bitmapPrefix : AppList (BitVec 64)) := (function350 bitmapPrefix).2.2.1
def programs350 := (350, StackAnalysis.optimized350.2.1, StackAnalysis.optimized350.2.2) :: programs351
def bodies350 := (350, stackBody350_20) :: bodies351
def frames350 := 0 :: frames351
def after350 (bitmapPrefix : AppList (BitVec 64)) := after351 (step350 bitmapPrefix)
theorem compiled350_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs350 (bitmapPrefix, 1026) = (bodies350, frames350, after350 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 350 StackAnalysis.optimized350.2.1 StackAnalysis.optimized350.2.2 programs351 (bitmapPrefix, 1026) (step350 bitmapPrefix, 1026) (after351 (step350 bitmapPrefix), 1026) stackBody350_20 0 bodies351 frames351 (function350_eq bitmapPrefix) (compiled351_eq (step350 bitmapPrefix))
def step349 (bitmapPrefix : AppList (BitVec 64)) := (function349 bitmapPrefix).2.2.1
def programs349 := (349, StackAnalysis.optimized349.2.1, StackAnalysis.optimized349.2.2) :: programs350
def bodies349 := (349, stackBody349_8) :: bodies350
def frames349 := 0 :: frames350
def after349 (bitmapPrefix : AppList (BitVec 64)) := after350 (step349 bitmapPrefix)
theorem compiled349_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs349 (bitmapPrefix, 1026) = (bodies349, frames349, after349 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 349 StackAnalysis.optimized349.2.1 StackAnalysis.optimized349.2.2 programs350 (bitmapPrefix, 1026) (step349 bitmapPrefix, 1026) (after350 (step349 bitmapPrefix), 1026) stackBody349_8 0 bodies350 frames350 (function349_eq bitmapPrefix) (compiled350_eq (step349 bitmapPrefix))
def step348 (bitmapPrefix : AppList (BitVec 64)) := (function348 bitmapPrefix).2.2.1
def programs348 := (348, StackAnalysis.optimized348.2.1, StackAnalysis.optimized348.2.2) :: programs349
def bodies348 := (348, stackBody348_20) :: bodies349
def frames348 := 0 :: frames349
def after348 (bitmapPrefix : AppList (BitVec 64)) := after349 (step348 bitmapPrefix)
theorem compiled348_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs348 (bitmapPrefix, 1026) = (bodies348, frames348, after348 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 348 StackAnalysis.optimized348.2.1 StackAnalysis.optimized348.2.2 programs349 (bitmapPrefix, 1026) (step348 bitmapPrefix, 1026) (after349 (step348 bitmapPrefix), 1026) stackBody348_20 0 bodies349 frames349 (function348_eq bitmapPrefix) (compiled349_eq (step348 bitmapPrefix))
def step347 (bitmapPrefix : AppList (BitVec 64)) := (function347 bitmapPrefix).2.2.1
def programs347 := (347, StackAnalysis.optimized347.2.1, StackAnalysis.optimized347.2.2) :: programs348
def bodies347 := (347, stackBody347_8) :: bodies348
def frames347 := 0 :: frames348
def after347 (bitmapPrefix : AppList (BitVec 64)) := after348 (step347 bitmapPrefix)
theorem compiled347_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs347 (bitmapPrefix, 1026) = (bodies347, frames347, after347 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 347 StackAnalysis.optimized347.2.1 StackAnalysis.optimized347.2.2 programs348 (bitmapPrefix, 1026) (step347 bitmapPrefix, 1026) (after348 (step347 bitmapPrefix), 1026) stackBody347_8 0 bodies348 frames348 (function347_eq bitmapPrefix) (compiled348_eq (step347 bitmapPrefix))
def step346 (bitmapPrefix : AppList (BitVec 64)) := (function346 bitmapPrefix).2.2.1
def programs346 := (346, StackAnalysis.optimized346.2.1, StackAnalysis.optimized346.2.2) :: programs347
def bodies346 := (346, stackBody346_78) :: bodies347
def frames346 := 2 :: frames347
def after346 (bitmapPrefix : AppList (BitVec 64)) := after347 (step346 bitmapPrefix)
theorem compiled346_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs346 (bitmapPrefix, 1025) = (bodies346, frames346, after346 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 346 StackAnalysis.optimized346.2.1 StackAnalysis.optimized346.2.2 programs347 (bitmapPrefix, 1025) (step346 bitmapPrefix, 1026) (after347 (step346 bitmapPrefix), 1026) stackBody346_78 2 bodies347 frames347 (function346_eq bitmapPrefix) (compiled347_eq (step346 bitmapPrefix))
def step345 (bitmapPrefix : AppList (BitVec 64)) := (function345 bitmapPrefix).2.2.1
def programs345 := (345, StackAnalysis.optimized345.2.1, StackAnalysis.optimized345.2.2) :: programs346
def bodies345 := (345, stackBody345_2364) :: bodies346
def frames345 := 6 :: frames346
def after345 (bitmapPrefix : AppList (BitVec 64)) := after346 (step345 bitmapPrefix)
theorem compiled345_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs345 (bitmapPrefix, 999) = (bodies345, frames345, after345 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 345 StackAnalysis.optimized345.2.1 StackAnalysis.optimized345.2.2 programs346 (bitmapPrefix, 999) (step345 bitmapPrefix, 1025) (after346 (step345 bitmapPrefix), 1026) stackBody345_2364 6 bodies346 frames346 (function345_eq bitmapPrefix) (compiled346_eq (step345 bitmapPrefix))
def step344 (bitmapPrefix : AppList (BitVec 64)) := (function344 bitmapPrefix).2.2.1
def programs344 := (344, StackAnalysis.optimized344.2.1, StackAnalysis.optimized344.2.2) :: programs345
def bodies344 := (344, stackBody344_853) :: bodies345
def frames344 := 10 :: frames345
def after344 (bitmapPrefix : AppList (BitVec 64)) := after345 (step344 bitmapPrefix)
theorem compiled344_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs344 (bitmapPrefix, 989) = (bodies344, frames344, after344 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 344 StackAnalysis.optimized344.2.1 StackAnalysis.optimized344.2.2 programs345 (bitmapPrefix, 989) (step344 bitmapPrefix, 999) (after345 (step344 bitmapPrefix), 1026) stackBody344_853 10 bodies345 frames345 (function344_eq bitmapPrefix) (compiled345_eq (step344 bitmapPrefix))
def step343 (bitmapPrefix : AppList (BitVec 64)) := (function343 bitmapPrefix).2.2.1
def programs343 := (343, StackAnalysis.optimized343.2.1, StackAnalysis.optimized343.2.2) :: programs344
def bodies343 := (343, stackBody343_317) :: bodies344
def frames343 := 8 :: frames344
def after343 (bitmapPrefix : AppList (BitVec 64)) := after344 (step343 bitmapPrefix)
theorem compiled343_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs343 (bitmapPrefix, 985) = (bodies343, frames343, after343 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 343 StackAnalysis.optimized343.2.1 StackAnalysis.optimized343.2.2 programs344 (bitmapPrefix, 985) (step343 bitmapPrefix, 989) (after344 (step343 bitmapPrefix), 1026) stackBody343_317 8 bodies344 frames344 (function343_eq bitmapPrefix) (compiled344_eq (step343 bitmapPrefix))
def step342 (bitmapPrefix : AppList (BitVec 64)) := (function342 bitmapPrefix).2.2.1
def programs342 := (342, StackAnalysis.optimized342.2.1, StackAnalysis.optimized342.2.2) :: programs343
def bodies342 := (342, stackBody342_958) :: bodies343
def frames342 := 21 :: frames343
def after342 (bitmapPrefix : AppList (BitVec 64)) := after343 (step342 bitmapPrefix)
theorem compiled342_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs342 (bitmapPrefix, 975) = (bodies342, frames342, after342 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 342 StackAnalysis.optimized342.2.1 StackAnalysis.optimized342.2.2 programs343 (bitmapPrefix, 975) (step342 bitmapPrefix, 985) (after343 (step342 bitmapPrefix), 1026) stackBody342_958 21 bodies343 frames343 (function342_eq bitmapPrefix) (compiled343_eq (step342 bitmapPrefix))
def step341 (bitmapPrefix : AppList (BitVec 64)) := (function341 bitmapPrefix).2.2.1
def programs341 := (341, StackAnalysis.optimized341.2.1, StackAnalysis.optimized341.2.2) :: programs342
def bodies341 := (341, stackBody341_96) :: bodies342
def frames341 := 2 :: frames342
def after341 (bitmapPrefix : AppList (BitVec 64)) := after342 (step341 bitmapPrefix)
theorem compiled341_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs341 (bitmapPrefix, 974) = (bodies341, frames341, after341 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 341 StackAnalysis.optimized341.2.1 StackAnalysis.optimized341.2.2 programs342 (bitmapPrefix, 974) (step341 bitmapPrefix, 975) (after342 (step341 bitmapPrefix), 1026) stackBody341_96 2 bodies342 frames342 (function341_eq bitmapPrefix) (compiled342_eq (step341 bitmapPrefix))
def step340 (bitmapPrefix : AppList (BitVec 64)) := (function340 bitmapPrefix).2.2.1
def programs340 := (340, StackAnalysis.optimized340.2.1, StackAnalysis.optimized340.2.2) :: programs341
def bodies340 := (340, stackBody340_138) :: bodies341
def frames340 := 2 :: frames341
def after340 (bitmapPrefix : AppList (BitVec 64)) := after341 (step340 bitmapPrefix)
theorem compiled340_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs340 (bitmapPrefix, 973) = (bodies340, frames340, after340 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 340 StackAnalysis.optimized340.2.1 StackAnalysis.optimized340.2.2 programs341 (bitmapPrefix, 973) (step340 bitmapPrefix, 974) (after341 (step340 bitmapPrefix), 1026) stackBody340_138 2 bodies341 frames341 (function340_eq bitmapPrefix) (compiled341_eq (step340 bitmapPrefix))
def step339 (bitmapPrefix : AppList (BitVec 64)) := (function339 bitmapPrefix).2.2.1
def programs339 := (339, StackAnalysis.optimized339.2.1, StackAnalysis.optimized339.2.2) :: programs340
def bodies339 := (339, stackBody339_122) :: bodies340
def frames339 := 3 :: frames340
def after339 (bitmapPrefix : AppList (BitVec 64)) := after340 (step339 bitmapPrefix)
theorem compiled339_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs339 (bitmapPrefix, 972) = (bodies339, frames339, after339 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 339 StackAnalysis.optimized339.2.1 StackAnalysis.optimized339.2.2 programs340 (bitmapPrefix, 972) (step339 bitmapPrefix, 973) (after340 (step339 bitmapPrefix), 1026) stackBody339_122 3 bodies340 frames340 (function339_eq bitmapPrefix) (compiled340_eq (step339 bitmapPrefix))
def step338 (bitmapPrefix : AppList (BitVec 64)) := (function338 bitmapPrefix).2.2.1
def programs338 := (338, StackAnalysis.optimized338.2.1, StackAnalysis.optimized338.2.2) :: programs339
def bodies338 := (338, stackBody338_96) :: bodies339
def frames338 := 2 :: frames339
def after338 (bitmapPrefix : AppList (BitVec 64)) := after339 (step338 bitmapPrefix)
theorem compiled338_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs338 (bitmapPrefix, 971) = (bodies338, frames338, after338 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 338 StackAnalysis.optimized338.2.1 StackAnalysis.optimized338.2.2 programs339 (bitmapPrefix, 971) (step338 bitmapPrefix, 972) (after339 (step338 bitmapPrefix), 1026) stackBody338_96 2 bodies339 frames339 (function338_eq bitmapPrefix) (compiled339_eq (step338 bitmapPrefix))
def step337 (bitmapPrefix : AppList (BitVec 64)) := (function337 bitmapPrefix).2.2.1
def programs337 := (337, StackAnalysis.optimized337.2.1, StackAnalysis.optimized337.2.2) :: programs338
def bodies337 := (337, stackBody337_145) :: bodies338
def frames337 := 6 :: frames338
def after337 (bitmapPrefix : AppList (BitVec 64)) := after338 (step337 bitmapPrefix)
theorem compiled337_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs337 (bitmapPrefix, 970) = (bodies337, frames337, after337 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 337 StackAnalysis.optimized337.2.1 StackAnalysis.optimized337.2.2 programs338 (bitmapPrefix, 970) (step337 bitmapPrefix, 971) (after338 (step337 bitmapPrefix), 1026) stackBody337_145 6 bodies338 frames338 (function337_eq bitmapPrefix) (compiled338_eq (step337 bitmapPrefix))
def step336 (bitmapPrefix : AppList (BitVec 64)) := (function336 bitmapPrefix).2.2.1
def programs336 := (336, StackAnalysis.optimized336.2.1, StackAnalysis.optimized336.2.2) :: programs337
def bodies336 := (336, stackBody336_82) :: bodies337
def frames336 := 2 :: frames337
def after336 (bitmapPrefix : AppList (BitVec 64)) := after337 (step336 bitmapPrefix)
theorem compiled336_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs336 (bitmapPrefix, 969) = (bodies336, frames336, after336 bitmapPrefix, 1026) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 336 StackAnalysis.optimized336.2.1 StackAnalysis.optimized336.2.2 programs337 (bitmapPrefix, 969) (step336 bitmapPrefix, 970) (after337 (step336 bitmapPrefix), 1026) stackBody336_82 2 bodies337 frames337 (function336_eq bitmapPrefix) (compiled337_eq (step336 bitmapPrefix))
def programs := programs336
def bodies := bodies336
def frames := frames336
def after := after336
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1026)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 969) = result bitmapPrefix := compiled336_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk336_351
