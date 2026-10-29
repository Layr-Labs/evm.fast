import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function672
import InitECandidate.Proofs.BackendStages.Function673
import InitECandidate.Proofs.BackendStages.Function674
import InitECandidate.Proofs.BackendStages.Function675
import InitECandidate.Proofs.BackendStages.Function676
import InitECandidate.Proofs.BackendStages.Function677
import InitECandidate.Proofs.BackendStages.Function678
import InitECandidate.Proofs.BackendStages.Function679
import InitECandidate.Proofs.BackendStages.Function680
import InitECandidate.Proofs.BackendStages.Function681
import InitECandidate.Proofs.BackendStages.Function682
import InitECandidate.Proofs.BackendStages.Function683
import InitECandidate.Proofs.BackendStages.Function684
import InitECandidate.Proofs.BackendStages.Function685
import InitECandidate.Proofs.BackendStages.Function686
import InitECandidate.Proofs.BackendStages.Function687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk672_687
def programs688 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies688 : List (Nat × StackLang.HolProg 64) := []
def frames688 : List Nat := []
def after688 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled688_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs688 (bitmapPrefix, 2926) = (bodies688, frames688, after688 bitmapPrefix, 2926) := by rfl
def step687 (bitmapPrefix : AppList (BitVec 64)) := (function687 bitmapPrefix).2.2.1
def programs687 := (687, StackAnalysis.optimized687.2.1, StackAnalysis.optimized687.2.2) :: programs688
def bodies687 := (687, stackBody687_176) :: bodies688
def frames687 := 4 :: frames688
def after687 (bitmapPrefix : AppList (BitVec 64)) := after688 (step687 bitmapPrefix)
theorem compiled687_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs687 (bitmapPrefix, 2925) = (bodies687, frames687, after687 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 687 StackAnalysis.optimized687.2.1 StackAnalysis.optimized687.2.2 programs688 (bitmapPrefix, 2925) (step687 bitmapPrefix, 2926) (after688 (step687 bitmapPrefix), 2926) stackBody687_176 4 bodies688 frames688 (function687_eq bitmapPrefix) (compiled688_eq (step687 bitmapPrefix))
def step686 (bitmapPrefix : AppList (BitVec 64)) := (function686 bitmapPrefix).2.2.1
def programs686 := (686, StackAnalysis.optimized686.2.1, StackAnalysis.optimized686.2.2) :: programs687
def bodies686 := (686, stackBody686_461) :: bodies687
def frames686 := 13 :: frames687
def after686 (bitmapPrefix : AppList (BitVec 64)) := after687 (step686 bitmapPrefix)
theorem compiled686_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs686 (bitmapPrefix, 2922) = (bodies686, frames686, after686 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 686 StackAnalysis.optimized686.2.1 StackAnalysis.optimized686.2.2 programs687 (bitmapPrefix, 2922) (step686 bitmapPrefix, 2925) (after687 (step686 bitmapPrefix), 2926) stackBody686_461 13 bodies687 frames687 (function686_eq bitmapPrefix) (compiled687_eq (step686 bitmapPrefix))
def step685 (bitmapPrefix : AppList (BitVec 64)) := (function685 bitmapPrefix).2.2.1
def programs685 := (685, StackAnalysis.optimized685.2.1, StackAnalysis.optimized685.2.2) :: programs686
def bodies685 := (685, stackBody685_2786) :: bodies686
def frames685 := 20 :: frames686
def after685 (bitmapPrefix : AppList (BitVec 64)) := after686 (step685 bitmapPrefix)
theorem compiled685_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs685 (bitmapPrefix, 2886) = (bodies685, frames685, after685 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 685 StackAnalysis.optimized685.2.1 StackAnalysis.optimized685.2.2 programs686 (bitmapPrefix, 2886) (step685 bitmapPrefix, 2922) (after686 (step685 bitmapPrefix), 2926) stackBody685_2786 20 bodies686 frames686 (function685_eq bitmapPrefix) (compiled686_eq (step685 bitmapPrefix))
def step684 (bitmapPrefix : AppList (BitVec 64)) := (function684 bitmapPrefix).2.2.1
def programs684 := (684, StackAnalysis.optimized684.2.1, StackAnalysis.optimized684.2.2) :: programs685
def bodies684 := (684, stackBody684_937) :: bodies685
def frames684 := 15 :: frames685
def after684 (bitmapPrefix : AppList (BitVec 64)) := after685 (step684 bitmapPrefix)
theorem compiled684_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs684 (bitmapPrefix, 2875) = (bodies684, frames684, after684 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 684 StackAnalysis.optimized684.2.1 StackAnalysis.optimized684.2.2 programs685 (bitmapPrefix, 2875) (step684 bitmapPrefix, 2886) (after685 (step684 bitmapPrefix), 2926) stackBody684_937 15 bodies685 frames685 (function684_eq bitmapPrefix) (compiled685_eq (step684 bitmapPrefix))
def step683 (bitmapPrefix : AppList (BitVec 64)) := (function683 bitmapPrefix).2.2.1
def programs683 := (683, StackAnalysis.optimized683.2.1, StackAnalysis.optimized683.2.2) :: programs684
def bodies683 := (683, stackBody683_3522) :: bodies684
def frames683 := 20 :: frames684
def after683 (bitmapPrefix : AppList (BitVec 64)) := after684 (step683 bitmapPrefix)
theorem compiled683_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs683 (bitmapPrefix, 2828) = (bodies683, frames683, after683 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 683 StackAnalysis.optimized683.2.1 StackAnalysis.optimized683.2.2 programs684 (bitmapPrefix, 2828) (step683 bitmapPrefix, 2875) (after684 (step683 bitmapPrefix), 2926) stackBody683_3522 20 bodies684 frames684 (function683_eq bitmapPrefix) (compiled684_eq (step683 bitmapPrefix))
def step682 (bitmapPrefix : AppList (BitVec 64)) := (function682 bitmapPrefix).2.2.1
def programs682 := (682, StackAnalysis.optimized682.2.1, StackAnalysis.optimized682.2.2) :: programs683
def bodies682 := (682, stackBody682_2192) :: bodies683
def frames682 := 16 :: frames683
def after682 (bitmapPrefix : AppList (BitVec 64)) := after683 (step682 bitmapPrefix)
theorem compiled682_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs682 (bitmapPrefix, 2796) = (bodies682, frames682, after682 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 682 StackAnalysis.optimized682.2.1 StackAnalysis.optimized682.2.2 programs683 (bitmapPrefix, 2796) (step682 bitmapPrefix, 2828) (after683 (step682 bitmapPrefix), 2926) stackBody682_2192 16 bodies683 frames683 (function682_eq bitmapPrefix) (compiled683_eq (step682 bitmapPrefix))
def step681 (bitmapPrefix : AppList (BitVec 64)) := (function681 bitmapPrefix).2.2.1
def programs681 := (681, StackAnalysis.optimized681.2.1, StackAnalysis.optimized681.2.2) :: programs682
def bodies681 := (681, stackBody681_16) :: bodies682
def frames681 := 0 :: frames682
def after681 (bitmapPrefix : AppList (BitVec 64)) := after682 (step681 bitmapPrefix)
theorem compiled681_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs681 (bitmapPrefix, 2796) = (bodies681, frames681, after681 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 681 StackAnalysis.optimized681.2.1 StackAnalysis.optimized681.2.2 programs682 (bitmapPrefix, 2796) (step681 bitmapPrefix, 2796) (after682 (step681 bitmapPrefix), 2926) stackBody681_16 0 bodies682 frames682 (function681_eq bitmapPrefix) (compiled682_eq (step681 bitmapPrefix))
def step680 (bitmapPrefix : AppList (BitVec 64)) := (function680 bitmapPrefix).2.2.1
def programs680 := (680, StackAnalysis.optimized680.2.1, StackAnalysis.optimized680.2.2) :: programs681
def bodies680 := (680, stackBody680_194) :: bodies681
def frames680 := 5 :: frames681
def after680 (bitmapPrefix : AppList (BitVec 64)) := after681 (step680 bitmapPrefix)
theorem compiled680_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs680 (bitmapPrefix, 2793) = (bodies680, frames680, after680 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 680 StackAnalysis.optimized680.2.1 StackAnalysis.optimized680.2.2 programs681 (bitmapPrefix, 2793) (step680 bitmapPrefix, 2796) (after681 (step680 bitmapPrefix), 2926) stackBody680_194 5 bodies681 frames681 (function680_eq bitmapPrefix) (compiled681_eq (step680 bitmapPrefix))
def step679 (bitmapPrefix : AppList (BitVec 64)) := (function679 bitmapPrefix).2.2.1
def programs679 := (679, StackAnalysis.optimized679.2.1, StackAnalysis.optimized679.2.2) :: programs680
def bodies679 := (679, stackBody679_94) :: bodies680
def frames679 := 3 :: frames680
def after679 (bitmapPrefix : AppList (BitVec 64)) := after680 (step679 bitmapPrefix)
theorem compiled679_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs679 (bitmapPrefix, 2792) = (bodies679, frames679, after679 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 679 StackAnalysis.optimized679.2.1 StackAnalysis.optimized679.2.2 programs680 (bitmapPrefix, 2792) (step679 bitmapPrefix, 2793) (after680 (step679 bitmapPrefix), 2926) stackBody679_94 3 bodies680 frames680 (function679_eq bitmapPrefix) (compiled680_eq (step679 bitmapPrefix))
def step678 (bitmapPrefix : AppList (BitVec 64)) := (function678 bitmapPrefix).2.2.1
def programs678 := (678, StackAnalysis.optimized678.2.1, StackAnalysis.optimized678.2.2) :: programs679
def bodies678 := (678, stackBody678_62) :: bodies679
def frames678 := 2 :: frames679
def after678 (bitmapPrefix : AppList (BitVec 64)) := after679 (step678 bitmapPrefix)
theorem compiled678_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs678 (bitmapPrefix, 2791) = (bodies678, frames678, after678 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 678 StackAnalysis.optimized678.2.1 StackAnalysis.optimized678.2.2 programs679 (bitmapPrefix, 2791) (step678 bitmapPrefix, 2792) (after679 (step678 bitmapPrefix), 2926) stackBody678_62 2 bodies679 frames679 (function678_eq bitmapPrefix) (compiled679_eq (step678 bitmapPrefix))
def step677 (bitmapPrefix : AppList (BitVec 64)) := (function677 bitmapPrefix).2.2.1
def programs677 := (677, StackAnalysis.optimized677.2.1, StackAnalysis.optimized677.2.2) :: programs678
def bodies677 := (677, stackBody677_12) :: bodies678
def frames677 := 0 :: frames678
def after677 (bitmapPrefix : AppList (BitVec 64)) := after678 (step677 bitmapPrefix)
theorem compiled677_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs677 (bitmapPrefix, 2791) = (bodies677, frames677, after677 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 677 StackAnalysis.optimized677.2.1 StackAnalysis.optimized677.2.2 programs678 (bitmapPrefix, 2791) (step677 bitmapPrefix, 2791) (after678 (step677 bitmapPrefix), 2926) stackBody677_12 0 bodies678 frames678 (function677_eq bitmapPrefix) (compiled678_eq (step677 bitmapPrefix))
def step676 (bitmapPrefix : AppList (BitVec 64)) := (function676 bitmapPrefix).2.2.1
def programs676 := (676, StackAnalysis.optimized676.2.1, StackAnalysis.optimized676.2.2) :: programs677
def bodies676 := (676, stackBody676_10) :: bodies677
def frames676 := 0 :: frames677
def after676 (bitmapPrefix : AppList (BitVec 64)) := after677 (step676 bitmapPrefix)
theorem compiled676_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs676 (bitmapPrefix, 2791) = (bodies676, frames676, after676 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 676 StackAnalysis.optimized676.2.1 StackAnalysis.optimized676.2.2 programs677 (bitmapPrefix, 2791) (step676 bitmapPrefix, 2791) (after677 (step676 bitmapPrefix), 2926) stackBody676_10 0 bodies677 frames677 (function676_eq bitmapPrefix) (compiled677_eq (step676 bitmapPrefix))
def step675 (bitmapPrefix : AppList (BitVec 64)) := (function675 bitmapPrefix).2.2.1
def programs675 := (675, StackAnalysis.optimized675.2.1, StackAnalysis.optimized675.2.2) :: programs676
def bodies675 := (675, stackBody675_177) :: bodies676
def frames675 := 7 :: frames676
def after675 (bitmapPrefix : AppList (BitVec 64)) := after676 (step675 bitmapPrefix)
theorem compiled675_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs675 (bitmapPrefix, 2790) = (bodies675, frames675, after675 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 675 StackAnalysis.optimized675.2.1 StackAnalysis.optimized675.2.2 programs676 (bitmapPrefix, 2790) (step675 bitmapPrefix, 2791) (after676 (step675 bitmapPrefix), 2926) stackBody675_177 7 bodies676 frames676 (function675_eq bitmapPrefix) (compiled676_eq (step675 bitmapPrefix))
def step674 (bitmapPrefix : AppList (BitVec 64)) := (function674 bitmapPrefix).2.2.1
def programs674 := (674, StackAnalysis.optimized674.2.1, StackAnalysis.optimized674.2.2) :: programs675
def bodies674 := (674, stackBody674_165) :: bodies675
def frames674 := 6 :: frames675
def after674 (bitmapPrefix : AppList (BitVec 64)) := after675 (step674 bitmapPrefix)
theorem compiled674_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs674 (bitmapPrefix, 2789) = (bodies674, frames674, after674 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 674 StackAnalysis.optimized674.2.1 StackAnalysis.optimized674.2.2 programs675 (bitmapPrefix, 2789) (step674 bitmapPrefix, 2790) (after675 (step674 bitmapPrefix), 2926) stackBody674_165 6 bodies675 frames675 (function674_eq bitmapPrefix) (compiled675_eq (step674 bitmapPrefix))
def step673 (bitmapPrefix : AppList (BitVec 64)) := (function673 bitmapPrefix).2.2.1
def programs673 := (673, StackAnalysis.optimized673.2.1, StackAnalysis.optimized673.2.2) :: programs674
def bodies673 := (673, stackBody673_199) :: bodies674
def frames673 := 7 :: frames674
def after673 (bitmapPrefix : AppList (BitVec 64)) := after674 (step673 bitmapPrefix)
theorem compiled673_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs673 (bitmapPrefix, 2788) = (bodies673, frames673, after673 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 673 StackAnalysis.optimized673.2.1 StackAnalysis.optimized673.2.2 programs674 (bitmapPrefix, 2788) (step673 bitmapPrefix, 2789) (after674 (step673 bitmapPrefix), 2926) stackBody673_199 7 bodies674 frames674 (function673_eq bitmapPrefix) (compiled674_eq (step673 bitmapPrefix))
def step672 (bitmapPrefix : AppList (BitVec 64)) := (function672 bitmapPrefix).2.2.1
def programs672 := (672, StackAnalysis.optimized672.2.1, StackAnalysis.optimized672.2.2) :: programs673
def bodies672 := (672, stackBody672_199) :: bodies673
def frames672 := 7 :: frames673
def after672 (bitmapPrefix : AppList (BitVec 64)) := after673 (step672 bitmapPrefix)
theorem compiled672_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs672 (bitmapPrefix, 2787) = (bodies672, frames672, after672 bitmapPrefix, 2926) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 672 StackAnalysis.optimized672.2.1 StackAnalysis.optimized672.2.2 programs673 (bitmapPrefix, 2787) (step672 bitmapPrefix, 2788) (after673 (step672 bitmapPrefix), 2926) stackBody672_199 7 bodies673 frames673 (function672_eq bitmapPrefix) (compiled673_eq (step672 bitmapPrefix))
def programs := programs672
def bodies := bodies672
def frames := frames672
def after := after672
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2926)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2787) = result bitmapPrefix := compiled672_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk672_687
