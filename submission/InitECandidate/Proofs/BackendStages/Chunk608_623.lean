import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function608
import InitECandidate.Proofs.BackendStages.Function609
import InitECandidate.Proofs.BackendStages.Function610
import InitECandidate.Proofs.BackendStages.Function611
import InitECandidate.Proofs.BackendStages.Function612
import InitECandidate.Proofs.BackendStages.Function613
import InitECandidate.Proofs.BackendStages.Function614
import InitECandidate.Proofs.BackendStages.Function615
import InitECandidate.Proofs.BackendStages.Function616
import InitECandidate.Proofs.BackendStages.Function617
import InitECandidate.Proofs.BackendStages.Function618
import InitECandidate.Proofs.BackendStages.Function619
import InitECandidate.Proofs.BackendStages.Function620
import InitECandidate.Proofs.BackendStages.Function621
import InitECandidate.Proofs.BackendStages.Function622
import InitECandidate.Proofs.BackendStages.Function623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk608_623
def programs624 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies624 : List (Nat × StackLang.HolProg 64) := []
def frames624 : List Nat := []
def after624 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled624_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs624 (bitmapPrefix, 2525) = (bodies624, frames624, after624 bitmapPrefix, 2525) := by rfl
def step623 (bitmapPrefix : AppList (BitVec 64)) := (function623 bitmapPrefix).2.2.1
def programs623 := (623, StackAnalysis.optimized623.2.1, StackAnalysis.optimized623.2.2) :: programs624
def bodies623 := (623, stackBody623_2400) :: bodies624
def frames623 := 26 :: frames624
def after623 (bitmapPrefix : AppList (BitVec 64)) := after624 (step623 bitmapPrefix)
theorem compiled623_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs623 (bitmapPrefix, 2499) = (bodies623, frames623, after623 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 623 StackAnalysis.optimized623.2.1 StackAnalysis.optimized623.2.2 programs624 (bitmapPrefix, 2499) (step623 bitmapPrefix, 2525) (after624 (step623 bitmapPrefix), 2525) stackBody623_2400 26 bodies624 frames624 (function623_eq bitmapPrefix) (compiled624_eq (step623 bitmapPrefix))
def step622 (bitmapPrefix : AppList (BitVec 64)) := (function622 bitmapPrefix).2.2.1
def programs622 := (622, StackAnalysis.optimized622.2.1, StackAnalysis.optimized622.2.2) :: programs623
def bodies622 := (622, stackBody622_3180) :: bodies623
def frames622 := 32 :: frames623
def after622 (bitmapPrefix : AppList (BitVec 64)) := after623 (step622 bitmapPrefix)
theorem compiled622_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs622 (bitmapPrefix, 2467) = (bodies622, frames622, after622 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 622 StackAnalysis.optimized622.2.1 StackAnalysis.optimized622.2.2 programs623 (bitmapPrefix, 2467) (step622 bitmapPrefix, 2499) (after623 (step622 bitmapPrefix), 2525) stackBody622_3180 32 bodies623 frames623 (function622_eq bitmapPrefix) (compiled623_eq (step622 bitmapPrefix))
def step621 (bitmapPrefix : AppList (BitVec 64)) := (function621 bitmapPrefix).2.2.1
def programs621 := (621, StackAnalysis.optimized621.2.1, StackAnalysis.optimized621.2.2) :: programs622
def bodies621 := (621, stackBody621_3368) :: bodies622
def frames621 := 34 :: frames622
def after621 (bitmapPrefix : AppList (BitVec 64)) := after622 (step621 bitmapPrefix)
theorem compiled621_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs621 (bitmapPrefix, 2432) = (bodies621, frames621, after621 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 621 StackAnalysis.optimized621.2.1 StackAnalysis.optimized621.2.2 programs622 (bitmapPrefix, 2432) (step621 bitmapPrefix, 2467) (after622 (step621 bitmapPrefix), 2525) stackBody621_3368 34 bodies622 frames622 (function621_eq bitmapPrefix) (compiled622_eq (step621 bitmapPrefix))
def step620 (bitmapPrefix : AppList (BitVec 64)) := (function620 bitmapPrefix).2.2.1
def programs620 := (620, StackAnalysis.optimized620.2.1, StackAnalysis.optimized620.2.2) :: programs621
def bodies620 := (620, stackBody620_326) :: bodies621
def frames620 := 7 :: frames621
def after620 (bitmapPrefix : AppList (BitVec 64)) := after621 (step620 bitmapPrefix)
theorem compiled620_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs620 (bitmapPrefix, 2428) = (bodies620, frames620, after620 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 620 StackAnalysis.optimized620.2.1 StackAnalysis.optimized620.2.2 programs621 (bitmapPrefix, 2428) (step620 bitmapPrefix, 2432) (after621 (step620 bitmapPrefix), 2525) stackBody620_326 7 bodies621 frames621 (function620_eq bitmapPrefix) (compiled621_eq (step620 bitmapPrefix))
def step619 (bitmapPrefix : AppList (BitVec 64)) := (function619 bitmapPrefix).2.2.1
def programs619 := (619, StackAnalysis.optimized619.2.1, StackAnalysis.optimized619.2.2) :: programs620
def bodies619 := (619, stackBody619_666) :: bodies620
def frames619 := 22 :: frames620
def after619 (bitmapPrefix : AppList (BitVec 64)) := after620 (step619 bitmapPrefix)
theorem compiled619_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs619 (bitmapPrefix, 2421) = (bodies619, frames619, after619 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 619 StackAnalysis.optimized619.2.1 StackAnalysis.optimized619.2.2 programs620 (bitmapPrefix, 2421) (step619 bitmapPrefix, 2428) (after620 (step619 bitmapPrefix), 2525) stackBody619_666 22 bodies620 frames620 (function619_eq bitmapPrefix) (compiled620_eq (step619 bitmapPrefix))
def step618 (bitmapPrefix : AppList (BitVec 64)) := (function618 bitmapPrefix).2.2.1
def programs618 := (618, StackAnalysis.optimized618.2.1, StackAnalysis.optimized618.2.2) :: programs619
def bodies618 := (618, stackBody618_1372) :: bodies619
def frames618 := 18 :: frames619
def after618 (bitmapPrefix : AppList (BitVec 64)) := after619 (step618 bitmapPrefix)
theorem compiled618_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs618 (bitmapPrefix, 2403) = (bodies618, frames618, after618 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 618 StackAnalysis.optimized618.2.1 StackAnalysis.optimized618.2.2 programs619 (bitmapPrefix, 2403) (step618 bitmapPrefix, 2421) (after619 (step618 bitmapPrefix), 2525) stackBody618_1372 18 bodies619 frames619 (function618_eq bitmapPrefix) (compiled619_eq (step618 bitmapPrefix))
def step617 (bitmapPrefix : AppList (BitVec 64)) := (function617 bitmapPrefix).2.2.1
def programs617 := (617, StackAnalysis.optimized617.2.1, StackAnalysis.optimized617.2.2) :: programs618
def bodies617 := (617, stackBody617_1006) :: bodies618
def frames617 := 14 :: frames618
def after617 (bitmapPrefix : AppList (BitVec 64)) := after618 (step617 bitmapPrefix)
theorem compiled617_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs617 (bitmapPrefix, 2387) = (bodies617, frames617, after617 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 617 StackAnalysis.optimized617.2.1 StackAnalysis.optimized617.2.2 programs618 (bitmapPrefix, 2387) (step617 bitmapPrefix, 2403) (after618 (step617 bitmapPrefix), 2525) stackBody617_1006 14 bodies618 frames618 (function617_eq bitmapPrefix) (compiled618_eq (step617 bitmapPrefix))
def step616 (bitmapPrefix : AppList (BitVec 64)) := (function616 bitmapPrefix).2.2.1
def programs616 := (616, StackAnalysis.optimized616.2.1, StackAnalysis.optimized616.2.2) :: programs617
def bodies616 := (616, stackBody616_1274) :: bodies617
def frames616 := 15 :: frames617
def after616 (bitmapPrefix : AppList (BitVec 64)) := after617 (step616 bitmapPrefix)
theorem compiled616_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs616 (bitmapPrefix, 2371) = (bodies616, frames616, after616 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 616 StackAnalysis.optimized616.2.1 StackAnalysis.optimized616.2.2 programs617 (bitmapPrefix, 2371) (step616 bitmapPrefix, 2387) (after617 (step616 bitmapPrefix), 2525) stackBody616_1274 15 bodies617 frames617 (function616_eq bitmapPrefix) (compiled617_eq (step616 bitmapPrefix))
def step615 (bitmapPrefix : AppList (BitVec 64)) := (function615 bitmapPrefix).2.2.1
def programs615 := (615, StackAnalysis.optimized615.2.1, StackAnalysis.optimized615.2.2) :: programs616
def bodies615 := (615, stackBody615_558) :: bodies616
def frames615 := 8 :: frames616
def after615 (bitmapPrefix : AppList (BitVec 64)) := after616 (step615 bitmapPrefix)
theorem compiled615_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs615 (bitmapPrefix, 2362) = (bodies615, frames615, after615 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 615 StackAnalysis.optimized615.2.1 StackAnalysis.optimized615.2.2 programs616 (bitmapPrefix, 2362) (step615 bitmapPrefix, 2371) (after616 (step615 bitmapPrefix), 2525) stackBody615_558 8 bodies616 frames616 (function615_eq bitmapPrefix) (compiled616_eq (step615 bitmapPrefix))
def step614 (bitmapPrefix : AppList (BitVec 64)) := (function614 bitmapPrefix).2.2.1
def programs614 := (614, StackAnalysis.optimized614.2.1, StackAnalysis.optimized614.2.2) :: programs615
def bodies614 := (614, stackBody614_612) :: bodies615
def frames614 := 7 :: frames615
def after614 (bitmapPrefix : AppList (BitVec 64)) := after615 (step614 bitmapPrefix)
theorem compiled614_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs614 (bitmapPrefix, 2352) = (bodies614, frames614, after614 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 614 StackAnalysis.optimized614.2.1 StackAnalysis.optimized614.2.2 programs615 (bitmapPrefix, 2352) (step614 bitmapPrefix, 2362) (after615 (step614 bitmapPrefix), 2525) stackBody614_612 7 bodies615 frames615 (function614_eq bitmapPrefix) (compiled615_eq (step614 bitmapPrefix))
def step613 (bitmapPrefix : AppList (BitVec 64)) := (function613 bitmapPrefix).2.2.1
def programs613 := (613, StackAnalysis.optimized613.2.1, StackAnalysis.optimized613.2.2) :: programs614
def bodies613 := (613, stackBody613_250) :: bodies614
def frames613 := 4 :: frames614
def after613 (bitmapPrefix : AppList (BitVec 64)) := after614 (step613 bitmapPrefix)
theorem compiled613_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs613 (bitmapPrefix, 2350) = (bodies613, frames613, after613 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 613 StackAnalysis.optimized613.2.1 StackAnalysis.optimized613.2.2 programs614 (bitmapPrefix, 2350) (step613 bitmapPrefix, 2352) (after614 (step613 bitmapPrefix), 2525) stackBody613_250 4 bodies614 frames614 (function613_eq bitmapPrefix) (compiled614_eq (step613 bitmapPrefix))
def step612 (bitmapPrefix : AppList (BitVec 64)) := (function612 bitmapPrefix).2.2.1
def programs612 := (612, StackAnalysis.optimized612.2.1, StackAnalysis.optimized612.2.2) :: programs613
def bodies612 := (612, stackBody612_384) :: bodies613
def frames612 := 20 :: frames613
def after612 (bitmapPrefix : AppList (BitVec 64)) := after613 (step612 bitmapPrefix)
theorem compiled612_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs612 (bitmapPrefix, 2349) = (bodies612, frames612, after612 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 612 StackAnalysis.optimized612.2.1 StackAnalysis.optimized612.2.2 programs613 (bitmapPrefix, 2349) (step612 bitmapPrefix, 2350) (after613 (step612 bitmapPrefix), 2525) stackBody612_384 20 bodies613 frames613 (function612_eq bitmapPrefix) (compiled613_eq (step612 bitmapPrefix))
def step611 (bitmapPrefix : AppList (BitVec 64)) := (function611 bitmapPrefix).2.2.1
def programs611 := (611, StackAnalysis.optimized611.2.1, StackAnalysis.optimized611.2.2) :: programs612
def bodies611 := (611, stackBody611_122) :: bodies612
def frames611 := 3 :: frames612
def after611 (bitmapPrefix : AppList (BitVec 64)) := after612 (step611 bitmapPrefix)
theorem compiled611_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs611 (bitmapPrefix, 2347) = (bodies611, frames611, after611 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 611 StackAnalysis.optimized611.2.1 StackAnalysis.optimized611.2.2 programs612 (bitmapPrefix, 2347) (step611 bitmapPrefix, 2349) (after612 (step611 bitmapPrefix), 2525) stackBody611_122 3 bodies612 frames612 (function611_eq bitmapPrefix) (compiled612_eq (step611 bitmapPrefix))
def step610 (bitmapPrefix : AppList (BitVec 64)) := (function610 bitmapPrefix).2.2.1
def programs610 := (610, StackAnalysis.optimized610.2.1, StackAnalysis.optimized610.2.2) :: programs611
def bodies610 := (610, stackBody610_389) :: bodies611
def frames610 := 8 :: frames611
def after610 (bitmapPrefix : AppList (BitVec 64)) := after611 (step610 bitmapPrefix)
theorem compiled610_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs610 (bitmapPrefix, 2344) = (bodies610, frames610, after610 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 610 StackAnalysis.optimized610.2.1 StackAnalysis.optimized610.2.2 programs611 (bitmapPrefix, 2344) (step610 bitmapPrefix, 2347) (after611 (step610 bitmapPrefix), 2525) stackBody610_389 8 bodies611 frames611 (function610_eq bitmapPrefix) (compiled611_eq (step610 bitmapPrefix))
def step609 (bitmapPrefix : AppList (BitVec 64)) := (function609 bitmapPrefix).2.2.1
def programs609 := (609, StackAnalysis.optimized609.2.1, StackAnalysis.optimized609.2.2) :: programs610
def bodies609 := (609, stackBody609_72) :: bodies610
def frames609 := 0 :: frames610
def after609 (bitmapPrefix : AppList (BitVec 64)) := after610 (step609 bitmapPrefix)
theorem compiled609_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs609 (bitmapPrefix, 2344) = (bodies609, frames609, after609 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 609 StackAnalysis.optimized609.2.1 StackAnalysis.optimized609.2.2 programs610 (bitmapPrefix, 2344) (step609 bitmapPrefix, 2344) (after610 (step609 bitmapPrefix), 2525) stackBody609_72 0 bodies610 frames610 (function609_eq bitmapPrefix) (compiled610_eq (step609 bitmapPrefix))
def step608 (bitmapPrefix : AppList (BitVec 64)) := (function608 bitmapPrefix).2.2.1
def programs608 := (608, StackAnalysis.optimized608.2.1, StackAnalysis.optimized608.2.2) :: programs609
def bodies608 := (608, stackBody608_630) :: bodies609
def frames608 := 7 :: frames609
def after608 (bitmapPrefix : AppList (BitVec 64)) := after609 (step608 bitmapPrefix)
theorem compiled608_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs608 (bitmapPrefix, 2334) = (bodies608, frames608, after608 bitmapPrefix, 2525) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 608 StackAnalysis.optimized608.2.1 StackAnalysis.optimized608.2.2 programs609 (bitmapPrefix, 2334) (step608 bitmapPrefix, 2344) (after609 (step608 bitmapPrefix), 2525) stackBody608_630 7 bodies609 frames609 (function608_eq bitmapPrefix) (compiled609_eq (step608 bitmapPrefix))
def programs := programs608
def bodies := bodies608
def frames := frames608
def after := after608
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2525)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2334) = result bitmapPrefix := compiled608_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk608_623
