import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function816
import InitECandidate.Proofs.BackendStages.Function817
import InitECandidate.Proofs.BackendStages.Function818
import InitECandidate.Proofs.BackendStages.Function819
import InitECandidate.Proofs.BackendStages.Function820
import InitECandidate.Proofs.BackendStages.Function821
import InitECandidate.Proofs.BackendStages.Function822
import InitECandidate.Proofs.BackendStages.Function823
import InitECandidate.Proofs.BackendStages.Function824
import InitECandidate.Proofs.BackendStages.Function825
import InitECandidate.Proofs.BackendStages.Function826
import InitECandidate.Proofs.BackendStages.Function827
import InitECandidate.Proofs.BackendStages.Function828
import InitECandidate.Proofs.BackendStages.Function829
import InitECandidate.Proofs.BackendStages.Function830
import InitECandidate.Proofs.BackendStages.Function831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk816_831
def programs832 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies832 : List (Nat × StackLang.HolProg 64) := []
def frames832 : List Nat := []
def after832 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled832_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs832 (bitmapPrefix, 4127) = (bodies832, frames832, after832 bitmapPrefix, 4127) := by rfl
def step831 (bitmapPrefix : AppList (BitVec 64)) := (function831 bitmapPrefix).2.2.1
def programs831 := (831, StackAnalysis.optimized831.2.1, StackAnalysis.optimized831.2.2) :: programs832
def bodies831 := (831, stackBody831_274) :: bodies832
def frames831 := 4 :: frames832
def after831 (bitmapPrefix : AppList (BitVec 64)) := after832 (step831 bitmapPrefix)
theorem compiled831_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs831 (bitmapPrefix, 4123) = (bodies831, frames831, after831 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 831 StackAnalysis.optimized831.2.1 StackAnalysis.optimized831.2.2 programs832 (bitmapPrefix, 4123) (step831 bitmapPrefix, 4127) (after832 (step831 bitmapPrefix), 4127) stackBody831_274 4 bodies832 frames832 (function831_eq bitmapPrefix) (compiled832_eq (step831 bitmapPrefix))
def step830 (bitmapPrefix : AppList (BitVec 64)) := (function830 bitmapPrefix).2.2.1
def programs830 := (830, StackAnalysis.optimized830.2.1, StackAnalysis.optimized830.2.2) :: programs831
def bodies830 := (830, stackBody830_172) :: bodies831
def frames830 := 4 :: frames831
def after830 (bitmapPrefix : AppList (BitVec 64)) := after831 (step830 bitmapPrefix)
theorem compiled830_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs830 (bitmapPrefix, 4121) = (bodies830, frames830, after830 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 830 StackAnalysis.optimized830.2.1 StackAnalysis.optimized830.2.2 programs831 (bitmapPrefix, 4121) (step830 bitmapPrefix, 4123) (after831 (step830 bitmapPrefix), 4127) stackBody830_172 4 bodies831 frames831 (function830_eq bitmapPrefix) (compiled831_eq (step830 bitmapPrefix))
def step829 (bitmapPrefix : AppList (BitVec 64)) := (function829 bitmapPrefix).2.2.1
def programs829 := (829, StackAnalysis.optimized829.2.1, StackAnalysis.optimized829.2.2) :: programs830
def bodies829 := (829, stackBody829_210) :: bodies830
def frames829 := 3 :: frames830
def after829 (bitmapPrefix : AppList (BitVec 64)) := after830 (step829 bitmapPrefix)
theorem compiled829_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs829 (bitmapPrefix, 4120) = (bodies829, frames829, after829 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 829 StackAnalysis.optimized829.2.1 StackAnalysis.optimized829.2.2 programs830 (bitmapPrefix, 4120) (step829 bitmapPrefix, 4121) (after830 (step829 bitmapPrefix), 4127) stackBody829_210 3 bodies830 frames830 (function829_eq bitmapPrefix) (compiled830_eq (step829 bitmapPrefix))
def step828 (bitmapPrefix : AppList (BitVec 64)) := (function828 bitmapPrefix).2.2.1
def programs828 := (828, StackAnalysis.optimized828.2.1, StackAnalysis.optimized828.2.2) :: programs829
def bodies828 := (828, stackBody828_260) :: bodies829
def frames828 := 3 :: frames829
def after828 (bitmapPrefix : AppList (BitVec 64)) := after829 (step828 bitmapPrefix)
theorem compiled828_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs828 (bitmapPrefix, 4117) = (bodies828, frames828, after828 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 828 StackAnalysis.optimized828.2.1 StackAnalysis.optimized828.2.2 programs829 (bitmapPrefix, 4117) (step828 bitmapPrefix, 4120) (after829 (step828 bitmapPrefix), 4127) stackBody828_260 3 bodies829 frames829 (function828_eq bitmapPrefix) (compiled829_eq (step828 bitmapPrefix))
def step827 (bitmapPrefix : AppList (BitVec 64)) := (function827 bitmapPrefix).2.2.1
def programs827 := (827, StackAnalysis.optimized827.2.1, StackAnalysis.optimized827.2.2) :: programs828
def bodies827 := (827, stackBody827_260) :: bodies828
def frames827 := 3 :: frames828
def after827 (bitmapPrefix : AppList (BitVec 64)) := after828 (step827 bitmapPrefix)
theorem compiled827_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs827 (bitmapPrefix, 4114) = (bodies827, frames827, after827 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 827 StackAnalysis.optimized827.2.1 StackAnalysis.optimized827.2.2 programs828 (bitmapPrefix, 4114) (step827 bitmapPrefix, 4117) (after828 (step827 bitmapPrefix), 4127) stackBody827_260 3 bodies828 frames828 (function827_eq bitmapPrefix) (compiled828_eq (step827 bitmapPrefix))
def step826 (bitmapPrefix : AppList (BitVec 64)) := (function826 bitmapPrefix).2.2.1
def programs826 := (826, StackAnalysis.optimized826.2.1, StackAnalysis.optimized826.2.2) :: programs827
def bodies826 := (826, stackBody826_260) :: bodies827
def frames826 := 3 :: frames827
def after826 (bitmapPrefix : AppList (BitVec 64)) := after827 (step826 bitmapPrefix)
theorem compiled826_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs826 (bitmapPrefix, 4111) = (bodies826, frames826, after826 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 826 StackAnalysis.optimized826.2.1 StackAnalysis.optimized826.2.2 programs827 (bitmapPrefix, 4111) (step826 bitmapPrefix, 4114) (after827 (step826 bitmapPrefix), 4127) stackBody826_260 3 bodies827 frames827 (function826_eq bitmapPrefix) (compiled827_eq (step826 bitmapPrefix))
def step825 (bitmapPrefix : AppList (BitVec 64)) := (function825 bitmapPrefix).2.2.1
def programs825 := (825, StackAnalysis.optimized825.2.1, StackAnalysis.optimized825.2.2) :: programs826
def bodies825 := (825, stackBody825_352) :: bodies826
def frames825 := 4 :: frames826
def after825 (bitmapPrefix : AppList (BitVec 64)) := after826 (step825 bitmapPrefix)
theorem compiled825_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs825 (bitmapPrefix, 4107) = (bodies825, frames825, after825 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 825 StackAnalysis.optimized825.2.1 StackAnalysis.optimized825.2.2 programs826 (bitmapPrefix, 4107) (step825 bitmapPrefix, 4111) (after826 (step825 bitmapPrefix), 4127) stackBody825_352 4 bodies826 frames826 (function825_eq bitmapPrefix) (compiled826_eq (step825 bitmapPrefix))
def step824 (bitmapPrefix : AppList (BitVec 64)) := (function824 bitmapPrefix).2.2.1
def programs824 := (824, StackAnalysis.optimized824.2.1, StackAnalysis.optimized824.2.2) :: programs825
def bodies824 := (824, stackBody824_454) :: bodies825
def frames824 := 4 :: frames825
def after824 (bitmapPrefix : AppList (BitVec 64)) := after825 (step824 bitmapPrefix)
theorem compiled824_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs824 (bitmapPrefix, 4101) = (bodies824, frames824, after824 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 824 StackAnalysis.optimized824.2.1 StackAnalysis.optimized824.2.2 programs825 (bitmapPrefix, 4101) (step824 bitmapPrefix, 4107) (after825 (step824 bitmapPrefix), 4127) stackBody824_454 4 bodies825 frames825 (function824_eq bitmapPrefix) (compiled825_eq (step824 bitmapPrefix))
def step823 (bitmapPrefix : AppList (BitVec 64)) := (function823 bitmapPrefix).2.2.1
def programs823 := (823, StackAnalysis.optimized823.2.1, StackAnalysis.optimized823.2.2) :: programs824
def bodies823 := (823, stackBody823_260) :: bodies824
def frames823 := 3 :: frames824
def after823 (bitmapPrefix : AppList (BitVec 64)) := after824 (step823 bitmapPrefix)
theorem compiled823_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs823 (bitmapPrefix, 4098) = (bodies823, frames823, after823 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 823 StackAnalysis.optimized823.2.1 StackAnalysis.optimized823.2.2 programs824 (bitmapPrefix, 4098) (step823 bitmapPrefix, 4101) (after824 (step823 bitmapPrefix), 4127) stackBody823_260 3 bodies824 frames824 (function823_eq bitmapPrefix) (compiled824_eq (step823 bitmapPrefix))
def step822 (bitmapPrefix : AppList (BitVec 64)) := (function822 bitmapPrefix).2.2.1
def programs822 := (822, StackAnalysis.optimized822.2.1, StackAnalysis.optimized822.2.2) :: programs823
def bodies822 := (822, stackBody822_454) :: bodies823
def frames822 := 4 :: frames823
def after822 (bitmapPrefix : AppList (BitVec 64)) := after823 (step822 bitmapPrefix)
theorem compiled822_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs822 (bitmapPrefix, 4092) = (bodies822, frames822, after822 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 822 StackAnalysis.optimized822.2.1 StackAnalysis.optimized822.2.2 programs823 (bitmapPrefix, 4092) (step822 bitmapPrefix, 4098) (after823 (step822 bitmapPrefix), 4127) stackBody822_454 4 bodies823 frames823 (function822_eq bitmapPrefix) (compiled823_eq (step822 bitmapPrefix))
def step821 (bitmapPrefix : AppList (BitVec 64)) := (function821 bitmapPrefix).2.2.1
def programs821 := (821, StackAnalysis.optimized821.2.1, StackAnalysis.optimized821.2.2) :: programs822
def bodies821 := (821, stackBody821_260) :: bodies822
def frames821 := 3 :: frames822
def after821 (bitmapPrefix : AppList (BitVec 64)) := after822 (step821 bitmapPrefix)
theorem compiled821_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs821 (bitmapPrefix, 4089) = (bodies821, frames821, after821 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 821 StackAnalysis.optimized821.2.1 StackAnalysis.optimized821.2.2 programs822 (bitmapPrefix, 4089) (step821 bitmapPrefix, 4092) (after822 (step821 bitmapPrefix), 4127) stackBody821_260 3 bodies822 frames822 (function821_eq bitmapPrefix) (compiled822_eq (step821 bitmapPrefix))
def step820 (bitmapPrefix : AppList (BitVec 64)) := (function820 bitmapPrefix).2.2.1
def programs820 := (820, StackAnalysis.optimized820.2.1, StackAnalysis.optimized820.2.2) :: programs821
def bodies820 := (820, stackBody820_44) :: bodies821
def frames820 := 0 :: frames821
def after820 (bitmapPrefix : AppList (BitVec 64)) := after821 (step820 bitmapPrefix)
theorem compiled820_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs820 (bitmapPrefix, 4089) = (bodies820, frames820, after820 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 820 StackAnalysis.optimized820.2.1 StackAnalysis.optimized820.2.2 programs821 (bitmapPrefix, 4089) (step820 bitmapPrefix, 4089) (after821 (step820 bitmapPrefix), 4127) stackBody820_44 0 bodies821 frames821 (function820_eq bitmapPrefix) (compiled821_eq (step820 bitmapPrefix))
def step819 (bitmapPrefix : AppList (BitVec 64)) := (function819 bitmapPrefix).2.2.1
def programs819 := (819, StackAnalysis.optimized819.2.1, StackAnalysis.optimized819.2.2) :: programs820
def bodies819 := (819, stackBody819_42) :: bodies820
def frames819 := 0 :: frames820
def after819 (bitmapPrefix : AppList (BitVec 64)) := after820 (step819 bitmapPrefix)
theorem compiled819_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs819 (bitmapPrefix, 4089) = (bodies819, frames819, after819 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 819 StackAnalysis.optimized819.2.1 StackAnalysis.optimized819.2.2 programs820 (bitmapPrefix, 4089) (step819 bitmapPrefix, 4089) (after820 (step819 bitmapPrefix), 4127) stackBody819_42 0 bodies820 frames820 (function819_eq bitmapPrefix) (compiled820_eq (step819 bitmapPrefix))
def step818 (bitmapPrefix : AppList (BitVec 64)) := (function818 bitmapPrefix).2.2.1
def programs818 := (818, StackAnalysis.optimized818.2.1, StackAnalysis.optimized818.2.2) :: programs819
def bodies818 := (818, stackBody818_3218) :: bodies819
def frames818 := 2 :: frames819
def after818 (bitmapPrefix : AppList (BitVec 64)) := after819 (step818 bitmapPrefix)
theorem compiled818_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs818 (bitmapPrefix, 4087) = (bodies818, frames818, after818 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 818 StackAnalysis.optimized818.2.1 StackAnalysis.optimized818.2.2 programs819 (bitmapPrefix, 4087) (step818 bitmapPrefix, 4089) (after819 (step818 bitmapPrefix), 4127) stackBody818_3218 2 bodies819 frames819 (function818_eq bitmapPrefix) (compiled819_eq (step818 bitmapPrefix))
def step817 (bitmapPrefix : AppList (BitVec 64)) := (function817 bitmapPrefix).2.2.1
def programs817 := (817, StackAnalysis.optimized817.2.1, StackAnalysis.optimized817.2.2) :: programs818
def bodies817 := (817, stackBody817_1436) :: bodies818
def frames817 := 15 :: frames818
def after817 (bitmapPrefix : AppList (BitVec 64)) := after818 (step817 bitmapPrefix)
theorem compiled817_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs817 (bitmapPrefix, 4067) = (bodies817, frames817, after817 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 817 StackAnalysis.optimized817.2.1 StackAnalysis.optimized817.2.2 programs818 (bitmapPrefix, 4067) (step817 bitmapPrefix, 4087) (after818 (step817 bitmapPrefix), 4127) stackBody817_1436 15 bodies818 frames818 (function817_eq bitmapPrefix) (compiled818_eq (step817 bitmapPrefix))
def step816 (bitmapPrefix : AppList (BitVec 64)) := (function816 bitmapPrefix).2.2.1
def programs816 := (816, StackAnalysis.optimized816.2.1, StackAnalysis.optimized816.2.2) :: programs817
def bodies816 := (816, stackBody816_572) :: bodies817
def frames816 := 7 :: frames817
def after816 (bitmapPrefix : AppList (BitVec 64)) := after817 (step816 bitmapPrefix)
theorem compiled816_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs816 (bitmapPrefix, 4058) = (bodies816, frames816, after816 bitmapPrefix, 4127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 816 StackAnalysis.optimized816.2.1 StackAnalysis.optimized816.2.2 programs817 (bitmapPrefix, 4058) (step816 bitmapPrefix, 4067) (after817 (step816 bitmapPrefix), 4127) stackBody816_572 7 bodies817 frames817 (function816_eq bitmapPrefix) (compiled817_eq (step816 bitmapPrefix))
def programs := programs816
def bodies := bodies816
def frames := frames816
def after := after816
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 4127)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 4058) = result bitmapPrefix := compiled816_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk816_831
