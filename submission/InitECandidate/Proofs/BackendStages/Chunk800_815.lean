import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function800
import InitECandidate.Proofs.BackendStages.Function801
import InitECandidate.Proofs.BackendStages.Function802
import InitECandidate.Proofs.BackendStages.Function803
import InitECandidate.Proofs.BackendStages.Function804
import InitECandidate.Proofs.BackendStages.Function805
import InitECandidate.Proofs.BackendStages.Function806
import InitECandidate.Proofs.BackendStages.Function807
import InitECandidate.Proofs.BackendStages.Function808
import InitECandidate.Proofs.BackendStages.Function809
import InitECandidate.Proofs.BackendStages.Function810
import InitECandidate.Proofs.BackendStages.Function811
import InitECandidate.Proofs.BackendStages.Function812
import InitECandidate.Proofs.BackendStages.Function813
import InitECandidate.Proofs.BackendStages.Function814
import InitECandidate.Proofs.BackendStages.Function815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk800_815
def programs816 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies816 : List (Nat × StackLang.HolProg 64) := []
def frames816 : List Nat := []
def after816 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled816_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs816 (bitmapPrefix, 4058) = (bodies816, frames816, after816 bitmapPrefix, 4058) := by rfl
def step815 (bitmapPrefix : AppList (BitVec 64)) := (function815 bitmapPrefix).2.2.1
def programs815 := (815, StackAnalysis.optimized815.2.1, StackAnalysis.optimized815.2.2) :: programs816
def bodies815 := (815, stackBody815_470) :: bodies816
def frames815 := 6 :: frames816
def after815 (bitmapPrefix : AppList (BitVec 64)) := after816 (step815 bitmapPrefix)
theorem compiled815_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs815 (bitmapPrefix, 4050) = (bodies815, frames815, after815 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 815 StackAnalysis.optimized815.2.1 StackAnalysis.optimized815.2.2 programs816 (bitmapPrefix, 4050) (step815 bitmapPrefix, 4058) (after816 (step815 bitmapPrefix), 4058) stackBody815_470 6 bodies816 frames816 (function815_eq bitmapPrefix) (compiled816_eq (step815 bitmapPrefix))
def step814 (bitmapPrefix : AppList (BitVec 64)) := (function814 bitmapPrefix).2.2.1
def programs814 := (814, StackAnalysis.optimized814.2.1, StackAnalysis.optimized814.2.2) :: programs815
def bodies814 := (814, stackBody814_1195) :: bodies815
def frames814 := 11 :: frames815
def after814 (bitmapPrefix : AppList (BitVec 64)) := after815 (step814 bitmapPrefix)
theorem compiled814_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs814 (bitmapPrefix, 4032) = (bodies814, frames814, after814 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 814 StackAnalysis.optimized814.2.1 StackAnalysis.optimized814.2.2 programs815 (bitmapPrefix, 4032) (step814 bitmapPrefix, 4050) (after815 (step814 bitmapPrefix), 4058) stackBody814_1195 11 bodies815 frames815 (function814_eq bitmapPrefix) (compiled815_eq (step814 bitmapPrefix))
def step813 (bitmapPrefix : AppList (BitVec 64)) := (function813 bitmapPrefix).2.2.1
def programs813 := (813, StackAnalysis.optimized813.2.1, StackAnalysis.optimized813.2.2) :: programs814
def bodies813 := (813, stackBody813_1031) :: bodies814
def frames813 := 11 :: frames814
def after813 (bitmapPrefix : AppList (BitVec 64)) := after814 (step813 bitmapPrefix)
theorem compiled813_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs813 (bitmapPrefix, 4018) = (bodies813, frames813, after813 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 813 StackAnalysis.optimized813.2.1 StackAnalysis.optimized813.2.2 programs814 (bitmapPrefix, 4018) (step813 bitmapPrefix, 4032) (after814 (step813 bitmapPrefix), 4058) stackBody813_1031 11 bodies814 frames814 (function813_eq bitmapPrefix) (compiled814_eq (step813 bitmapPrefix))
def step812 (bitmapPrefix : AppList (BitVec 64)) := (function812 bitmapPrefix).2.2.1
def programs812 := (812, StackAnalysis.optimized812.2.1, StackAnalysis.optimized812.2.2) :: programs813
def bodies812 := (812, stackBody812_562) :: bodies813
def frames812 := 7 :: frames813
def after812 (bitmapPrefix : AppList (BitVec 64)) := after813 (step812 bitmapPrefix)
theorem compiled812_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs812 (bitmapPrefix, 4009) = (bodies812, frames812, after812 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 812 StackAnalysis.optimized812.2.1 StackAnalysis.optimized812.2.2 programs813 (bitmapPrefix, 4009) (step812 bitmapPrefix, 4018) (after813 (step812 bitmapPrefix), 4058) stackBody812_562 7 bodies813 frames813 (function812_eq bitmapPrefix) (compiled813_eq (step812 bitmapPrefix))
def step811 (bitmapPrefix : AppList (BitVec 64)) := (function811 bitmapPrefix).2.2.1
def programs811 := (811, StackAnalysis.optimized811.2.1, StackAnalysis.optimized811.2.2) :: programs812
def bodies811 := (811, stackBody811_1031) :: bodies812
def frames811 := 11 :: frames812
def after811 (bitmapPrefix : AppList (BitVec 64)) := after812 (step811 bitmapPrefix)
theorem compiled811_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs811 (bitmapPrefix, 3995) = (bodies811, frames811, after811 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 811 StackAnalysis.optimized811.2.1 StackAnalysis.optimized811.2.2 programs812 (bitmapPrefix, 3995) (step811 bitmapPrefix, 4009) (after812 (step811 bitmapPrefix), 4058) stackBody811_1031 11 bodies812 frames812 (function811_eq bitmapPrefix) (compiled812_eq (step811 bitmapPrefix))
def step810 (bitmapPrefix : AppList (BitVec 64)) := (function810 bitmapPrefix).2.2.1
def programs810 := (810, StackAnalysis.optimized810.2.1, StackAnalysis.optimized810.2.2) :: programs811
def bodies810 := (810, stackBody810_562) :: bodies811
def frames810 := 7 :: frames811
def after810 (bitmapPrefix : AppList (BitVec 64)) := after811 (step810 bitmapPrefix)
theorem compiled810_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs810 (bitmapPrefix, 3986) = (bodies810, frames810, after810 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 810 StackAnalysis.optimized810.2.1 StackAnalysis.optimized810.2.2 programs811 (bitmapPrefix, 3986) (step810 bitmapPrefix, 3995) (after811 (step810 bitmapPrefix), 4058) stackBody810_562 7 bodies811 frames811 (function810_eq bitmapPrefix) (compiled811_eq (step810 bitmapPrefix))
def step809 (bitmapPrefix : AppList (BitVec 64)) := (function809 bitmapPrefix).2.2.1
def programs809 := (809, StackAnalysis.optimized809.2.1, StackAnalysis.optimized809.2.2) :: programs810
def bodies809 := (809, stackBody809_56) :: bodies810
def frames809 := 2 :: frames810
def after809 (bitmapPrefix : AppList (BitVec 64)) := after810 (step809 bitmapPrefix)
theorem compiled809_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs809 (bitmapPrefix, 3985) = (bodies809, frames809, after809 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 809 StackAnalysis.optimized809.2.1 StackAnalysis.optimized809.2.2 programs810 (bitmapPrefix, 3985) (step809 bitmapPrefix, 3986) (after810 (step809 bitmapPrefix), 4058) stackBody809_56 2 bodies810 frames810 (function809_eq bitmapPrefix) (compiled810_eq (step809 bitmapPrefix))
def step808 (bitmapPrefix : AppList (BitVec 64)) := (function808 bitmapPrefix).2.2.1
def programs808 := (808, StackAnalysis.optimized808.2.1, StackAnalysis.optimized808.2.2) :: programs809
def bodies808 := (808, stackBody808_1798) :: bodies809
def frames808 := 14 :: frames809
def after808 (bitmapPrefix : AppList (BitVec 64)) := after809 (step808 bitmapPrefix)
theorem compiled808_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs808 (bitmapPrefix, 3956) = (bodies808, frames808, after808 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 808 StackAnalysis.optimized808.2.1 StackAnalysis.optimized808.2.2 programs809 (bitmapPrefix, 3956) (step808 bitmapPrefix, 3985) (after809 (step808 bitmapPrefix), 4058) stackBody808_1798 14 bodies809 frames809 (function808_eq bitmapPrefix) (compiled809_eq (step808 bitmapPrefix))
def step807 (bitmapPrefix : AppList (BitVec 64)) := (function807 bitmapPrefix).2.2.1
def programs807 := (807, StackAnalysis.optimized807.2.1, StackAnalysis.optimized807.2.2) :: programs808
def bodies807 := (807, stackBody807_310) :: bodies808
def frames807 := 12 :: frames808
def after807 (bitmapPrefix : AppList (BitVec 64)) := after808 (step807 bitmapPrefix)
theorem compiled807_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs807 (bitmapPrefix, 3953) = (bodies807, frames807, after807 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 807 StackAnalysis.optimized807.2.1 StackAnalysis.optimized807.2.2 programs808 (bitmapPrefix, 3953) (step807 bitmapPrefix, 3956) (after808 (step807 bitmapPrefix), 4058) stackBody807_310 12 bodies808 frames808 (function807_eq bitmapPrefix) (compiled808_eq (step807 bitmapPrefix))
def step806 (bitmapPrefix : AppList (BitVec 64)) := (function806 bitmapPrefix).2.2.1
def programs806 := (806, StackAnalysis.optimized806.2.1, StackAnalysis.optimized806.2.2) :: programs807
def bodies806 := (806, stackBody806_318) :: bodies807
def frames806 := 4 :: frames807
def after806 (bitmapPrefix : AppList (BitVec 64)) := after807 (step806 bitmapPrefix)
theorem compiled806_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs806 (bitmapPrefix, 3949) = (bodies806, frames806, after806 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 806 StackAnalysis.optimized806.2.1 StackAnalysis.optimized806.2.2 programs807 (bitmapPrefix, 3949) (step806 bitmapPrefix, 3953) (after807 (step806 bitmapPrefix), 4058) stackBody806_318 4 bodies807 frames807 (function806_eq bitmapPrefix) (compiled807_eq (step806 bitmapPrefix))
def step805 (bitmapPrefix : AppList (BitVec 64)) := (function805 bitmapPrefix).2.2.1
def programs805 := (805, StackAnalysis.optimized805.2.1, StackAnalysis.optimized805.2.2) :: programs806
def bodies805 := (805, stackBody805_1598) :: bodies806
def frames805 := 22 :: frames806
def after805 (bitmapPrefix : AppList (BitVec 64)) := after806 (step805 bitmapPrefix)
theorem compiled805_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs805 (bitmapPrefix, 3932) = (bodies805, frames805, after805 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 805 StackAnalysis.optimized805.2.1 StackAnalysis.optimized805.2.2 programs806 (bitmapPrefix, 3932) (step805 bitmapPrefix, 3949) (after806 (step805 bitmapPrefix), 4058) stackBody805_1598 22 bodies806 frames806 (function805_eq bitmapPrefix) (compiled806_eq (step805 bitmapPrefix))
def step804 (bitmapPrefix : AppList (BitVec 64)) := (function804 bitmapPrefix).2.2.1
def programs804 := (804, StackAnalysis.optimized804.2.1, StackAnalysis.optimized804.2.2) :: programs805
def bodies804 := (804, stackBody804_326) :: bodies805
def frames804 := 5 :: frames805
def after804 (bitmapPrefix : AppList (BitVec 64)) := after805 (step804 bitmapPrefix)
theorem compiled804_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs804 (bitmapPrefix, 3926) = (bodies804, frames804, after804 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 804 StackAnalysis.optimized804.2.1 StackAnalysis.optimized804.2.2 programs805 (bitmapPrefix, 3926) (step804 bitmapPrefix, 3932) (after805 (step804 bitmapPrefix), 4058) stackBody804_326 5 bodies805 frames805 (function804_eq bitmapPrefix) (compiled805_eq (step804 bitmapPrefix))
def step803 (bitmapPrefix : AppList (BitVec 64)) := (function803 bitmapPrefix).2.2.1
def programs803 := (803, StackAnalysis.optimized803.2.1, StackAnalysis.optimized803.2.2) :: programs804
def bodies803 := (803, stackBody803_1104) :: bodies804
def frames803 := 9 :: frames804
def after803 (bitmapPrefix : AppList (BitVec 64)) := after804 (step803 bitmapPrefix)
theorem compiled803_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs803 (bitmapPrefix, 3909) = (bodies803, frames803, after803 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 803 StackAnalysis.optimized803.2.1 StackAnalysis.optimized803.2.2 programs804 (bitmapPrefix, 3909) (step803 bitmapPrefix, 3926) (after804 (step803 bitmapPrefix), 4058) stackBody803_1104 9 bodies804 frames804 (function803_eq bitmapPrefix) (compiled804_eq (step803 bitmapPrefix))
def step802 (bitmapPrefix : AppList (BitVec 64)) := (function802 bitmapPrefix).2.2.1
def programs802 := (802, StackAnalysis.optimized802.2.1, StackAnalysis.optimized802.2.2) :: programs803
def bodies802 := (802, stackBody802_705) :: bodies803
def frames802 := 11 :: frames803
def after802 (bitmapPrefix : AppList (BitVec 64)) := after803 (step802 bitmapPrefix)
theorem compiled802_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs802 (bitmapPrefix, 3900) = (bodies802, frames802, after802 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 802 StackAnalysis.optimized802.2.1 StackAnalysis.optimized802.2.2 programs803 (bitmapPrefix, 3900) (step802 bitmapPrefix, 3909) (after803 (step802 bitmapPrefix), 4058) stackBody802_705 11 bodies803 frames803 (function802_eq bitmapPrefix) (compiled803_eq (step802 bitmapPrefix))
def step801 (bitmapPrefix : AppList (BitVec 64)) := (function801 bitmapPrefix).2.2.1
def programs801 := (801, StackAnalysis.optimized801.2.1, StackAnalysis.optimized801.2.2) :: programs802
def bodies801 := (801, stackBody801_3301) :: bodies802
def frames801 := 21 :: frames802
def after801 (bitmapPrefix : AppList (BitVec 64)) := after802 (step801 bitmapPrefix)
theorem compiled801_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs801 (bitmapPrefix, 3857) = (bodies801, frames801, after801 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 801 StackAnalysis.optimized801.2.1 StackAnalysis.optimized801.2.2 programs802 (bitmapPrefix, 3857) (step801 bitmapPrefix, 3900) (after802 (step801 bitmapPrefix), 4058) stackBody801_3301 21 bodies802 frames802 (function801_eq bitmapPrefix) (compiled802_eq (step801 bitmapPrefix))
def step800 (bitmapPrefix : AppList (BitVec 64)) := (function800 bitmapPrefix).2.2.1
def programs800 := (800, StackAnalysis.optimized800.2.1, StackAnalysis.optimized800.2.2) :: programs801
def bodies800 := (800, stackBody800_1484) :: bodies801
def frames800 := 15 :: frames801
def after800 (bitmapPrefix : AppList (BitVec 64)) := after801 (step800 bitmapPrefix)
theorem compiled800_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs800 (bitmapPrefix, 3840) = (bodies800, frames800, after800 bitmapPrefix, 4058) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 800 StackAnalysis.optimized800.2.1 StackAnalysis.optimized800.2.2 programs801 (bitmapPrefix, 3840) (step800 bitmapPrefix, 3857) (after801 (step800 bitmapPrefix), 4058) stackBody800_1484 15 bodies801 frames801 (function800_eq bitmapPrefix) (compiled801_eq (step800 bitmapPrefix))
def programs := programs800
def bodies := bodies800
def frames := frames800
def after := after800
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 4058)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3840) = result bitmapPrefix := compiled800_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk800_815
