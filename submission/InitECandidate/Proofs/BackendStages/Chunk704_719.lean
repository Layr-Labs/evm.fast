import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function704
import InitECandidate.Proofs.BackendStages.Function705
import InitECandidate.Proofs.BackendStages.Function706
import InitECandidate.Proofs.BackendStages.Function707
import InitECandidate.Proofs.BackendStages.Function708
import InitECandidate.Proofs.BackendStages.Function709
import InitECandidate.Proofs.BackendStages.Function710
import InitECandidate.Proofs.BackendStages.Function711
import InitECandidate.Proofs.BackendStages.Function712
import InitECandidate.Proofs.BackendStages.Function713
import InitECandidate.Proofs.BackendStages.Function714
import InitECandidate.Proofs.BackendStages.Function715
import InitECandidate.Proofs.BackendStages.Function716
import InitECandidate.Proofs.BackendStages.Function717
import InitECandidate.Proofs.BackendStages.Function718
import InitECandidate.Proofs.BackendStages.Function719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk704_719
def programs720 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies720 : List (Nat × StackLang.HolProg 64) := []
def frames720 : List Nat := []
def after720 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled720_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs720 (bitmapPrefix, 3231) = (bodies720, frames720, after720 bitmapPrefix, 3231) := by rfl
def step719 (bitmapPrefix : AppList (BitVec 64)) := (function719 bitmapPrefix).2.2.1
def programs719 := (719, StackAnalysis.optimized719.2.1, StackAnalysis.optimized719.2.2) :: programs720
def bodies719 := (719, stackBody719_152) :: bodies720
def frames719 := 2 :: frames720
def after719 (bitmapPrefix : AppList (BitVec 64)) := after720 (step719 bitmapPrefix)
theorem compiled719_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs719 (bitmapPrefix, 3230) = (bodies719, frames719, after719 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 719 StackAnalysis.optimized719.2.1 StackAnalysis.optimized719.2.2 programs720 (bitmapPrefix, 3230) (step719 bitmapPrefix, 3231) (after720 (step719 bitmapPrefix), 3231) stackBody719_152 2 bodies720 frames720 (function719_eq bitmapPrefix) (compiled720_eq (step719 bitmapPrefix))
def step718 (bitmapPrefix : AppList (BitVec 64)) := (function718 bitmapPrefix).2.2.1
def programs718 := (718, StackAnalysis.optimized718.2.1, StackAnalysis.optimized718.2.2) :: programs719
def bodies718 := (718, stackBody718_58) :: bodies719
def frames718 := 0 :: frames719
def after718 (bitmapPrefix : AppList (BitVec 64)) := after719 (step718 bitmapPrefix)
theorem compiled718_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs718 (bitmapPrefix, 3230) = (bodies718, frames718, after718 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 718 StackAnalysis.optimized718.2.1 StackAnalysis.optimized718.2.2 programs719 (bitmapPrefix, 3230) (step718 bitmapPrefix, 3230) (after719 (step718 bitmapPrefix), 3231) stackBody718_58 0 bodies719 frames719 (function718_eq bitmapPrefix) (compiled719_eq (step718 bitmapPrefix))
def step717 (bitmapPrefix : AppList (BitVec 64)) := (function717 bitmapPrefix).2.2.1
def programs717 := (717, StackAnalysis.optimized717.2.1, StackAnalysis.optimized717.2.2) :: programs718
def bodies717 := (717, stackBody717_20) :: bodies718
def frames717 := 0 :: frames718
def after717 (bitmapPrefix : AppList (BitVec 64)) := after718 (step717 bitmapPrefix)
theorem compiled717_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs717 (bitmapPrefix, 3230) = (bodies717, frames717, after717 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 717 StackAnalysis.optimized717.2.1 StackAnalysis.optimized717.2.2 programs718 (bitmapPrefix, 3230) (step717 bitmapPrefix, 3230) (after718 (step717 bitmapPrefix), 3231) stackBody717_20 0 bodies718 frames718 (function717_eq bitmapPrefix) (compiled718_eq (step717 bitmapPrefix))
def step716 (bitmapPrefix : AppList (BitVec 64)) := (function716 bitmapPrefix).2.2.1
def programs716 := (716, StackAnalysis.optimized716.2.1, StackAnalysis.optimized716.2.2) :: programs717
def bodies716 := (716, stackBody716_20) :: bodies717
def frames716 := 0 :: frames717
def after716 (bitmapPrefix : AppList (BitVec 64)) := after717 (step716 bitmapPrefix)
theorem compiled716_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs716 (bitmapPrefix, 3230) = (bodies716, frames716, after716 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 716 StackAnalysis.optimized716.2.1 StackAnalysis.optimized716.2.2 programs717 (bitmapPrefix, 3230) (step716 bitmapPrefix, 3230) (after717 (step716 bitmapPrefix), 3231) stackBody716_20 0 bodies717 frames717 (function716_eq bitmapPrefix) (compiled717_eq (step716 bitmapPrefix))
def step715 (bitmapPrefix : AppList (BitVec 64)) := (function715 bitmapPrefix).2.2.1
def programs715 := (715, StackAnalysis.optimized715.2.1, StackAnalysis.optimized715.2.2) :: programs716
def bodies715 := (715, stackBody715_16) :: bodies716
def frames715 := 0 :: frames716
def after715 (bitmapPrefix : AppList (BitVec 64)) := after716 (step715 bitmapPrefix)
theorem compiled715_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs715 (bitmapPrefix, 3230) = (bodies715, frames715, after715 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 715 StackAnalysis.optimized715.2.1 StackAnalysis.optimized715.2.2 programs716 (bitmapPrefix, 3230) (step715 bitmapPrefix, 3230) (after716 (step715 bitmapPrefix), 3231) stackBody715_16 0 bodies716 frames716 (function715_eq bitmapPrefix) (compiled716_eq (step715 bitmapPrefix))
def step714 (bitmapPrefix : AppList (BitVec 64)) := (function714 bitmapPrefix).2.2.1
def programs714 := (714, StackAnalysis.optimized714.2.1, StackAnalysis.optimized714.2.2) :: programs715
def bodies714 := (714, stackBody714_7086) :: bodies715
def frames714 := 22 :: frames715
def after714 (bitmapPrefix : AppList (BitVec 64)) := after715 (step714 bitmapPrefix)
theorem compiled714_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs714 (bitmapPrefix, 3157) = (bodies714, frames714, after714 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 714 StackAnalysis.optimized714.2.1 StackAnalysis.optimized714.2.2 programs715 (bitmapPrefix, 3157) (step714 bitmapPrefix, 3230) (after715 (step714 bitmapPrefix), 3231) stackBody714_7086 22 bodies715 frames715 (function714_eq bitmapPrefix) (compiled715_eq (step714 bitmapPrefix))
def step713 (bitmapPrefix : AppList (BitVec 64)) := (function713 bitmapPrefix).2.2.1
def programs713 := (713, StackAnalysis.optimized713.2.1, StackAnalysis.optimized713.2.2) :: programs714
def bodies713 := (713, stackBody713_16) :: bodies714
def frames713 := 0 :: frames714
def after713 (bitmapPrefix : AppList (BitVec 64)) := after714 (step713 bitmapPrefix)
theorem compiled713_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs713 (bitmapPrefix, 3157) = (bodies713, frames713, after713 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 713 StackAnalysis.optimized713.2.1 StackAnalysis.optimized713.2.2 programs714 (bitmapPrefix, 3157) (step713 bitmapPrefix, 3157) (after714 (step713 bitmapPrefix), 3231) stackBody713_16 0 bodies714 frames714 (function713_eq bitmapPrefix) (compiled714_eq (step713 bitmapPrefix))
def step712 (bitmapPrefix : AppList (BitVec 64)) := (function712 bitmapPrefix).2.2.1
def programs712 := (712, StackAnalysis.optimized712.2.1, StackAnalysis.optimized712.2.2) :: programs713
def bodies712 := (712, stackBody712_186) :: bodies713
def frames712 := 8 :: frames713
def after712 (bitmapPrefix : AppList (BitVec 64)) := after713 (step712 bitmapPrefix)
theorem compiled712_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs712 (bitmapPrefix, 3155) = (bodies712, frames712, after712 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 712 StackAnalysis.optimized712.2.1 StackAnalysis.optimized712.2.2 programs713 (bitmapPrefix, 3155) (step712 bitmapPrefix, 3157) (after713 (step712 bitmapPrefix), 3231) stackBody712_186 8 bodies713 frames713 (function712_eq bitmapPrefix) (compiled713_eq (step712 bitmapPrefix))
def step711 (bitmapPrefix : AppList (BitVec 64)) := (function711 bitmapPrefix).2.2.1
def programs711 := (711, StackAnalysis.optimized711.2.1, StackAnalysis.optimized711.2.2) :: programs712
def bodies711 := (711, stackBody711_158) :: bodies712
def frames711 := 2 :: frames712
def after711 (bitmapPrefix : AppList (BitVec 64)) := after712 (step711 bitmapPrefix)
theorem compiled711_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs711 (bitmapPrefix, 3153) = (bodies711, frames711, after711 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 711 StackAnalysis.optimized711.2.1 StackAnalysis.optimized711.2.2 programs712 (bitmapPrefix, 3153) (step711 bitmapPrefix, 3155) (after712 (step711 bitmapPrefix), 3231) stackBody711_158 2 bodies712 frames712 (function711_eq bitmapPrefix) (compiled712_eq (step711 bitmapPrefix))
def step710 (bitmapPrefix : AppList (BitVec 64)) := (function710 bitmapPrefix).2.2.1
def programs710 := (710, StackAnalysis.optimized710.2.1, StackAnalysis.optimized710.2.2) :: programs711
def bodies710 := (710, stackBody710_180) :: bodies711
def frames710 := 8 :: frames711
def after710 (bitmapPrefix : AppList (BitVec 64)) := after711 (step710 bitmapPrefix)
theorem compiled710_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs710 (bitmapPrefix, 3151) = (bodies710, frames710, after710 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 710 StackAnalysis.optimized710.2.1 StackAnalysis.optimized710.2.2 programs711 (bitmapPrefix, 3151) (step710 bitmapPrefix, 3153) (after711 (step710 bitmapPrefix), 3231) stackBody710_180 8 bodies711 frames711 (function710_eq bitmapPrefix) (compiled711_eq (step710 bitmapPrefix))
def step709 (bitmapPrefix : AppList (BitVec 64)) := (function709 bitmapPrefix).2.2.1
def programs709 := (709, StackAnalysis.optimized709.2.1, StackAnalysis.optimized709.2.2) :: programs710
def bodies709 := (709, stackBody709_54) :: bodies710
def frames709 := 0 :: frames710
def after709 (bitmapPrefix : AppList (BitVec 64)) := after710 (step709 bitmapPrefix)
theorem compiled709_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs709 (bitmapPrefix, 3151) = (bodies709, frames709, after709 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 709 StackAnalysis.optimized709.2.1 StackAnalysis.optimized709.2.2 programs710 (bitmapPrefix, 3151) (step709 bitmapPrefix, 3151) (after710 (step709 bitmapPrefix), 3231) stackBody709_54 0 bodies710 frames710 (function709_eq bitmapPrefix) (compiled710_eq (step709 bitmapPrefix))
def step708 (bitmapPrefix : AppList (BitVec 64)) := (function708 bitmapPrefix).2.2.1
def programs708 := (708, StackAnalysis.optimized708.2.1, StackAnalysis.optimized708.2.2) :: programs709
def bodies708 := (708, stackBody708_32) :: bodies709
def frames708 := 0 :: frames709
def after708 (bitmapPrefix : AppList (BitVec 64)) := after709 (step708 bitmapPrefix)
theorem compiled708_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs708 (bitmapPrefix, 3151) = (bodies708, frames708, after708 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 708 StackAnalysis.optimized708.2.1 StackAnalysis.optimized708.2.2 programs709 (bitmapPrefix, 3151) (step708 bitmapPrefix, 3151) (after709 (step708 bitmapPrefix), 3231) stackBody708_32 0 bodies709 frames709 (function708_eq bitmapPrefix) (compiled709_eq (step708 bitmapPrefix))
def step707 (bitmapPrefix : AppList (BitVec 64)) := (function707 bitmapPrefix).2.2.1
def programs707 := (707, StackAnalysis.optimized707.2.1, StackAnalysis.optimized707.2.2) :: programs708
def bodies707 := (707, stackBody707_182) :: bodies708
def frames707 := 0 :: frames708
def after707 (bitmapPrefix : AppList (BitVec 64)) := after708 (step707 bitmapPrefix)
theorem compiled707_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs707 (bitmapPrefix, 3151) = (bodies707, frames707, after707 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 707 StackAnalysis.optimized707.2.1 StackAnalysis.optimized707.2.2 programs708 (bitmapPrefix, 3151) (step707 bitmapPrefix, 3151) (after708 (step707 bitmapPrefix), 3231) stackBody707_182 0 bodies708 frames708 (function707_eq bitmapPrefix) (compiled708_eq (step707 bitmapPrefix))
def step706 (bitmapPrefix : AppList (BitVec 64)) := (function706 bitmapPrefix).2.2.1
def programs706 := (706, StackAnalysis.optimized706.2.1, StackAnalysis.optimized706.2.2) :: programs707
def bodies706 := (706, stackBody706_56) :: bodies707
def frames706 := 0 :: frames707
def after706 (bitmapPrefix : AppList (BitVec 64)) := after707 (step706 bitmapPrefix)
theorem compiled706_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs706 (bitmapPrefix, 3151) = (bodies706, frames706, after706 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 706 StackAnalysis.optimized706.2.1 StackAnalysis.optimized706.2.2 programs707 (bitmapPrefix, 3151) (step706 bitmapPrefix, 3151) (after707 (step706 bitmapPrefix), 3231) stackBody706_56 0 bodies707 frames707 (function706_eq bitmapPrefix) (compiled707_eq (step706 bitmapPrefix))
def step705 (bitmapPrefix : AppList (BitVec 64)) := (function705 bitmapPrefix).2.2.1
def programs705 := (705, StackAnalysis.optimized705.2.1, StackAnalysis.optimized705.2.2) :: programs706
def bodies705 := (705, stackBody705_42) :: bodies706
def frames705 := 0 :: frames706
def after705 (bitmapPrefix : AppList (BitVec 64)) := after706 (step705 bitmapPrefix)
theorem compiled705_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs705 (bitmapPrefix, 3151) = (bodies705, frames705, after705 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 705 StackAnalysis.optimized705.2.1 StackAnalysis.optimized705.2.2 programs706 (bitmapPrefix, 3151) (step705 bitmapPrefix, 3151) (after706 (step705 bitmapPrefix), 3231) stackBody705_42 0 bodies706 frames706 (function705_eq bitmapPrefix) (compiled706_eq (step705 bitmapPrefix))
def step704 (bitmapPrefix : AppList (BitVec 64)) := (function704 bitmapPrefix).2.2.1
def programs704 := (704, StackAnalysis.optimized704.2.1, StackAnalysis.optimized704.2.2) :: programs705
def bodies704 := (704, stackBody704_12074) :: bodies705
def frames704 := 2 :: frames705
def after704 (bitmapPrefix : AppList (BitVec 64)) := after705 (step704 bitmapPrefix)
theorem compiled704_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs704 (bitmapPrefix, 3150) = (bodies704, frames704, after704 bitmapPrefix, 3231) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 704 StackAnalysis.optimized704.2.1 StackAnalysis.optimized704.2.2 programs705 (bitmapPrefix, 3150) (step704 bitmapPrefix, 3151) (after705 (step704 bitmapPrefix), 3231) stackBody704_12074 2 bodies705 frames705 (function704_eq bitmapPrefix) (compiled705_eq (step704 bitmapPrefix))
def programs := programs704
def bodies := bodies704
def frames := frames704
def after := after704
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3231)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3150) = result bitmapPrefix := compiled704_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk704_719
