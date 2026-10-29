import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function768
import InitECandidate.Proofs.BackendStages.Function769
import InitECandidate.Proofs.BackendStages.Function770
import InitECandidate.Proofs.BackendStages.Function771
import InitECandidate.Proofs.BackendStages.Function772
import InitECandidate.Proofs.BackendStages.Function773
import InitECandidate.Proofs.BackendStages.Function774
import InitECandidate.Proofs.BackendStages.Function775
import InitECandidate.Proofs.BackendStages.Function776
import InitECandidate.Proofs.BackendStages.Function777
import InitECandidate.Proofs.BackendStages.Function778
import InitECandidate.Proofs.BackendStages.Function779
import InitECandidate.Proofs.BackendStages.Function780
import InitECandidate.Proofs.BackendStages.Function781
import InitECandidate.Proofs.BackendStages.Function782
import InitECandidate.Proofs.BackendStages.Function783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk768_783
def programs784 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies784 : List (Nat × StackLang.HolProg 64) := []
def frames784 : List Nat := []
def after784 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled784_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs784 (bitmapPrefix, 3617) = (bodies784, frames784, after784 bitmapPrefix, 3617) := by rfl
def step783 (bitmapPrefix : AppList (BitVec 64)) := (function783 bitmapPrefix).2.2.1
def programs783 := (783, StackAnalysis.optimized783.2.1, StackAnalysis.optimized783.2.2) :: programs784
def bodies783 := (783, stackBody783_2566) :: bodies784
def frames783 := 18 :: frames784
def after783 (bitmapPrefix : AppList (BitVec 64)) := after784 (step783 bitmapPrefix)
theorem compiled783_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs783 (bitmapPrefix, 3581) = (bodies783, frames783, after783 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 783 StackAnalysis.optimized783.2.1 StackAnalysis.optimized783.2.2 programs784 (bitmapPrefix, 3581) (step783 bitmapPrefix, 3617) (after784 (step783 bitmapPrefix), 3617) stackBody783_2566 18 bodies784 frames784 (function783_eq bitmapPrefix) (compiled784_eq (step783 bitmapPrefix))
def step782 (bitmapPrefix : AppList (BitVec 64)) := (function782 bitmapPrefix).2.2.1
def programs782 := (782, StackAnalysis.optimized782.2.1, StackAnalysis.optimized782.2.2) :: programs783
def bodies782 := (782, stackBody782_2090) :: bodies783
def frames782 := 15 :: frames783
def after782 (bitmapPrefix : AppList (BitVec 64)) := after783 (step782 bitmapPrefix)
theorem compiled782_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs782 (bitmapPrefix, 3549) = (bodies782, frames782, after782 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 782 StackAnalysis.optimized782.2.1 StackAnalysis.optimized782.2.2 programs783 (bitmapPrefix, 3549) (step782 bitmapPrefix, 3581) (after783 (step782 bitmapPrefix), 3617) stackBody782_2090 15 bodies783 frames783 (function782_eq bitmapPrefix) (compiled783_eq (step782 bitmapPrefix))
def step781 (bitmapPrefix : AppList (BitVec 64)) := (function781 bitmapPrefix).2.2.1
def programs781 := (781, StackAnalysis.optimized781.2.1, StackAnalysis.optimized781.2.2) :: programs782
def bodies781 := (781, stackBody781_196) :: bodies782
def frames781 := 4 :: frames782
def after781 (bitmapPrefix : AppList (BitVec 64)) := after782 (step781 bitmapPrefix)
theorem compiled781_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs781 (bitmapPrefix, 3546) = (bodies781, frames781, after781 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 781 StackAnalysis.optimized781.2.1 StackAnalysis.optimized781.2.2 programs782 (bitmapPrefix, 3546) (step781 bitmapPrefix, 3549) (after782 (step781 bitmapPrefix), 3617) stackBody781_196 4 bodies782 frames782 (function781_eq bitmapPrefix) (compiled782_eq (step781 bitmapPrefix))
def step780 (bitmapPrefix : AppList (BitVec 64)) := (function780 bitmapPrefix).2.2.1
def programs780 := (780, StackAnalysis.optimized780.2.1, StackAnalysis.optimized780.2.2) :: programs781
def bodies780 := (780, stackBody780_60) :: bodies781
def frames780 := 2 :: frames781
def after780 (bitmapPrefix : AppList (BitVec 64)) := after781 (step780 bitmapPrefix)
theorem compiled780_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs780 (bitmapPrefix, 3545) = (bodies780, frames780, after780 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 780 StackAnalysis.optimized780.2.1 StackAnalysis.optimized780.2.2 programs781 (bitmapPrefix, 3545) (step780 bitmapPrefix, 3546) (after781 (step780 bitmapPrefix), 3617) stackBody780_60 2 bodies781 frames781 (function780_eq bitmapPrefix) (compiled781_eq (step780 bitmapPrefix))
def step779 (bitmapPrefix : AppList (BitVec 64)) := (function779 bitmapPrefix).2.2.1
def programs779 := (779, StackAnalysis.optimized779.2.1, StackAnalysis.optimized779.2.2) :: programs780
def bodies779 := (779, stackBody779_10) :: bodies780
def frames779 := 0 :: frames780
def after779 (bitmapPrefix : AppList (BitVec 64)) := after780 (step779 bitmapPrefix)
theorem compiled779_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs779 (bitmapPrefix, 3545) = (bodies779, frames779, after779 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 779 StackAnalysis.optimized779.2.1 StackAnalysis.optimized779.2.2 programs780 (bitmapPrefix, 3545) (step779 bitmapPrefix, 3545) (after780 (step779 bitmapPrefix), 3617) stackBody779_10 0 bodies780 frames780 (function779_eq bitmapPrefix) (compiled780_eq (step779 bitmapPrefix))
def step778 (bitmapPrefix : AppList (BitVec 64)) := (function778 bitmapPrefix).2.2.1
def programs778 := (778, StackAnalysis.optimized778.2.1, StackAnalysis.optimized778.2.2) :: programs779
def bodies778 := (778, stackBody778_162) :: bodies779
def frames778 := 3 :: frames779
def after778 (bitmapPrefix : AppList (BitVec 64)) := after779 (step778 bitmapPrefix)
theorem compiled778_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs778 (bitmapPrefix, 3542) = (bodies778, frames778, after778 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 778 StackAnalysis.optimized778.2.1 StackAnalysis.optimized778.2.2 programs779 (bitmapPrefix, 3542) (step778 bitmapPrefix, 3545) (after779 (step778 bitmapPrefix), 3617) stackBody778_162 3 bodies779 frames779 (function778_eq bitmapPrefix) (compiled779_eq (step778 bitmapPrefix))
def step777 (bitmapPrefix : AppList (BitVec 64)) := (function777 bitmapPrefix).2.2.1
def programs777 := (777, StackAnalysis.optimized777.2.1, StackAnalysis.optimized777.2.2) :: programs778
def bodies777 := (777, stackBody777_274) :: bodies778
def frames777 := 4 :: frames778
def after777 (bitmapPrefix : AppList (BitVec 64)) := after778 (step777 bitmapPrefix)
theorem compiled777_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs777 (bitmapPrefix, 3537) = (bodies777, frames777, after777 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 777 StackAnalysis.optimized777.2.1 StackAnalysis.optimized777.2.2 programs778 (bitmapPrefix, 3537) (step777 bitmapPrefix, 3542) (after778 (step777 bitmapPrefix), 3617) stackBody777_274 4 bodies778 frames778 (function777_eq bitmapPrefix) (compiled778_eq (step777 bitmapPrefix))
def step776 (bitmapPrefix : AppList (BitVec 64)) := (function776 bitmapPrefix).2.2.1
def programs776 := (776, StackAnalysis.optimized776.2.1, StackAnalysis.optimized776.2.2) :: programs777
def bodies776 := (776, stackBody776_334) :: bodies777
def frames776 := 5 :: frames777
def after776 (bitmapPrefix : AppList (BitVec 64)) := after777 (step776 bitmapPrefix)
theorem compiled776_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs776 (bitmapPrefix, 3531) = (bodies776, frames776, after776 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 776 StackAnalysis.optimized776.2.1 StackAnalysis.optimized776.2.2 programs777 (bitmapPrefix, 3531) (step776 bitmapPrefix, 3537) (after777 (step776 bitmapPrefix), 3617) stackBody776_334 5 bodies777 frames777 (function776_eq bitmapPrefix) (compiled777_eq (step776 bitmapPrefix))
def step775 (bitmapPrefix : AppList (BitVec 64)) := (function775 bitmapPrefix).2.2.1
def programs775 := (775, StackAnalysis.optimized775.2.1, StackAnalysis.optimized775.2.2) :: programs776
def bodies775 := (775, stackBody775_570) :: bodies776
def frames775 := 16 :: frames776
def after775 (bitmapPrefix : AppList (BitVec 64)) := after776 (step775 bitmapPrefix)
theorem compiled775_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs775 (bitmapPrefix, 3527) = (bodies775, frames775, after775 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 775 StackAnalysis.optimized775.2.1 StackAnalysis.optimized775.2.2 programs776 (bitmapPrefix, 3527) (step775 bitmapPrefix, 3531) (after776 (step775 bitmapPrefix), 3617) stackBody775_570 16 bodies776 frames776 (function775_eq bitmapPrefix) (compiled776_eq (step775 bitmapPrefix))
def step774 (bitmapPrefix : AppList (BitVec 64)) := (function774 bitmapPrefix).2.2.1
def programs774 := (774, StackAnalysis.optimized774.2.1, StackAnalysis.optimized774.2.2) :: programs775
def bodies774 := (774, stackBody774_416) :: bodies775
def frames774 := 14 :: frames775
def after774 (bitmapPrefix : AppList (BitVec 64)) := after775 (step774 bitmapPrefix)
theorem compiled774_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs774 (bitmapPrefix, 3523) = (bodies774, frames774, after774 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 774 StackAnalysis.optimized774.2.1 StackAnalysis.optimized774.2.2 programs775 (bitmapPrefix, 3523) (step774 bitmapPrefix, 3527) (after775 (step774 bitmapPrefix), 3617) stackBody774_416 14 bodies775 frames775 (function774_eq bitmapPrefix) (compiled775_eq (step774 bitmapPrefix))
def step773 (bitmapPrefix : AppList (BitVec 64)) := (function773 bitmapPrefix).2.2.1
def programs773 := (773, StackAnalysis.optimized773.2.1, StackAnalysis.optimized773.2.2) :: programs774
def bodies773 := (773, stackBody773_556) :: bodies774
def frames773 := 21 :: frames774
def after773 (bitmapPrefix : AppList (BitVec 64)) := after774 (step773 bitmapPrefix)
theorem compiled773_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs773 (bitmapPrefix, 3519) = (bodies773, frames773, after773 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 773 StackAnalysis.optimized773.2.1 StackAnalysis.optimized773.2.2 programs774 (bitmapPrefix, 3519) (step773 bitmapPrefix, 3523) (after774 (step773 bitmapPrefix), 3617) stackBody773_556 21 bodies774 frames774 (function773_eq bitmapPrefix) (compiled774_eq (step773 bitmapPrefix))
def step772 (bitmapPrefix : AppList (BitVec 64)) := (function772 bitmapPrefix).2.2.1
def programs772 := (772, StackAnalysis.optimized772.2.1, StackAnalysis.optimized772.2.2) :: programs773
def bodies772 := (772, stackBody772_743) :: bodies773
def frames772 := 11 :: frames773
def after772 (bitmapPrefix : AppList (BitVec 64)) := after773 (step772 bitmapPrefix)
theorem compiled772_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs772 (bitmapPrefix, 3510) = (bodies772, frames772, after772 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 772 StackAnalysis.optimized772.2.1 StackAnalysis.optimized772.2.2 programs773 (bitmapPrefix, 3510) (step772 bitmapPrefix, 3519) (after773 (step772 bitmapPrefix), 3617) stackBody772_743 11 bodies773 frames773 (function772_eq bitmapPrefix) (compiled773_eq (step772 bitmapPrefix))
def step771 (bitmapPrefix : AppList (BitVec 64)) := (function771 bitmapPrefix).2.2.1
def programs771 := (771, StackAnalysis.optimized771.2.1, StackAnalysis.optimized771.2.2) :: programs772
def bodies771 := (771, stackBody771_4812) :: bodies772
def frames771 := 45 :: frames772
def after771 (bitmapPrefix : AppList (BitVec 64)) := after772 (step771 bitmapPrefix)
theorem compiled771_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs771 (bitmapPrefix, 3481) = (bodies771, frames771, after771 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 771 StackAnalysis.optimized771.2.1 StackAnalysis.optimized771.2.2 programs772 (bitmapPrefix, 3481) (step771 bitmapPrefix, 3510) (after772 (step771 bitmapPrefix), 3617) stackBody771_4812 45 bodies772 frames772 (function771_eq bitmapPrefix) (compiled772_eq (step771 bitmapPrefix))
def step770 (bitmapPrefix : AppList (BitVec 64)) := (function770 bitmapPrefix).2.2.1
def programs770 := (770, StackAnalysis.optimized770.2.1, StackAnalysis.optimized770.2.2) :: programs771
def bodies770 := (770, stackBody770_3158) :: bodies771
def frames770 := 39 :: frames771
def after770 (bitmapPrefix : AppList (BitVec 64)) := after771 (step770 bitmapPrefix)
theorem compiled770_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs770 (bitmapPrefix, 3455) = (bodies770, frames770, after770 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 770 StackAnalysis.optimized770.2.1 StackAnalysis.optimized770.2.2 programs771 (bitmapPrefix, 3455) (step770 bitmapPrefix, 3481) (after771 (step770 bitmapPrefix), 3617) stackBody770_3158 39 bodies771 frames771 (function770_eq bitmapPrefix) (compiled771_eq (step770 bitmapPrefix))
def step769 (bitmapPrefix : AppList (BitVec 64)) := (function769 bitmapPrefix).2.2.1
def programs769 := (769, StackAnalysis.optimized769.2.1, StackAnalysis.optimized769.2.2) :: programs770
def bodies769 := (769, stackBody769_244) :: bodies770
def frames769 := 4 :: frames770
def after769 (bitmapPrefix : AppList (BitVec 64)) := after770 (step769 bitmapPrefix)
theorem compiled769_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs769 (bitmapPrefix, 3454) = (bodies769, frames769, after769 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 769 StackAnalysis.optimized769.2.1 StackAnalysis.optimized769.2.2 programs770 (bitmapPrefix, 3454) (step769 bitmapPrefix, 3455) (after770 (step769 bitmapPrefix), 3617) stackBody769_244 4 bodies770 frames770 (function769_eq bitmapPrefix) (compiled770_eq (step769 bitmapPrefix))
def step768 (bitmapPrefix : AppList (BitVec 64)) := (function768 bitmapPrefix).2.2.1
def programs768 := (768, StackAnalysis.optimized768.2.1, StackAnalysis.optimized768.2.2) :: programs769
def bodies768 := (768, stackBody768_60) :: bodies769
def frames768 := 2 :: frames769
def after768 (bitmapPrefix : AppList (BitVec 64)) := after769 (step768 bitmapPrefix)
theorem compiled768_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs768 (bitmapPrefix, 3453) = (bodies768, frames768, after768 bitmapPrefix, 3617) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 768 StackAnalysis.optimized768.2.1 StackAnalysis.optimized768.2.2 programs769 (bitmapPrefix, 3453) (step768 bitmapPrefix, 3454) (after769 (step768 bitmapPrefix), 3617) stackBody768_60 2 bodies769 frames769 (function768_eq bitmapPrefix) (compiled769_eq (step768 bitmapPrefix))
def programs := programs768
def bodies := bodies768
def frames := frames768
def after := after768
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3617)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3453) = result bitmapPrefix := compiled768_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk768_783
