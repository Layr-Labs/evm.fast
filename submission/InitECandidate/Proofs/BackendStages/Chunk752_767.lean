import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function752
import InitECandidate.Proofs.BackendStages.Function753
import InitECandidate.Proofs.BackendStages.Function754
import InitECandidate.Proofs.BackendStages.Function755
import InitECandidate.Proofs.BackendStages.Function756
import InitECandidate.Proofs.BackendStages.Function757
import InitECandidate.Proofs.BackendStages.Function758
import InitECandidate.Proofs.BackendStages.Function759
import InitECandidate.Proofs.BackendStages.Function760
import InitECandidate.Proofs.BackendStages.Function761
import InitECandidate.Proofs.BackendStages.Function762
import InitECandidate.Proofs.BackendStages.Function763
import InitECandidate.Proofs.BackendStages.Function764
import InitECandidate.Proofs.BackendStages.Function765
import InitECandidate.Proofs.BackendStages.Function766
import InitECandidate.Proofs.BackendStages.Function767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk752_767
def programs768 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies768 : List (Nat × StackLang.HolProg 64) := []
def frames768 : List Nat := []
def after768 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled768_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs768 (bitmapPrefix, 3453) = (bodies768, frames768, after768 bitmapPrefix, 3453) := by rfl
def step767 (bitmapPrefix : AppList (BitVec 64)) := (function767 bitmapPrefix).2.2.1
def programs767 := (767, StackAnalysis.optimized767.2.1, StackAnalysis.optimized767.2.2) :: programs768
def bodies767 := (767, stackBody767_30) :: bodies768
def frames767 := 0 :: frames768
def after767 (bitmapPrefix : AppList (BitVec 64)) := after768 (step767 bitmapPrefix)
theorem compiled767_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs767 (bitmapPrefix, 3453) = (bodies767, frames767, after767 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 767 StackAnalysis.optimized767.2.1 StackAnalysis.optimized767.2.2 programs768 (bitmapPrefix, 3453) (step767 bitmapPrefix, 3453) (after768 (step767 bitmapPrefix), 3453) stackBody767_30 0 bodies768 frames768 (function767_eq bitmapPrefix) (compiled768_eq (step767 bitmapPrefix))
def step766 (bitmapPrefix : AppList (BitVec 64)) := (function766 bitmapPrefix).2.2.1
def programs766 := (766, StackAnalysis.optimized766.2.1, StackAnalysis.optimized766.2.2) :: programs767
def bodies766 := (766, stackBody766_124) :: bodies767
def frames766 := 0 :: frames767
def after766 (bitmapPrefix : AppList (BitVec 64)) := after767 (step766 bitmapPrefix)
theorem compiled766_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs766 (bitmapPrefix, 3453) = (bodies766, frames766, after766 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 766 StackAnalysis.optimized766.2.1 StackAnalysis.optimized766.2.2 programs767 (bitmapPrefix, 3453) (step766 bitmapPrefix, 3453) (after767 (step766 bitmapPrefix), 3453) stackBody766_124 0 bodies767 frames767 (function766_eq bitmapPrefix) (compiled767_eq (step766 bitmapPrefix))
def step765 (bitmapPrefix : AppList (BitVec 64)) := (function765 bitmapPrefix).2.2.1
def programs765 := (765, StackAnalysis.optimized765.2.1, StackAnalysis.optimized765.2.2) :: programs766
def bodies765 := (765, stackBody765_1630) :: bodies766
def frames765 := 10 :: frames766
def after765 (bitmapPrefix : AppList (BitVec 64)) := after766 (step765 bitmapPrefix)
theorem compiled765_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs765 (bitmapPrefix, 3425) = (bodies765, frames765, after765 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 765 StackAnalysis.optimized765.2.1 StackAnalysis.optimized765.2.2 programs766 (bitmapPrefix, 3425) (step765 bitmapPrefix, 3453) (after766 (step765 bitmapPrefix), 3453) stackBody765_1630 10 bodies766 frames766 (function765_eq bitmapPrefix) (compiled766_eq (step765 bitmapPrefix))
def step764 (bitmapPrefix : AppList (BitVec 64)) := (function764 bitmapPrefix).2.2.1
def programs764 := (764, StackAnalysis.optimized764.2.1, StackAnalysis.optimized764.2.2) :: programs765
def bodies764 := (764, stackBody764_106) :: bodies765
def frames764 := 3 :: frames765
def after764 (bitmapPrefix : AppList (BitVec 64)) := after765 (step764 bitmapPrefix)
theorem compiled764_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs764 (bitmapPrefix, 3423) = (bodies764, frames764, after764 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 764 StackAnalysis.optimized764.2.1 StackAnalysis.optimized764.2.2 programs765 (bitmapPrefix, 3423) (step764 bitmapPrefix, 3425) (after765 (step764 bitmapPrefix), 3453) stackBody764_106 3 bodies765 frames765 (function764_eq bitmapPrefix) (compiled765_eq (step764 bitmapPrefix))
def step763 (bitmapPrefix : AppList (BitVec 64)) := (function763 bitmapPrefix).2.2.1
def programs763 := (763, StackAnalysis.optimized763.2.1, StackAnalysis.optimized763.2.2) :: programs764
def bodies763 := (763, stackBody763_683) :: bodies764
def frames763 := 10 :: frames764
def after763 (bitmapPrefix : AppList (BitVec 64)) := after764 (step763 bitmapPrefix)
theorem compiled763_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs763 (bitmapPrefix, 3414) = (bodies763, frames763, after763 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 763 StackAnalysis.optimized763.2.1 StackAnalysis.optimized763.2.2 programs764 (bitmapPrefix, 3414) (step763 bitmapPrefix, 3423) (after764 (step763 bitmapPrefix), 3453) stackBody763_683 10 bodies764 frames764 (function763_eq bitmapPrefix) (compiled764_eq (step763 bitmapPrefix))
def step762 (bitmapPrefix : AppList (BitVec 64)) := (function762 bitmapPrefix).2.2.1
def programs762 := (762, StackAnalysis.optimized762.2.1, StackAnalysis.optimized762.2.2) :: programs763
def bodies762 := (762, stackBody762_688) :: bodies763
def frames762 := 4 :: frames763
def after762 (bitmapPrefix : AppList (BitVec 64)) := after763 (step762 bitmapPrefix)
theorem compiled762_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs762 (bitmapPrefix, 3403) = (bodies762, frames762, after762 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 762 StackAnalysis.optimized762.2.1 StackAnalysis.optimized762.2.2 programs763 (bitmapPrefix, 3403) (step762 bitmapPrefix, 3414) (after763 (step762 bitmapPrefix), 3453) stackBody762_688 4 bodies763 frames763 (function762_eq bitmapPrefix) (compiled763_eq (step762 bitmapPrefix))
def step761 (bitmapPrefix : AppList (BitVec 64)) := (function761 bitmapPrefix).2.2.1
def programs761 := (761, StackAnalysis.optimized761.2.1, StackAnalysis.optimized761.2.2) :: programs762
def bodies761 := (761, stackBody761_660) :: bodies762
def frames761 := 8 :: frames762
def after761 (bitmapPrefix : AppList (BitVec 64)) := after762 (step761 bitmapPrefix)
theorem compiled761_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs761 (bitmapPrefix, 3392) = (bodies761, frames761, after761 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 761 StackAnalysis.optimized761.2.1 StackAnalysis.optimized761.2.2 programs762 (bitmapPrefix, 3392) (step761 bitmapPrefix, 3403) (after762 (step761 bitmapPrefix), 3453) stackBody761_660 8 bodies762 frames762 (function761_eq bitmapPrefix) (compiled762_eq (step761 bitmapPrefix))
def step760 (bitmapPrefix : AppList (BitVec 64)) := (function760 bitmapPrefix).2.2.1
def programs760 := (760, StackAnalysis.optimized760.2.1, StackAnalysis.optimized760.2.2) :: programs761
def bodies760 := (760, stackBody760_120) :: bodies761
def frames760 := 4 :: frames761
def after760 (bitmapPrefix : AppList (BitVec 64)) := after761 (step760 bitmapPrefix)
theorem compiled760_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs760 (bitmapPrefix, 3390) = (bodies760, frames760, after760 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 760 StackAnalysis.optimized760.2.1 StackAnalysis.optimized760.2.2 programs761 (bitmapPrefix, 3390) (step760 bitmapPrefix, 3392) (after761 (step760 bitmapPrefix), 3453) stackBody760_120 4 bodies761 frames761 (function760_eq bitmapPrefix) (compiled761_eq (step760 bitmapPrefix))
def step759 (bitmapPrefix : AppList (BitVec 64)) := (function759 bitmapPrefix).2.2.1
def programs759 := (759, StackAnalysis.optimized759.2.1, StackAnalysis.optimized759.2.2) :: programs760
def bodies759 := (759, stackBody759_6) :: bodies760
def frames759 := 0 :: frames760
def after759 (bitmapPrefix : AppList (BitVec 64)) := after760 (step759 bitmapPrefix)
theorem compiled759_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs759 (bitmapPrefix, 3390) = (bodies759, frames759, after759 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 759 StackAnalysis.optimized759.2.1 StackAnalysis.optimized759.2.2 programs760 (bitmapPrefix, 3390) (step759 bitmapPrefix, 3390) (after760 (step759 bitmapPrefix), 3453) stackBody759_6 0 bodies760 frames760 (function759_eq bitmapPrefix) (compiled760_eq (step759 bitmapPrefix))
def step758 (bitmapPrefix : AppList (BitVec 64)) := (function758 bitmapPrefix).2.2.1
def programs758 := (758, StackAnalysis.optimized758.2.1, StackAnalysis.optimized758.2.2) :: programs759
def bodies758 := (758, stackBody758_784) :: bodies759
def frames758 := 11 :: frames759
def after758 (bitmapPrefix : AppList (BitVec 64)) := after759 (step758 bitmapPrefix)
theorem compiled758_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs758 (bitmapPrefix, 3378) = (bodies758, frames758, after758 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 758 StackAnalysis.optimized758.2.1 StackAnalysis.optimized758.2.2 programs759 (bitmapPrefix, 3378) (step758 bitmapPrefix, 3390) (after759 (step758 bitmapPrefix), 3453) stackBody758_784 11 bodies759 frames759 (function758_eq bitmapPrefix) (compiled759_eq (step758 bitmapPrefix))
def step757 (bitmapPrefix : AppList (BitVec 64)) := (function757 bitmapPrefix).2.2.1
def programs757 := (757, StackAnalysis.optimized757.2.1, StackAnalysis.optimized757.2.2) :: programs758
def bodies757 := (757, stackBody757_276) :: bodies758
def frames757 := 5 :: frames758
def after757 (bitmapPrefix : AppList (BitVec 64)) := after758 (step757 bitmapPrefix)
theorem compiled757_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs757 (bitmapPrefix, 3373) = (bodies757, frames757, after757 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 757 StackAnalysis.optimized757.2.1 StackAnalysis.optimized757.2.2 programs758 (bitmapPrefix, 3373) (step757 bitmapPrefix, 3378) (after758 (step757 bitmapPrefix), 3453) stackBody757_276 5 bodies758 frames758 (function757_eq bitmapPrefix) (compiled758_eq (step757 bitmapPrefix))
def step756 (bitmapPrefix : AppList (BitVec 64)) := (function756 bitmapPrefix).2.2.1
def programs756 := (756, StackAnalysis.optimized756.2.1, StackAnalysis.optimized756.2.2) :: programs757
def bodies756 := (756, stackBody756_110) :: bodies757
def frames756 := 3 :: frames757
def after756 (bitmapPrefix : AppList (BitVec 64)) := after757 (step756 bitmapPrefix)
theorem compiled756_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs756 (bitmapPrefix, 3371) = (bodies756, frames756, after756 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 756 StackAnalysis.optimized756.2.1 StackAnalysis.optimized756.2.2 programs757 (bitmapPrefix, 3371) (step756 bitmapPrefix, 3373) (after757 (step756 bitmapPrefix), 3453) stackBody756_110 3 bodies757 frames757 (function756_eq bitmapPrefix) (compiled757_eq (step756 bitmapPrefix))
def step755 (bitmapPrefix : AppList (BitVec 64)) := (function755 bitmapPrefix).2.2.1
def programs755 := (755, StackAnalysis.optimized755.2.1, StackAnalysis.optimized755.2.2) :: programs756
def bodies755 := (755, stackBody755_60) :: bodies756
def frames755 := 2 :: frames756
def after755 (bitmapPrefix : AppList (BitVec 64)) := after756 (step755 bitmapPrefix)
theorem compiled755_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs755 (bitmapPrefix, 3370) = (bodies755, frames755, after755 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 755 StackAnalysis.optimized755.2.1 StackAnalysis.optimized755.2.2 programs756 (bitmapPrefix, 3370) (step755 bitmapPrefix, 3371) (after756 (step755 bitmapPrefix), 3453) stackBody755_60 2 bodies756 frames756 (function755_eq bitmapPrefix) (compiled756_eq (step755 bitmapPrefix))
def step754 (bitmapPrefix : AppList (BitVec 64)) := (function754 bitmapPrefix).2.2.1
def programs754 := (754, StackAnalysis.optimized754.2.1, StackAnalysis.optimized754.2.2) :: programs755
def bodies754 := (754, stackBody754_1458) :: bodies755
def frames754 := 11 :: frames755
def after754 (bitmapPrefix : AppList (BitVec 64)) := after755 (step754 bitmapPrefix)
theorem compiled754_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs754 (bitmapPrefix, 3346) = (bodies754, frames754, after754 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 754 StackAnalysis.optimized754.2.1 StackAnalysis.optimized754.2.2 programs755 (bitmapPrefix, 3346) (step754 bitmapPrefix, 3370) (after755 (step754 bitmapPrefix), 3453) stackBody754_1458 11 bodies755 frames755 (function754_eq bitmapPrefix) (compiled755_eq (step754 bitmapPrefix))
def step753 (bitmapPrefix : AppList (BitVec 64)) := (function753 bitmapPrefix).2.2.1
def programs753 := (753, StackAnalysis.optimized753.2.1, StackAnalysis.optimized753.2.2) :: programs754
def bodies753 := (753, stackBody753_400) :: bodies754
def frames753 := 6 :: frames754
def after753 (bitmapPrefix : AppList (BitVec 64)) := after754 (step753 bitmapPrefix)
theorem compiled753_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs753 (bitmapPrefix, 3339) = (bodies753, frames753, after753 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 753 StackAnalysis.optimized753.2.1 StackAnalysis.optimized753.2.2 programs754 (bitmapPrefix, 3339) (step753 bitmapPrefix, 3346) (after754 (step753 bitmapPrefix), 3453) stackBody753_400 6 bodies754 frames754 (function753_eq bitmapPrefix) (compiled754_eq (step753 bitmapPrefix))
def step752 (bitmapPrefix : AppList (BitVec 64)) := (function752 bitmapPrefix).2.2.1
def programs752 := (752, StackAnalysis.optimized752.2.1, StackAnalysis.optimized752.2.2) :: programs753
def bodies752 := (752, stackBody752_1286) :: bodies753
def frames752 := 7 :: frames753
def after752 (bitmapPrefix : AppList (BitVec 64)) := after753 (step752 bitmapPrefix)
theorem compiled752_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs752 (bitmapPrefix, 3319) = (bodies752, frames752, after752 bitmapPrefix, 3453) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 752 StackAnalysis.optimized752.2.1 StackAnalysis.optimized752.2.2 programs753 (bitmapPrefix, 3319) (step752 bitmapPrefix, 3339) (after753 (step752 bitmapPrefix), 3453) stackBody752_1286 7 bodies753 frames753 (function752_eq bitmapPrefix) (compiled753_eq (step752 bitmapPrefix))
def programs := programs752
def bodies := bodies752
def frames := frames752
def after := after752
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3453)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3319) = result bitmapPrefix := compiled752_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk752_767
