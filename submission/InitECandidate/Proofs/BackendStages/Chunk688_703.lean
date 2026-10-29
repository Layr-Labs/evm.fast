import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function688
import InitECandidate.Proofs.BackendStages.Function689
import InitECandidate.Proofs.BackendStages.Function690
import InitECandidate.Proofs.BackendStages.Function691
import InitECandidate.Proofs.BackendStages.Function692
import InitECandidate.Proofs.BackendStages.Function693
import InitECandidate.Proofs.BackendStages.Function694
import InitECandidate.Proofs.BackendStages.Function695
import InitECandidate.Proofs.BackendStages.Function696
import InitECandidate.Proofs.BackendStages.Function697
import InitECandidate.Proofs.BackendStages.Function698
import InitECandidate.Proofs.BackendStages.Function699
import InitECandidate.Proofs.BackendStages.Function700
import InitECandidate.Proofs.BackendStages.Function701
import InitECandidate.Proofs.BackendStages.Function702
import InitECandidate.Proofs.BackendStages.Function703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk688_703
def programs704 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies704 : List (Nat × StackLang.HolProg 64) := []
def frames704 : List Nat := []
def after704 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled704_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs704 (bitmapPrefix, 3150) = (bodies704, frames704, after704 bitmapPrefix, 3150) := by rfl
def step703 (bitmapPrefix : AppList (BitVec 64)) := (function703 bitmapPrefix).2.2.1
def programs703 := (703, StackAnalysis.optimized703.2.1, StackAnalysis.optimized703.2.2) :: programs704
def bodies703 := (703, stackBody703_396) :: bodies704
def frames703 := 5 :: frames704
def after703 (bitmapPrefix : AppList (BitVec 64)) := after704 (step703 bitmapPrefix)
theorem compiled703_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs703 (bitmapPrefix, 3145) = (bodies703, frames703, after703 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 703 StackAnalysis.optimized703.2.1 StackAnalysis.optimized703.2.2 programs704 (bitmapPrefix, 3145) (step703 bitmapPrefix, 3150) (after704 (step703 bitmapPrefix), 3150) stackBody703_396 5 bodies704 frames704 (function703_eq bitmapPrefix) (compiled704_eq (step703 bitmapPrefix))
def step702 (bitmapPrefix : AppList (BitVec 64)) := (function702 bitmapPrefix).2.2.1
def programs702 := (702, StackAnalysis.optimized702.2.1, StackAnalysis.optimized702.2.2) :: programs703
def bodies702 := (702, stackBody702_448) :: bodies703
def frames702 := 5 :: frames703
def after702 (bitmapPrefix : AppList (BitVec 64)) := after703 (step702 bitmapPrefix)
theorem compiled702_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs702 (bitmapPrefix, 3138) = (bodies702, frames702, after702 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 702 StackAnalysis.optimized702.2.1 StackAnalysis.optimized702.2.2 programs703 (bitmapPrefix, 3138) (step702 bitmapPrefix, 3145) (after703 (step702 bitmapPrefix), 3150) stackBody702_448 5 bodies703 frames703 (function702_eq bitmapPrefix) (compiled703_eq (step702 bitmapPrefix))
def step701 (bitmapPrefix : AppList (BitVec 64)) := (function701 bitmapPrefix).2.2.1
def programs701 := (701, StackAnalysis.optimized701.2.1, StackAnalysis.optimized701.2.2) :: programs702
def bodies701 := (701, stackBody701_448) :: bodies702
def frames701 := 5 :: frames702
def after701 (bitmapPrefix : AppList (BitVec 64)) := after702 (step701 bitmapPrefix)
theorem compiled701_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs701 (bitmapPrefix, 3131) = (bodies701, frames701, after701 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 701 StackAnalysis.optimized701.2.1 StackAnalysis.optimized701.2.2 programs702 (bitmapPrefix, 3131) (step701 bitmapPrefix, 3138) (after702 (step701 bitmapPrefix), 3150) stackBody701_448 5 bodies702 frames702 (function701_eq bitmapPrefix) (compiled702_eq (step701 bitmapPrefix))
def step700 (bitmapPrefix : AppList (BitVec 64)) := (function700 bitmapPrefix).2.2.1
def programs700 := (700, StackAnalysis.optimized700.2.1, StackAnalysis.optimized700.2.2) :: programs701
def bodies700 := (700, stackBody700_2521) :: bodies701
def frames700 := 19 :: frames701
def after700 (bitmapPrefix : AppList (BitVec 64)) := after701 (step700 bitmapPrefix)
theorem compiled700_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs700 (bitmapPrefix, 3093) = (bodies700, frames700, after700 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 700 StackAnalysis.optimized700.2.1 StackAnalysis.optimized700.2.2 programs701 (bitmapPrefix, 3093) (step700 bitmapPrefix, 3131) (after701 (step700 bitmapPrefix), 3150) stackBody700_2521 19 bodies701 frames701 (function700_eq bitmapPrefix) (compiled701_eq (step700 bitmapPrefix))
def step699 (bitmapPrefix : AppList (BitVec 64)) := (function699 bitmapPrefix).2.2.1
def programs699 := (699, StackAnalysis.optimized699.2.1, StackAnalysis.optimized699.2.2) :: programs700
def bodies699 := (699, stackBody699_472) :: bodies700
def frames699 := 6 :: frames700
def after699 (bitmapPrefix : AppList (BitVec 64)) := after700 (step699 bitmapPrefix)
theorem compiled699_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs699 (bitmapPrefix, 3085) = (bodies699, frames699, after699 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 699 StackAnalysis.optimized699.2.1 StackAnalysis.optimized699.2.2 programs700 (bitmapPrefix, 3085) (step699 bitmapPrefix, 3093) (after700 (step699 bitmapPrefix), 3150) stackBody699_472 6 bodies700 frames700 (function699_eq bitmapPrefix) (compiled700_eq (step699 bitmapPrefix))
def step698 (bitmapPrefix : AppList (BitVec 64)) := (function698 bitmapPrefix).2.2.1
def programs698 := (698, StackAnalysis.optimized698.2.1, StackAnalysis.optimized698.2.2) :: programs699
def bodies698 := (698, stackBody698_590) :: bodies699
def frames698 := 7 :: frames699
def after698 (bitmapPrefix : AppList (BitVec 64)) := after699 (step698 bitmapPrefix)
theorem compiled698_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs698 (bitmapPrefix, 3075) = (bodies698, frames698, after698 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 698 StackAnalysis.optimized698.2.1 StackAnalysis.optimized698.2.2 programs699 (bitmapPrefix, 3075) (step698 bitmapPrefix, 3085) (after699 (step698 bitmapPrefix), 3150) stackBody698_590 7 bodies699 frames699 (function698_eq bitmapPrefix) (compiled699_eq (step698 bitmapPrefix))
def step697 (bitmapPrefix : AppList (BitVec 64)) := (function697 bitmapPrefix).2.2.1
def programs697 := (697, StackAnalysis.optimized697.2.1, StackAnalysis.optimized697.2.2) :: programs698
def bodies697 := (697, stackBody697_726) :: bodies698
def frames697 := 11 :: frames698
def after697 (bitmapPrefix : AppList (BitVec 64)) := after698 (step697 bitmapPrefix)
theorem compiled697_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs697 (bitmapPrefix, 3066) = (bodies697, frames697, after697 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 697 StackAnalysis.optimized697.2.1 StackAnalysis.optimized697.2.2 programs698 (bitmapPrefix, 3066) (step697 bitmapPrefix, 3075) (after698 (step697 bitmapPrefix), 3150) stackBody697_726 11 bodies698 frames698 (function697_eq bitmapPrefix) (compiled698_eq (step697 bitmapPrefix))
def step696 (bitmapPrefix : AppList (BitVec 64)) := (function696 bitmapPrefix).2.2.1
def programs696 := (696, StackAnalysis.optimized696.2.1, StackAnalysis.optimized696.2.2) :: programs697
def bodies696 := (696, stackBody696_2170) :: bodies697
def frames696 := 23 :: frames697
def after696 (bitmapPrefix : AppList (BitVec 64)) := after697 (step696 bitmapPrefix)
theorem compiled696_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs696 (bitmapPrefix, 3042) = (bodies696, frames696, after696 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 696 StackAnalysis.optimized696.2.1 StackAnalysis.optimized696.2.2 programs697 (bitmapPrefix, 3042) (step696 bitmapPrefix, 3066) (after697 (step696 bitmapPrefix), 3150) stackBody696_2170 23 bodies697 frames697 (function696_eq bitmapPrefix) (compiled697_eq (step696 bitmapPrefix))
def step695 (bitmapPrefix : AppList (BitVec 64)) := (function695 bitmapPrefix).2.2.1
def programs695 := (695, StackAnalysis.optimized695.2.1, StackAnalysis.optimized695.2.2) :: programs696
def bodies695 := (695, stackBody695_1238) :: bodies696
def frames695 := 15 :: frames696
def after695 (bitmapPrefix : AppList (BitVec 64)) := after696 (step695 bitmapPrefix)
theorem compiled695_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs695 (bitmapPrefix, 3028) = (bodies695, frames695, after695 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 695 StackAnalysis.optimized695.2.1 StackAnalysis.optimized695.2.2 programs696 (bitmapPrefix, 3028) (step695 bitmapPrefix, 3042) (after696 (step695 bitmapPrefix), 3150) stackBody695_1238 15 bodies696 frames696 (function695_eq bitmapPrefix) (compiled696_eq (step695 bitmapPrefix))
def step694 (bitmapPrefix : AppList (BitVec 64)) := (function694 bitmapPrefix).2.2.1
def programs694 := (694, StackAnalysis.optimized694.2.1, StackAnalysis.optimized694.2.2) :: programs695
def bodies694 := (694, stackBody694_936) :: bodies695
def frames694 := 9 :: frames695
def after694 (bitmapPrefix : AppList (BitVec 64)) := after695 (step694 bitmapPrefix)
theorem compiled694_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs694 (bitmapPrefix, 3012) = (bodies694, frames694, after694 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 694 StackAnalysis.optimized694.2.1 StackAnalysis.optimized694.2.2 programs695 (bitmapPrefix, 3012) (step694 bitmapPrefix, 3028) (after695 (step694 bitmapPrefix), 3150) stackBody694_936 9 bodies695 frames695 (function694_eq bitmapPrefix) (compiled695_eq (step694 bitmapPrefix))
def step693 (bitmapPrefix : AppList (BitVec 64)) := (function693 bitmapPrefix).2.2.1
def programs693 := (693, StackAnalysis.optimized693.2.1, StackAnalysis.optimized693.2.2) :: programs694
def bodies693 := (693, stackBody693_2757) :: bodies694
def frames693 := 14 :: frames694
def after693 (bitmapPrefix : AppList (BitVec 64)) := after694 (step693 bitmapPrefix)
theorem compiled693_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs693 (bitmapPrefix, 2971) = (bodies693, frames693, after693 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 693 StackAnalysis.optimized693.2.1 StackAnalysis.optimized693.2.2 programs694 (bitmapPrefix, 2971) (step693 bitmapPrefix, 3012) (after694 (step693 bitmapPrefix), 3150) stackBody693_2757 14 bodies694 frames694 (function693_eq bitmapPrefix) (compiled694_eq (step693 bitmapPrefix))
def step692 (bitmapPrefix : AppList (BitVec 64)) := (function692 bitmapPrefix).2.2.1
def programs692 := (692, StackAnalysis.optimized692.2.1, StackAnalysis.optimized692.2.2) :: programs693
def bodies692 := (692, stackBody692_337) :: bodies693
def frames692 := 8 :: frames693
def after692 (bitmapPrefix : AppList (BitVec 64)) := after693 (step692 bitmapPrefix)
theorem compiled692_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs692 (bitmapPrefix, 2968) = (bodies692, frames692, after692 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 692 StackAnalysis.optimized692.2.1 StackAnalysis.optimized692.2.2 programs693 (bitmapPrefix, 2968) (step692 bitmapPrefix, 2971) (after693 (step692 bitmapPrefix), 3150) stackBody692_337 8 bodies693 frames693 (function692_eq bitmapPrefix) (compiled693_eq (step692 bitmapPrefix))
def step691 (bitmapPrefix : AppList (BitVec 64)) := (function691 bitmapPrefix).2.2.1
def programs691 := (691, StackAnalysis.optimized691.2.1, StackAnalysis.optimized691.2.2) :: programs692
def bodies691 := (691, stackBody691_2666) :: bodies692
def frames691 := 26 :: frames692
def after691 (bitmapPrefix : AppList (BitVec 64)) := after692 (step691 bitmapPrefix)
theorem compiled691_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs691 (bitmapPrefix, 2940) = (bodies691, frames691, after691 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 691 StackAnalysis.optimized691.2.1 StackAnalysis.optimized691.2.2 programs692 (bitmapPrefix, 2940) (step691 bitmapPrefix, 2968) (after692 (step691 bitmapPrefix), 3150) stackBody691_2666 26 bodies692 frames692 (function691_eq bitmapPrefix) (compiled692_eq (step691 bitmapPrefix))
def step690 (bitmapPrefix : AppList (BitVec 64)) := (function690 bitmapPrefix).2.2.1
def programs690 := (690, StackAnalysis.optimized690.2.1, StackAnalysis.optimized690.2.2) :: programs691
def bodies690 := (690, stackBody690_317) :: bodies691
def frames690 := 11 :: frames691
def after690 (bitmapPrefix : AppList (BitVec 64)) := after691 (step690 bitmapPrefix)
theorem compiled690_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs690 (bitmapPrefix, 2938) = (bodies690, frames690, after690 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 690 StackAnalysis.optimized690.2.1 StackAnalysis.optimized690.2.2 programs691 (bitmapPrefix, 2938) (step690 bitmapPrefix, 2940) (after691 (step690 bitmapPrefix), 3150) stackBody690_317 11 bodies691 frames691 (function690_eq bitmapPrefix) (compiled691_eq (step690 bitmapPrefix))
def step689 (bitmapPrefix : AppList (BitVec 64)) := (function689 bitmapPrefix).2.2.1
def programs689 := (689, StackAnalysis.optimized689.2.1, StackAnalysis.optimized689.2.2) :: programs690
def bodies689 := (689, stackBody689_141) :: bodies690
def frames689 := 5 :: frames690
def after689 (bitmapPrefix : AppList (BitVec 64)) := after690 (step689 bitmapPrefix)
theorem compiled689_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs689 (bitmapPrefix, 2937) = (bodies689, frames689, after689 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 689 StackAnalysis.optimized689.2.1 StackAnalysis.optimized689.2.2 programs690 (bitmapPrefix, 2937) (step689 bitmapPrefix, 2938) (after690 (step689 bitmapPrefix), 3150) stackBody689_141 5 bodies690 frames690 (function689_eq bitmapPrefix) (compiled690_eq (step689 bitmapPrefix))
def step688 (bitmapPrefix : AppList (BitVec 64)) := (function688 bitmapPrefix).2.2.1
def programs688 := (688, StackAnalysis.optimized688.2.1, StackAnalysis.optimized688.2.2) :: programs689
def bodies688 := (688, stackBody688_1411) :: bodies689
def frames688 := 25 :: frames689
def after688 (bitmapPrefix : AppList (BitVec 64)) := after689 (step688 bitmapPrefix)
theorem compiled688_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs688 (bitmapPrefix, 2926) = (bodies688, frames688, after688 bitmapPrefix, 3150) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 688 StackAnalysis.optimized688.2.1 StackAnalysis.optimized688.2.2 programs689 (bitmapPrefix, 2926) (step688 bitmapPrefix, 2937) (after689 (step688 bitmapPrefix), 3150) stackBody688_1411 25 bodies689 frames689 (function688_eq bitmapPrefix) (compiled689_eq (step688 bitmapPrefix))
def programs := programs688
def bodies := bodies688
def frames := frames688
def after := after688
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3150)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2926) = result bitmapPrefix := compiled688_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk688_703
