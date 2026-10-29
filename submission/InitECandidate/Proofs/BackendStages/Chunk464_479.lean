import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function464
import InitECandidate.Proofs.BackendStages.Function465
import InitECandidate.Proofs.BackendStages.Function466
import InitECandidate.Proofs.BackendStages.Function467
import InitECandidate.Proofs.BackendStages.Function468
import InitECandidate.Proofs.BackendStages.Function469
import InitECandidate.Proofs.BackendStages.Function470
import InitECandidate.Proofs.BackendStages.Function471
import InitECandidate.Proofs.BackendStages.Function472
import InitECandidate.Proofs.BackendStages.Function473
import InitECandidate.Proofs.BackendStages.Function474
import InitECandidate.Proofs.BackendStages.Function475
import InitECandidate.Proofs.BackendStages.Function476
import InitECandidate.Proofs.BackendStages.Function477
import InitECandidate.Proofs.BackendStages.Function478
import InitECandidate.Proofs.BackendStages.Function479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk464_479
def programs480 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies480 : List (Nat × StackLang.HolProg 64) := []
def frames480 : List Nat := []
def after480 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled480_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs480 (bitmapPrefix, 1503) = (bodies480, frames480, after480 bitmapPrefix, 1503) := by rfl
def step479 (bitmapPrefix : AppList (BitVec 64)) := (function479 bitmapPrefix).2.2.1
def programs479 := (479, StackAnalysis.optimized479.2.1, StackAnalysis.optimized479.2.2) :: programs480
def bodies479 := (479, stackBody479_192) :: bodies480
def frames479 := 3 :: frames480
def after479 (bitmapPrefix : AppList (BitVec 64)) := after480 (step479 bitmapPrefix)
theorem compiled479_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs479 (bitmapPrefix, 1500) = (bodies479, frames479, after479 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 479 StackAnalysis.optimized479.2.1 StackAnalysis.optimized479.2.2 programs480 (bitmapPrefix, 1500) (step479 bitmapPrefix, 1503) (after480 (step479 bitmapPrefix), 1503) stackBody479_192 3 bodies480 frames480 (function479_eq bitmapPrefix) (compiled480_eq (step479 bitmapPrefix))
def step478 (bitmapPrefix : AppList (BitVec 64)) := (function478 bitmapPrefix).2.2.1
def programs478 := (478, StackAnalysis.optimized478.2.1, StackAnalysis.optimized478.2.2) :: programs479
def bodies478 := (478, stackBody478_134) :: bodies479
def frames478 := 2 :: frames479
def after478 (bitmapPrefix : AppList (BitVec 64)) := after479 (step478 bitmapPrefix)
theorem compiled478_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs478 (bitmapPrefix, 1498) = (bodies478, frames478, after478 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 478 StackAnalysis.optimized478.2.1 StackAnalysis.optimized478.2.2 programs479 (bitmapPrefix, 1498) (step478 bitmapPrefix, 1500) (after479 (step478 bitmapPrefix), 1503) stackBody478_134 2 bodies479 frames479 (function478_eq bitmapPrefix) (compiled479_eq (step478 bitmapPrefix))
def step477 (bitmapPrefix : AppList (BitVec 64)) := (function477 bitmapPrefix).2.2.1
def programs477 := (477, StackAnalysis.optimized477.2.1, StackAnalysis.optimized477.2.2) :: programs478
def bodies477 := (477, stackBody477_64) :: bodies478
def frames477 := 2 :: frames478
def after477 (bitmapPrefix : AppList (BitVec 64)) := after478 (step477 bitmapPrefix)
theorem compiled477_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs477 (bitmapPrefix, 1497) = (bodies477, frames477, after477 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 477 StackAnalysis.optimized477.2.1 StackAnalysis.optimized477.2.2 programs478 (bitmapPrefix, 1497) (step477 bitmapPrefix, 1498) (after478 (step477 bitmapPrefix), 1503) stackBody477_64 2 bodies478 frames478 (function477_eq bitmapPrefix) (compiled478_eq (step477 bitmapPrefix))
def step476 (bitmapPrefix : AppList (BitVec 64)) := (function476 bitmapPrefix).2.2.1
def programs476 := (476, StackAnalysis.optimized476.2.1, StackAnalysis.optimized476.2.2) :: programs477
def bodies476 := (476, stackBody476_334) :: bodies477
def frames476 := 9 :: frames477
def after476 (bitmapPrefix : AppList (BitVec 64)) := after477 (step476 bitmapPrefix)
theorem compiled476_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs476 (bitmapPrefix, 1495) = (bodies476, frames476, after476 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 476 StackAnalysis.optimized476.2.1 StackAnalysis.optimized476.2.2 programs477 (bitmapPrefix, 1495) (step476 bitmapPrefix, 1497) (after477 (step476 bitmapPrefix), 1503) stackBody476_334 9 bodies477 frames477 (function476_eq bitmapPrefix) (compiled477_eq (step476 bitmapPrefix))
def step475 (bitmapPrefix : AppList (BitVec 64)) := (function475 bitmapPrefix).2.2.1
def programs475 := (475, StackAnalysis.optimized475.2.1, StackAnalysis.optimized475.2.2) :: programs476
def bodies475 := (475, stackBody475_80) :: bodies476
def frames475 := 0 :: frames476
def after475 (bitmapPrefix : AppList (BitVec 64)) := after476 (step475 bitmapPrefix)
theorem compiled475_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs475 (bitmapPrefix, 1495) = (bodies475, frames475, after475 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 475 StackAnalysis.optimized475.2.1 StackAnalysis.optimized475.2.2 programs476 (bitmapPrefix, 1495) (step475 bitmapPrefix, 1495) (after476 (step475 bitmapPrefix), 1503) stackBody475_80 0 bodies476 frames476 (function475_eq bitmapPrefix) (compiled476_eq (step475 bitmapPrefix))
def step474 (bitmapPrefix : AppList (BitVec 64)) := (function474 bitmapPrefix).2.2.1
def programs474 := (474, StackAnalysis.optimized474.2.1, StackAnalysis.optimized474.2.2) :: programs475
def bodies474 := (474, stackBody474_62) :: bodies475
def frames474 := 0 :: frames475
def after474 (bitmapPrefix : AppList (BitVec 64)) := after475 (step474 bitmapPrefix)
theorem compiled474_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs474 (bitmapPrefix, 1495) = (bodies474, frames474, after474 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 474 StackAnalysis.optimized474.2.1 StackAnalysis.optimized474.2.2 programs475 (bitmapPrefix, 1495) (step474 bitmapPrefix, 1495) (after475 (step474 bitmapPrefix), 1503) stackBody474_62 0 bodies475 frames475 (function474_eq bitmapPrefix) (compiled475_eq (step474 bitmapPrefix))
def step473 (bitmapPrefix : AppList (BitVec 64)) := (function473 bitmapPrefix).2.2.1
def programs473 := (473, StackAnalysis.optimized473.2.1, StackAnalysis.optimized473.2.2) :: programs474
def bodies473 := (473, stackBody473_24) :: bodies474
def frames473 := 0 :: frames474
def after473 (bitmapPrefix : AppList (BitVec 64)) := after474 (step473 bitmapPrefix)
theorem compiled473_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs473 (bitmapPrefix, 1495) = (bodies473, frames473, after473 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 473 StackAnalysis.optimized473.2.1 StackAnalysis.optimized473.2.2 programs474 (bitmapPrefix, 1495) (step473 bitmapPrefix, 1495) (after474 (step473 bitmapPrefix), 1503) stackBody473_24 0 bodies474 frames474 (function473_eq bitmapPrefix) (compiled474_eq (step473 bitmapPrefix))
def step472 (bitmapPrefix : AppList (BitVec 64)) := (function472 bitmapPrefix).2.2.1
def programs472 := (472, StackAnalysis.optimized472.2.1, StackAnalysis.optimized472.2.2) :: programs473
def bodies472 := (472, stackBody472_136) :: bodies473
def frames472 := 4 :: frames473
def after472 (bitmapPrefix : AppList (BitVec 64)) := after473 (step472 bitmapPrefix)
theorem compiled472_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs472 (bitmapPrefix, 1494) = (bodies472, frames472, after472 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 472 StackAnalysis.optimized472.2.1 StackAnalysis.optimized472.2.2 programs473 (bitmapPrefix, 1494) (step472 bitmapPrefix, 1495) (after473 (step472 bitmapPrefix), 1503) stackBody472_136 4 bodies473 frames473 (function472_eq bitmapPrefix) (compiled473_eq (step472 bitmapPrefix))
def step471 (bitmapPrefix : AppList (BitVec 64)) := (function471 bitmapPrefix).2.2.1
def programs471 := (471, StackAnalysis.optimized471.2.1, StackAnalysis.optimized471.2.2) :: programs472
def bodies471 := (471, stackBody471_196) :: bodies472
def frames471 := 5 :: frames472
def after471 (bitmapPrefix : AppList (BitVec 64)) := after472 (step471 bitmapPrefix)
theorem compiled471_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs471 (bitmapPrefix, 1493) = (bodies471, frames471, after471 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 471 StackAnalysis.optimized471.2.1 StackAnalysis.optimized471.2.2 programs472 (bitmapPrefix, 1493) (step471 bitmapPrefix, 1494) (after472 (step471 bitmapPrefix), 1503) stackBody471_196 5 bodies472 frames472 (function471_eq bitmapPrefix) (compiled472_eq (step471 bitmapPrefix))
def step470 (bitmapPrefix : AppList (BitVec 64)) := (function470 bitmapPrefix).2.2.1
def programs470 := (470, StackAnalysis.optimized470.2.1, StackAnalysis.optimized470.2.2) :: programs471
def bodies470 := (470, stackBody470_68) :: bodies471
def frames470 := 0 :: frames471
def after470 (bitmapPrefix : AppList (BitVec 64)) := after471 (step470 bitmapPrefix)
theorem compiled470_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs470 (bitmapPrefix, 1493) = (bodies470, frames470, after470 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 470 StackAnalysis.optimized470.2.1 StackAnalysis.optimized470.2.2 programs471 (bitmapPrefix, 1493) (step470 bitmapPrefix, 1493) (after471 (step470 bitmapPrefix), 1503) stackBody470_68 0 bodies471 frames471 (function470_eq bitmapPrefix) (compiled471_eq (step470 bitmapPrefix))
def step469 (bitmapPrefix : AppList (BitVec 64)) := (function469 bitmapPrefix).2.2.1
def programs469 := (469, StackAnalysis.optimized469.2.1, StackAnalysis.optimized469.2.2) :: programs470
def bodies469 := (469, stackBody469_40) :: bodies470
def frames469 := 0 :: frames470
def after469 (bitmapPrefix : AppList (BitVec 64)) := after470 (step469 bitmapPrefix)
theorem compiled469_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs469 (bitmapPrefix, 1493) = (bodies469, frames469, after469 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 469 StackAnalysis.optimized469.2.1 StackAnalysis.optimized469.2.2 programs470 (bitmapPrefix, 1493) (step469 bitmapPrefix, 1493) (after470 (step469 bitmapPrefix), 1503) stackBody469_40 0 bodies470 frames470 (function469_eq bitmapPrefix) (compiled470_eq (step469 bitmapPrefix))
def step468 (bitmapPrefix : AppList (BitVec 64)) := (function468 bitmapPrefix).2.2.1
def programs468 := (468, StackAnalysis.optimized468.2.1, StackAnalysis.optimized468.2.2) :: programs469
def bodies468 := (468, stackBody468_112) :: bodies469
def frames468 := 0 :: frames469
def after468 (bitmapPrefix : AppList (BitVec 64)) := after469 (step468 bitmapPrefix)
theorem compiled468_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs468 (bitmapPrefix, 1493) = (bodies468, frames468, after468 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 468 StackAnalysis.optimized468.2.1 StackAnalysis.optimized468.2.2 programs469 (bitmapPrefix, 1493) (step468 bitmapPrefix, 1493) (after469 (step468 bitmapPrefix), 1503) stackBody468_112 0 bodies469 frames469 (function468_eq bitmapPrefix) (compiled469_eq (step468 bitmapPrefix))
def step467 (bitmapPrefix : AppList (BitVec 64)) := (function467 bitmapPrefix).2.2.1
def programs467 := (467, StackAnalysis.optimized467.2.1, StackAnalysis.optimized467.2.2) :: programs468
def bodies467 := (467, stackBody467_60) :: bodies468
def frames467 := 2 :: frames468
def after467 (bitmapPrefix : AppList (BitVec 64)) := after468 (step467 bitmapPrefix)
theorem compiled467_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs467 (bitmapPrefix, 1492) = (bodies467, frames467, after467 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 467 StackAnalysis.optimized467.2.1 StackAnalysis.optimized467.2.2 programs468 (bitmapPrefix, 1492) (step467 bitmapPrefix, 1493) (after468 (step467 bitmapPrefix), 1503) stackBody467_60 2 bodies468 frames468 (function467_eq bitmapPrefix) (compiled468_eq (step467 bitmapPrefix))
def step466 (bitmapPrefix : AppList (BitVec 64)) := (function466 bitmapPrefix).2.2.1
def programs466 := (466, StackAnalysis.optimized466.2.1, StackAnalysis.optimized466.2.2) :: programs467
def bodies466 := (466, stackBody466_198) :: bodies467
def frames466 := 5 :: frames467
def after466 (bitmapPrefix : AppList (BitVec 64)) := after467 (step466 bitmapPrefix)
theorem compiled466_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs466 (bitmapPrefix, 1489) = (bodies466, frames466, after466 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 466 StackAnalysis.optimized466.2.1 StackAnalysis.optimized466.2.2 programs467 (bitmapPrefix, 1489) (step466 bitmapPrefix, 1492) (after467 (step466 bitmapPrefix), 1503) stackBody466_198 5 bodies467 frames467 (function466_eq bitmapPrefix) (compiled467_eq (step466 bitmapPrefix))
def step465 (bitmapPrefix : AppList (BitVec 64)) := (function465 bitmapPrefix).2.2.1
def programs465 := (465, StackAnalysis.optimized465.2.1, StackAnalysis.optimized465.2.2) :: programs466
def bodies465 := (465, stackBody465_60) :: bodies466
def frames465 := 2 :: frames466
def after465 (bitmapPrefix : AppList (BitVec 64)) := after466 (step465 bitmapPrefix)
theorem compiled465_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs465 (bitmapPrefix, 1488) = (bodies465, frames465, after465 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 465 StackAnalysis.optimized465.2.1 StackAnalysis.optimized465.2.2 programs466 (bitmapPrefix, 1488) (step465 bitmapPrefix, 1489) (after466 (step465 bitmapPrefix), 1503) stackBody465_60 2 bodies466 frames466 (function465_eq bitmapPrefix) (compiled466_eq (step465 bitmapPrefix))
def step464 (bitmapPrefix : AppList (BitVec 64)) := (function464 bitmapPrefix).2.2.1
def programs464 := (464, StackAnalysis.optimized464.2.1, StackAnalysis.optimized464.2.2) :: programs465
def bodies464 := (464, stackBody464_86) :: bodies465
def frames464 := 2 :: frames465
def after464 (bitmapPrefix : AppList (BitVec 64)) := after465 (step464 bitmapPrefix)
theorem compiled464_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs464 (bitmapPrefix, 1487) = (bodies464, frames464, after464 bitmapPrefix, 1503) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 464 StackAnalysis.optimized464.2.1 StackAnalysis.optimized464.2.2 programs465 (bitmapPrefix, 1487) (step464 bitmapPrefix, 1488) (after465 (step464 bitmapPrefix), 1503) stackBody464_86 2 bodies465 frames465 (function464_eq bitmapPrefix) (compiled465_eq (step464 bitmapPrefix))
def programs := programs464
def bodies := bodies464
def frames := frames464
def after := after464
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1503)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1487) = result bitmapPrefix := compiled464_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk464_479
