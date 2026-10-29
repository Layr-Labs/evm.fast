import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function736
import InitECandidate.Proofs.BackendStages.Function737
import InitECandidate.Proofs.BackendStages.Function738
import InitECandidate.Proofs.BackendStages.Function739
import InitECandidate.Proofs.BackendStages.Function740
import InitECandidate.Proofs.BackendStages.Function741
import InitECandidate.Proofs.BackendStages.Function742
import InitECandidate.Proofs.BackendStages.Function743
import InitECandidate.Proofs.BackendStages.Function744
import InitECandidate.Proofs.BackendStages.Function745
import InitECandidate.Proofs.BackendStages.Function746
import InitECandidate.Proofs.BackendStages.Function747
import InitECandidate.Proofs.BackendStages.Function748
import InitECandidate.Proofs.BackendStages.Function749
import InitECandidate.Proofs.BackendStages.Function750
import InitECandidate.Proofs.BackendStages.Function751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk736_751
def programs752 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies752 : List (Nat × StackLang.HolProg 64) := []
def frames752 : List Nat := []
def after752 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled752_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs752 (bitmapPrefix, 3319) = (bodies752, frames752, after752 bitmapPrefix, 3319) := by rfl
def step751 (bitmapPrefix : AppList (BitVec 64)) := (function751 bitmapPrefix).2.2.1
def programs751 := (751, StackAnalysis.optimized751.2.1, StackAnalysis.optimized751.2.2) :: programs752
def bodies751 := (751, stackBody751_182) :: bodies752
def frames751 := 4 :: frames752
def after751 (bitmapPrefix : AppList (BitVec 64)) := after752 (step751 bitmapPrefix)
theorem compiled751_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs751 (bitmapPrefix, 3316) = (bodies751, frames751, after751 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 751 StackAnalysis.optimized751.2.1 StackAnalysis.optimized751.2.2 programs752 (bitmapPrefix, 3316) (step751 bitmapPrefix, 3319) (after752 (step751 bitmapPrefix), 3319) stackBody751_182 4 bodies752 frames752 (function751_eq bitmapPrefix) (compiled752_eq (step751 bitmapPrefix))
def step750 (bitmapPrefix : AppList (BitVec 64)) := (function750 bitmapPrefix).2.2.1
def programs750 := (750, StackAnalysis.optimized750.2.1, StackAnalysis.optimized750.2.2) :: programs751
def bodies750 := (750, stackBody750_202) :: bodies751
def frames750 := 5 :: frames751
def after750 (bitmapPrefix : AppList (BitVec 64)) := after751 (step750 bitmapPrefix)
theorem compiled750_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs750 (bitmapPrefix, 3313) = (bodies750, frames750, after750 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 750 StackAnalysis.optimized750.2.1 StackAnalysis.optimized750.2.2 programs751 (bitmapPrefix, 3313) (step750 bitmapPrefix, 3316) (after751 (step750 bitmapPrefix), 3319) stackBody750_202 5 bodies751 frames751 (function750_eq bitmapPrefix) (compiled751_eq (step750 bitmapPrefix))
def step749 (bitmapPrefix : AppList (BitVec 64)) := (function749 bitmapPrefix).2.2.1
def programs749 := (749, StackAnalysis.optimized749.2.1, StackAnalysis.optimized749.2.2) :: programs750
def bodies749 := (749, stackBody749_202) :: bodies750
def frames749 := 5 :: frames750
def after749 (bitmapPrefix : AppList (BitVec 64)) := after750 (step749 bitmapPrefix)
theorem compiled749_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs749 (bitmapPrefix, 3310) = (bodies749, frames749, after749 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 749 StackAnalysis.optimized749.2.1 StackAnalysis.optimized749.2.2 programs750 (bitmapPrefix, 3310) (step749 bitmapPrefix, 3313) (after750 (step749 bitmapPrefix), 3319) stackBody749_202 5 bodies750 frames750 (function749_eq bitmapPrefix) (compiled750_eq (step749 bitmapPrefix))
def step748 (bitmapPrefix : AppList (BitVec 64)) := (function748 bitmapPrefix).2.2.1
def programs748 := (748, StackAnalysis.optimized748.2.1, StackAnalysis.optimized748.2.2) :: programs749
def bodies748 := (748, stackBody748_162) :: bodies749
def frames748 := 3 :: frames749
def after748 (bitmapPrefix : AppList (BitVec 64)) := after749 (step748 bitmapPrefix)
theorem compiled748_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs748 (bitmapPrefix, 3307) = (bodies748, frames748, after748 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 748 StackAnalysis.optimized748.2.1 StackAnalysis.optimized748.2.2 programs749 (bitmapPrefix, 3307) (step748 bitmapPrefix, 3310) (after749 (step748 bitmapPrefix), 3319) stackBody748_162 3 bodies749 frames749 (function748_eq bitmapPrefix) (compiled749_eq (step748 bitmapPrefix))
def step747 (bitmapPrefix : AppList (BitVec 64)) := (function747 bitmapPrefix).2.2.1
def programs747 := (747, StackAnalysis.optimized747.2.1, StackAnalysis.optimized747.2.2) :: programs748
def bodies747 := (747, stackBody747_60) :: bodies748
def frames747 := 2 :: frames748
def after747 (bitmapPrefix : AppList (BitVec 64)) := after748 (step747 bitmapPrefix)
theorem compiled747_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs747 (bitmapPrefix, 3306) = (bodies747, frames747, after747 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 747 StackAnalysis.optimized747.2.1 StackAnalysis.optimized747.2.2 programs748 (bitmapPrefix, 3306) (step747 bitmapPrefix, 3307) (after748 (step747 bitmapPrefix), 3319) stackBody747_60 2 bodies748 frames748 (function747_eq bitmapPrefix) (compiled748_eq (step747 bitmapPrefix))
def step746 (bitmapPrefix : AppList (BitVec 64)) := (function746 bitmapPrefix).2.2.1
def programs746 := (746, StackAnalysis.optimized746.2.1, StackAnalysis.optimized746.2.2) :: programs747
def bodies746 := (746, stackBody746_60) :: bodies747
def frames746 := 2 :: frames747
def after746 (bitmapPrefix : AppList (BitVec 64)) := after747 (step746 bitmapPrefix)
theorem compiled746_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs746 (bitmapPrefix, 3305) = (bodies746, frames746, after746 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 746 StackAnalysis.optimized746.2.1 StackAnalysis.optimized746.2.2 programs747 (bitmapPrefix, 3305) (step746 bitmapPrefix, 3306) (after747 (step746 bitmapPrefix), 3319) stackBody746_60 2 bodies747 frames747 (function746_eq bitmapPrefix) (compiled747_eq (step746 bitmapPrefix))
def step745 (bitmapPrefix : AppList (BitVec 64)) := (function745 bitmapPrefix).2.2.1
def programs745 := (745, StackAnalysis.optimized745.2.1, StackAnalysis.optimized745.2.2) :: programs746
def bodies745 := (745, stackBody745_248) :: bodies746
def frames745 := 9 :: frames746
def after745 (bitmapPrefix : AppList (BitVec 64)) := after746 (step745 bitmapPrefix)
theorem compiled745_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs745 (bitmapPrefix, 3303) = (bodies745, frames745, after745 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 745 StackAnalysis.optimized745.2.1 StackAnalysis.optimized745.2.2 programs746 (bitmapPrefix, 3303) (step745 bitmapPrefix, 3305) (after746 (step745 bitmapPrefix), 3319) stackBody745_248 9 bodies746 frames746 (function745_eq bitmapPrefix) (compiled746_eq (step745 bitmapPrefix))
def step744 (bitmapPrefix : AppList (BitVec 64)) := (function744 bitmapPrefix).2.2.1
def programs744 := (744, StackAnalysis.optimized744.2.1, StackAnalysis.optimized744.2.2) :: programs745
def bodies744 := (744, stackBody744_753) :: bodies745
def frames744 := 11 :: frames745
def after744 (bitmapPrefix : AppList (BitVec 64)) := after745 (step744 bitmapPrefix)
theorem compiled744_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs744 (bitmapPrefix, 3294) = (bodies744, frames744, after744 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 744 StackAnalysis.optimized744.2.1 StackAnalysis.optimized744.2.2 programs745 (bitmapPrefix, 3294) (step744 bitmapPrefix, 3303) (after745 (step744 bitmapPrefix), 3319) stackBody744_753 11 bodies745 frames745 (function744_eq bitmapPrefix) (compiled745_eq (step744 bitmapPrefix))
def step743 (bitmapPrefix : AppList (BitVec 64)) := (function743 bitmapPrefix).2.2.1
def programs743 := (743, StackAnalysis.optimized743.2.1, StackAnalysis.optimized743.2.2) :: programs744
def bodies743 := (743, stackBody743_844) :: bodies744
def frames743 := 21 :: frames744
def after743 (bitmapPrefix : AppList (BitVec 64)) := after744 (step743 bitmapPrefix)
theorem compiled743_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs743 (bitmapPrefix, 3287) = (bodies743, frames743, after743 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 743 StackAnalysis.optimized743.2.1 StackAnalysis.optimized743.2.2 programs744 (bitmapPrefix, 3287) (step743 bitmapPrefix, 3294) (after744 (step743 bitmapPrefix), 3319) stackBody743_844 21 bodies744 frames744 (function743_eq bitmapPrefix) (compiled744_eq (step743 bitmapPrefix))
def step742 (bitmapPrefix : AppList (BitVec 64)) := (function742 bitmapPrefix).2.2.1
def programs742 := (742, StackAnalysis.optimized742.2.1, StackAnalysis.optimized742.2.2) :: programs743
def bodies742 := (742, stackBody742_348) :: bodies743
def frames742 := 15 :: frames743
def after742 (bitmapPrefix : AppList (BitVec 64)) := after743 (step742 bitmapPrefix)
theorem compiled742_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs742 (bitmapPrefix, 3285) = (bodies742, frames742, after742 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 742 StackAnalysis.optimized742.2.1 StackAnalysis.optimized742.2.2 programs743 (bitmapPrefix, 3285) (step742 bitmapPrefix, 3287) (after743 (step742 bitmapPrefix), 3319) stackBody742_348 15 bodies743 frames743 (function742_eq bitmapPrefix) (compiled743_eq (step742 bitmapPrefix))
def step741 (bitmapPrefix : AppList (BitVec 64)) := (function741 bitmapPrefix).2.2.1
def programs741 := (741, StackAnalysis.optimized741.2.1, StackAnalysis.optimized741.2.2) :: programs742
def bodies741 := (741, stackBody741_336) :: bodies742
def frames741 := 15 :: frames742
def after741 (bitmapPrefix : AppList (BitVec 64)) := after742 (step741 bitmapPrefix)
theorem compiled741_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs741 (bitmapPrefix, 3283) = (bodies741, frames741, after741 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 741 StackAnalysis.optimized741.2.1 StackAnalysis.optimized741.2.2 programs742 (bitmapPrefix, 3283) (step741 bitmapPrefix, 3285) (after742 (step741 bitmapPrefix), 3319) stackBody741_336 15 bodies742 frames742 (function741_eq bitmapPrefix) (compiled742_eq (step741 bitmapPrefix))
def step740 (bitmapPrefix : AppList (BitVec 64)) := (function740 bitmapPrefix).2.2.1
def programs740 := (740, StackAnalysis.optimized740.2.1, StackAnalysis.optimized740.2.2) :: programs741
def bodies740 := (740, stackBody740_718) :: bodies741
def frames740 := 21 :: frames741
def after740 (bitmapPrefix : AppList (BitVec 64)) := after741 (step740 bitmapPrefix)
theorem compiled740_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs740 (bitmapPrefix, 3278) = (bodies740, frames740, after740 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 740 StackAnalysis.optimized740.2.1 StackAnalysis.optimized740.2.2 programs741 (bitmapPrefix, 3278) (step740 bitmapPrefix, 3283) (after741 (step740 bitmapPrefix), 3319) stackBody740_718 21 bodies741 frames741 (function740_eq bitmapPrefix) (compiled741_eq (step740 bitmapPrefix))
def step739 (bitmapPrefix : AppList (BitVec 64)) := (function739 bitmapPrefix).2.2.1
def programs739 := (739, StackAnalysis.optimized739.2.1, StackAnalysis.optimized739.2.2) :: programs740
def bodies739 := (739, stackBody739_1508) :: bodies740
def frames739 := 33 :: frames740
def after739 (bitmapPrefix : AppList (BitVec 64)) := after740 (step739 bitmapPrefix)
theorem compiled739_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs739 (bitmapPrefix, 3270) = (bodies739, frames739, after739 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 739 StackAnalysis.optimized739.2.1 StackAnalysis.optimized739.2.2 programs740 (bitmapPrefix, 3270) (step739 bitmapPrefix, 3278) (after740 (step739 bitmapPrefix), 3319) stackBody739_1508 33 bodies740 frames740 (function739_eq bitmapPrefix) (compiled740_eq (step739 bitmapPrefix))
def step738 (bitmapPrefix : AppList (BitVec 64)) := (function738 bitmapPrefix).2.2.1
def programs738 := (738, StackAnalysis.optimized738.2.1, StackAnalysis.optimized738.2.2) :: programs739
def bodies738 := (738, stackBody738_200) :: bodies739
def frames738 := 9 :: frames739
def after738 (bitmapPrefix : AppList (BitVec 64)) := after739 (step738 bitmapPrefix)
theorem compiled738_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs738 (bitmapPrefix, 3269) = (bodies738, frames738, after738 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 738 StackAnalysis.optimized738.2.1 StackAnalysis.optimized738.2.2 programs739 (bitmapPrefix, 3269) (step738 bitmapPrefix, 3270) (after739 (step738 bitmapPrefix), 3319) stackBody738_200 9 bodies739 frames739 (function738_eq bitmapPrefix) (compiled739_eq (step738 bitmapPrefix))
def step737 (bitmapPrefix : AppList (BitVec 64)) := (function737 bitmapPrefix).2.2.1
def programs737 := (737, StackAnalysis.optimized737.2.1, StackAnalysis.optimized737.2.2) :: programs738
def bodies737 := (737, stackBody737_6) :: bodies738
def frames737 := 0 :: frames738
def after737 (bitmapPrefix : AppList (BitVec 64)) := after738 (step737 bitmapPrefix)
theorem compiled737_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs737 (bitmapPrefix, 3269) = (bodies737, frames737, after737 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 737 StackAnalysis.optimized737.2.1 StackAnalysis.optimized737.2.2 programs738 (bitmapPrefix, 3269) (step737 bitmapPrefix, 3269) (after738 (step737 bitmapPrefix), 3319) stackBody737_6 0 bodies738 frames738 (function737_eq bitmapPrefix) (compiled738_eq (step737 bitmapPrefix))
def step736 (bitmapPrefix : AppList (BitVec 64)) := (function736 bitmapPrefix).2.2.1
def programs736 := (736, StackAnalysis.optimized736.2.1, StackAnalysis.optimized736.2.2) :: programs737
def bodies736 := (736, stackBody736_292) :: bodies737
def frames736 := 9 :: frames737
def after736 (bitmapPrefix : AppList (BitVec 64)) := after737 (step736 bitmapPrefix)
theorem compiled736_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs736 (bitmapPrefix, 3267) = (bodies736, frames736, after736 bitmapPrefix, 3319) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 736 StackAnalysis.optimized736.2.1 StackAnalysis.optimized736.2.2 programs737 (bitmapPrefix, 3267) (step736 bitmapPrefix, 3269) (after737 (step736 bitmapPrefix), 3319) stackBody736_292 9 bodies737 frames737 (function736_eq bitmapPrefix) (compiled737_eq (step736 bitmapPrefix))
def programs := programs736
def bodies := bodies736
def frames := frames736
def after := after736
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3319)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3267) = result bitmapPrefix := compiled736_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk736_751
