import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function352
import InitECandidate.Proofs.BackendStages.Function353
import InitECandidate.Proofs.BackendStages.Function354
import InitECandidate.Proofs.BackendStages.Function355
import InitECandidate.Proofs.BackendStages.Function356
import InitECandidate.Proofs.BackendStages.Function357
import InitECandidate.Proofs.BackendStages.Function358
import InitECandidate.Proofs.BackendStages.Function359
import InitECandidate.Proofs.BackendStages.Function360
import InitECandidate.Proofs.BackendStages.Function361
import InitECandidate.Proofs.BackendStages.Function362
import InitECandidate.Proofs.BackendStages.Function363
import InitECandidate.Proofs.BackendStages.Function364
import InitECandidate.Proofs.BackendStages.Function365
import InitECandidate.Proofs.BackendStages.Function366
import InitECandidate.Proofs.BackendStages.Function367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk352_367
def programs368 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies368 : List (Nat × StackLang.HolProg 64) := []
def frames368 : List Nat := []
def after368 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled368_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs368 (bitmapPrefix, 1083) = (bodies368, frames368, after368 bitmapPrefix, 1083) := by rfl
def step367 (bitmapPrefix : AppList (BitVec 64)) := (function367 bitmapPrefix).2.2.1
def programs367 := (367, StackAnalysis.optimized367.2.1, StackAnalysis.optimized367.2.2) :: programs368
def bodies367 := (367, stackBody367_1712) :: bodies368
def frames367 := 8 :: frames368
def after367 (bitmapPrefix : AppList (BitVec 64)) := after368 (step367 bitmapPrefix)
theorem compiled367_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs367 (bitmapPrefix, 1062) = (bodies367, frames367, after367 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 367 StackAnalysis.optimized367.2.1 StackAnalysis.optimized367.2.2 programs368 (bitmapPrefix, 1062) (step367 bitmapPrefix, 1083) (after368 (step367 bitmapPrefix), 1083) stackBody367_1712 8 bodies368 frames368 (function367_eq bitmapPrefix) (compiled368_eq (step367 bitmapPrefix))
def step366 (bitmapPrefix : AppList (BitVec 64)) := (function366 bitmapPrefix).2.2.1
def programs366 := (366, StackAnalysis.optimized366.2.1, StackAnalysis.optimized366.2.2) :: programs367
def bodies366 := (366, stackBody366_160) :: bodies367
def frames366 := 4 :: frames367
def after366 (bitmapPrefix : AppList (BitVec 64)) := after367 (step366 bitmapPrefix)
theorem compiled366_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs366 (bitmapPrefix, 1060) = (bodies366, frames366, after366 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 366 StackAnalysis.optimized366.2.1 StackAnalysis.optimized366.2.2 programs367 (bitmapPrefix, 1060) (step366 bitmapPrefix, 1062) (after367 (step366 bitmapPrefix), 1083) stackBody366_160 4 bodies367 frames367 (function366_eq bitmapPrefix) (compiled367_eq (step366 bitmapPrefix))
def step365 (bitmapPrefix : AppList (BitVec 64)) := (function365 bitmapPrefix).2.2.1
def programs365 := (365, StackAnalysis.optimized365.2.1, StackAnalysis.optimized365.2.2) :: programs366
def bodies365 := (365, stackBody365_759) :: bodies366
def frames365 := 9 :: frames366
def after365 (bitmapPrefix : AppList (BitVec 64)) := after366 (step365 bitmapPrefix)
theorem compiled365_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs365 (bitmapPrefix, 1050) = (bodies365, frames365, after365 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 365 StackAnalysis.optimized365.2.1 StackAnalysis.optimized365.2.2 programs366 (bitmapPrefix, 1050) (step365 bitmapPrefix, 1060) (after366 (step365 bitmapPrefix), 1083) stackBody365_759 9 bodies366 frames366 (function365_eq bitmapPrefix) (compiled366_eq (step365 bitmapPrefix))
def step364 (bitmapPrefix : AppList (BitVec 64)) := (function364 bitmapPrefix).2.2.1
def programs364 := (364, StackAnalysis.optimized364.2.1, StackAnalysis.optimized364.2.2) :: programs365
def bodies364 := (364, stackBody364_195) :: bodies365
def frames364 := 7 :: frames365
def after364 (bitmapPrefix : AppList (BitVec 64)) := after365 (step364 bitmapPrefix)
theorem compiled364_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs364 (bitmapPrefix, 1048) = (bodies364, frames364, after364 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 364 StackAnalysis.optimized364.2.1 StackAnalysis.optimized364.2.2 programs365 (bitmapPrefix, 1048) (step364 bitmapPrefix, 1050) (after365 (step364 bitmapPrefix), 1083) stackBody364_195 7 bodies365 frames365 (function364_eq bitmapPrefix) (compiled365_eq (step364 bitmapPrefix))
def step363 (bitmapPrefix : AppList (BitVec 64)) := (function363 bitmapPrefix).2.2.1
def programs363 := (363, StackAnalysis.optimized363.2.1, StackAnalysis.optimized363.2.2) :: programs364
def bodies363 := (363, stackBody363_354) :: bodies364
def frames363 := 6 :: frames364
def after363 (bitmapPrefix : AppList (BitVec 64)) := after364 (step363 bitmapPrefix)
theorem compiled363_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs363 (bitmapPrefix, 1043) = (bodies363, frames363, after363 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 363 StackAnalysis.optimized363.2.1 StackAnalysis.optimized363.2.2 programs364 (bitmapPrefix, 1043) (step363 bitmapPrefix, 1048) (after364 (step363 bitmapPrefix), 1083) stackBody363_354 6 bodies364 frames364 (function363_eq bitmapPrefix) (compiled364_eq (step363 bitmapPrefix))
def step362 (bitmapPrefix : AppList (BitVec 64)) := (function362 bitmapPrefix).2.2.1
def programs362 := (362, StackAnalysis.optimized362.2.1, StackAnalysis.optimized362.2.2) :: programs363
def bodies362 := (362, stackBody362_221) :: bodies363
def frames362 := 7 :: frames363
def after362 (bitmapPrefix : AppList (BitVec 64)) := after363 (step362 bitmapPrefix)
theorem compiled362_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs362 (bitmapPrefix, 1041) = (bodies362, frames362, after362 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 362 StackAnalysis.optimized362.2.1 StackAnalysis.optimized362.2.2 programs363 (bitmapPrefix, 1041) (step362 bitmapPrefix, 1043) (after363 (step362 bitmapPrefix), 1083) stackBody362_221 7 bodies363 frames363 (function362_eq bitmapPrefix) (compiled363_eq (step362 bitmapPrefix))
def step361 (bitmapPrefix : AppList (BitVec 64)) := (function361 bitmapPrefix).2.2.1
def programs361 := (361, StackAnalysis.optimized361.2.1, StackAnalysis.optimized361.2.2) :: programs362
def bodies361 := (361, stackBody361_764) :: bodies362
def frames361 := 14 :: frames362
def after361 (bitmapPrefix : AppList (BitVec 64)) := after362 (step361 bitmapPrefix)
theorem compiled361_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs361 (bitmapPrefix, 1034) = (bodies361, frames361, after361 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 361 StackAnalysis.optimized361.2.1 StackAnalysis.optimized361.2.2 programs362 (bitmapPrefix, 1034) (step361 bitmapPrefix, 1041) (after362 (step361 bitmapPrefix), 1083) stackBody361_764 14 bodies362 frames362 (function361_eq bitmapPrefix) (compiled362_eq (step361 bitmapPrefix))
def step360 (bitmapPrefix : AppList (BitVec 64)) := (function360 bitmapPrefix).2.2.1
def programs360 := (360, StackAnalysis.optimized360.2.1, StackAnalysis.optimized360.2.2) :: programs361
def bodies360 := (360, stackBody360_217) :: bodies361
def frames360 := 7 :: frames361
def after360 (bitmapPrefix : AppList (BitVec 64)) := after361 (step360 bitmapPrefix)
theorem compiled360_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs360 (bitmapPrefix, 1032) = (bodies360, frames360, after360 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 360 StackAnalysis.optimized360.2.1 StackAnalysis.optimized360.2.2 programs361 (bitmapPrefix, 1032) (step360 bitmapPrefix, 1034) (after361 (step360 bitmapPrefix), 1083) stackBody360_217 7 bodies361 frames361 (function360_eq bitmapPrefix) (compiled361_eq (step360 bitmapPrefix))
def step359 (bitmapPrefix : AppList (BitVec 64)) := (function359 bitmapPrefix).2.2.1
def programs359 := (359, StackAnalysis.optimized359.2.1, StackAnalysis.optimized359.2.2) :: programs360
def bodies359 := (359, stackBody359_34) :: bodies360
def frames359 := 0 :: frames360
def after359 (bitmapPrefix : AppList (BitVec 64)) := after360 (step359 bitmapPrefix)
theorem compiled359_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs359 (bitmapPrefix, 1032) = (bodies359, frames359, after359 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 359 StackAnalysis.optimized359.2.1 StackAnalysis.optimized359.2.2 programs360 (bitmapPrefix, 1032) (step359 bitmapPrefix, 1032) (after360 (step359 bitmapPrefix), 1083) stackBody359_34 0 bodies360 frames360 (function359_eq bitmapPrefix) (compiled360_eq (step359 bitmapPrefix))
def step358 (bitmapPrefix : AppList (BitVec 64)) := (function358 bitmapPrefix).2.2.1
def programs358 := (358, StackAnalysis.optimized358.2.1, StackAnalysis.optimized358.2.2) :: programs359
def bodies358 := (358, stackBody358_116) :: bodies359
def frames358 := 3 :: frames359
def after358 (bitmapPrefix : AppList (BitVec 64)) := after359 (step358 bitmapPrefix)
theorem compiled358_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs358 (bitmapPrefix, 1031) = (bodies358, frames358, after358 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 358 StackAnalysis.optimized358.2.1 StackAnalysis.optimized358.2.2 programs359 (bitmapPrefix, 1031) (step358 bitmapPrefix, 1032) (after359 (step358 bitmapPrefix), 1083) stackBody358_116 3 bodies359 frames359 (function358_eq bitmapPrefix) (compiled359_eq (step358 bitmapPrefix))
def step357 (bitmapPrefix : AppList (BitVec 64)) := (function357 bitmapPrefix).2.2.1
def programs357 := (357, StackAnalysis.optimized357.2.1, StackAnalysis.optimized357.2.2) :: programs358
def bodies357 := (357, stackBody357_312) :: bodies358
def frames357 := 8 :: frames358
def after357 (bitmapPrefix : AppList (BitVec 64)) := after358 (step357 bitmapPrefix)
theorem compiled357_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs357 (bitmapPrefix, 1026) = (bodies357, frames357, after357 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 357 StackAnalysis.optimized357.2.1 StackAnalysis.optimized357.2.2 programs358 (bitmapPrefix, 1026) (step357 bitmapPrefix, 1031) (after358 (step357 bitmapPrefix), 1083) stackBody357_312 8 bodies358 frames358 (function357_eq bitmapPrefix) (compiled358_eq (step357 bitmapPrefix))
def step356 (bitmapPrefix : AppList (BitVec 64)) := (function356 bitmapPrefix).2.2.1
def programs356 := (356, StackAnalysis.optimized356.2.1, StackAnalysis.optimized356.2.2) :: programs357
def bodies356 := (356, stackBody356_10) :: bodies357
def frames356 := 0 :: frames357
def after356 (bitmapPrefix : AppList (BitVec 64)) := after357 (step356 bitmapPrefix)
theorem compiled356_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs356 (bitmapPrefix, 1026) = (bodies356, frames356, after356 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 356 StackAnalysis.optimized356.2.1 StackAnalysis.optimized356.2.2 programs357 (bitmapPrefix, 1026) (step356 bitmapPrefix, 1026) (after357 (step356 bitmapPrefix), 1083) stackBody356_10 0 bodies357 frames357 (function356_eq bitmapPrefix) (compiled357_eq (step356 bitmapPrefix))
def step355 (bitmapPrefix : AppList (BitVec 64)) := (function355 bitmapPrefix).2.2.1
def programs355 := (355, StackAnalysis.optimized355.2.1, StackAnalysis.optimized355.2.2) :: programs356
def bodies355 := (355, stackBody355_8) :: bodies356
def frames355 := 0 :: frames356
def after355 (bitmapPrefix : AppList (BitVec 64)) := after356 (step355 bitmapPrefix)
theorem compiled355_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs355 (bitmapPrefix, 1026) = (bodies355, frames355, after355 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 355 StackAnalysis.optimized355.2.1 StackAnalysis.optimized355.2.2 programs356 (bitmapPrefix, 1026) (step355 bitmapPrefix, 1026) (after356 (step355 bitmapPrefix), 1083) stackBody355_8 0 bodies356 frames356 (function355_eq bitmapPrefix) (compiled356_eq (step355 bitmapPrefix))
def step354 (bitmapPrefix : AppList (BitVec 64)) := (function354 bitmapPrefix).2.2.1
def programs354 := (354, StackAnalysis.optimized354.2.1, StackAnalysis.optimized354.2.2) :: programs355
def bodies354 := (354, stackBody354_26) :: bodies355
def frames354 := 0 :: frames355
def after354 (bitmapPrefix : AppList (BitVec 64)) := after355 (step354 bitmapPrefix)
theorem compiled354_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs354 (bitmapPrefix, 1026) = (bodies354, frames354, after354 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 354 StackAnalysis.optimized354.2.1 StackAnalysis.optimized354.2.2 programs355 (bitmapPrefix, 1026) (step354 bitmapPrefix, 1026) (after355 (step354 bitmapPrefix), 1083) stackBody354_26 0 bodies355 frames355 (function354_eq bitmapPrefix) (compiled355_eq (step354 bitmapPrefix))
def step353 (bitmapPrefix : AppList (BitVec 64)) := (function353 bitmapPrefix).2.2.1
def programs353 := (353, StackAnalysis.optimized353.2.1, StackAnalysis.optimized353.2.2) :: programs354
def bodies353 := (353, stackBody353_20) :: bodies354
def frames353 := 0 :: frames354
def after353 (bitmapPrefix : AppList (BitVec 64)) := after354 (step353 bitmapPrefix)
theorem compiled353_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs353 (bitmapPrefix, 1026) = (bodies353, frames353, after353 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 353 StackAnalysis.optimized353.2.1 StackAnalysis.optimized353.2.2 programs354 (bitmapPrefix, 1026) (step353 bitmapPrefix, 1026) (after354 (step353 bitmapPrefix), 1083) stackBody353_20 0 bodies354 frames354 (function353_eq bitmapPrefix) (compiled354_eq (step353 bitmapPrefix))
def step352 (bitmapPrefix : AppList (BitVec 64)) := (function352 bitmapPrefix).2.2.1
def programs352 := (352, StackAnalysis.optimized352.2.1, StackAnalysis.optimized352.2.2) :: programs353
def bodies352 := (352, stackBody352_20) :: bodies353
def frames352 := 0 :: frames353
def after352 (bitmapPrefix : AppList (BitVec 64)) := after353 (step352 bitmapPrefix)
theorem compiled352_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs352 (bitmapPrefix, 1026) = (bodies352, frames352, after352 bitmapPrefix, 1083) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 352 StackAnalysis.optimized352.2.1 StackAnalysis.optimized352.2.2 programs353 (bitmapPrefix, 1026) (step352 bitmapPrefix, 1026) (after353 (step352 bitmapPrefix), 1083) stackBody352_20 0 bodies353 frames353 (function352_eq bitmapPrefix) (compiled353_eq (step352 bitmapPrefix))
def programs := programs352
def bodies := bodies352
def frames := frames352
def after := after352
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1083)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1026) = result bitmapPrefix := compiled352_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk352_367
