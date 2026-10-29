import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function784
import InitECandidate.Proofs.BackendStages.Function785
import InitECandidate.Proofs.BackendStages.Function786
import InitECandidate.Proofs.BackendStages.Function787
import InitECandidate.Proofs.BackendStages.Function788
import InitECandidate.Proofs.BackendStages.Function789
import InitECandidate.Proofs.BackendStages.Function790
import InitECandidate.Proofs.BackendStages.Function791
import InitECandidate.Proofs.BackendStages.Function792
import InitECandidate.Proofs.BackendStages.Function793
import InitECandidate.Proofs.BackendStages.Function794
import InitECandidate.Proofs.BackendStages.Function795
import InitECandidate.Proofs.BackendStages.Function796
import InitECandidate.Proofs.BackendStages.Function797
import InitECandidate.Proofs.BackendStages.Function798
import InitECandidate.Proofs.BackendStages.Function799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk784_799
def programs800 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies800 : List (Nat × StackLang.HolProg 64) := []
def frames800 : List Nat := []
def after800 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled800_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs800 (bitmapPrefix, 3840) = (bodies800, frames800, after800 bitmapPrefix, 3840) := by rfl
def step799 (bitmapPrefix : AppList (BitVec 64)) := (function799 bitmapPrefix).2.2.1
def programs799 := (799, StackAnalysis.optimized799.2.1, StackAnalysis.optimized799.2.2) :: programs800
def bodies799 := (799, stackBody799_380) :: bodies800
def frames799 := 10 :: frames800
def after799 (bitmapPrefix : AppList (BitVec 64)) := after800 (step799 bitmapPrefix)
theorem compiled799_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs799 (bitmapPrefix, 3834) = (bodies799, frames799, after799 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 799 StackAnalysis.optimized799.2.1 StackAnalysis.optimized799.2.2 programs800 (bitmapPrefix, 3834) (step799 bitmapPrefix, 3840) (after800 (step799 bitmapPrefix), 3840) stackBody799_380 10 bodies800 frames800 (function799_eq bitmapPrefix) (compiled800_eq (step799 bitmapPrefix))
def step798 (bitmapPrefix : AppList (BitVec 64)) := (function798 bitmapPrefix).2.2.1
def programs798 := (798, StackAnalysis.optimized798.2.1, StackAnalysis.optimized798.2.2) :: programs799
def bodies798 := (798, stackBody798_2377) :: bodies799
def frames798 := 35 :: frames799
def after798 (bitmapPrefix : AppList (BitVec 64)) := after799 (step798 bitmapPrefix)
theorem compiled798_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs798 (bitmapPrefix, 3820) = (bodies798, frames798, after798 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 798 StackAnalysis.optimized798.2.1 StackAnalysis.optimized798.2.2 programs799 (bitmapPrefix, 3820) (step798 bitmapPrefix, 3834) (after799 (step798 bitmapPrefix), 3840) stackBody798_2377 35 bodies799 frames799 (function798_eq bitmapPrefix) (compiled799_eq (step798 bitmapPrefix))
def step797 (bitmapPrefix : AppList (BitVec 64)) := (function797 bitmapPrefix).2.2.1
def programs797 := (797, StackAnalysis.optimized797.2.1, StackAnalysis.optimized797.2.2) :: programs798
def bodies797 := (797, stackBody797_709) :: bodies798
def frames797 := 18 :: frames798
def after797 (bitmapPrefix : AppList (BitVec 64)) := after798 (step797 bitmapPrefix)
theorem compiled797_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs797 (bitmapPrefix, 3817) = (bodies797, frames797, after797 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 797 StackAnalysis.optimized797.2.1 StackAnalysis.optimized797.2.2 programs798 (bitmapPrefix, 3817) (step797 bitmapPrefix, 3820) (after798 (step797 bitmapPrefix), 3840) stackBody797_709 18 bodies798 frames798 (function797_eq bitmapPrefix) (compiled798_eq (step797 bitmapPrefix))
def step796 (bitmapPrefix : AppList (BitVec 64)) := (function796 bitmapPrefix).2.2.1
def programs796 := (796, StackAnalysis.optimized796.2.1, StackAnalysis.optimized796.2.2) :: programs797
def bodies796 := (796, stackBody796_4858) :: bodies797
def frames796 := 57 :: frames797
def after796 (bitmapPrefix : AppList (BitVec 64)) := after797 (step796 bitmapPrefix)
theorem compiled796_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs796 (bitmapPrefix, 3789) = (bodies796, frames796, after796 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 796 StackAnalysis.optimized796.2.1 StackAnalysis.optimized796.2.2 programs797 (bitmapPrefix, 3789) (step796 bitmapPrefix, 3817) (after797 (step796 bitmapPrefix), 3840) stackBody796_4858 57 bodies797 frames797 (function796_eq bitmapPrefix) (compiled797_eq (step796 bitmapPrefix))
def step795 (bitmapPrefix : AppList (BitVec 64)) := (function795 bitmapPrefix).2.2.1
def programs795 := (795, StackAnalysis.optimized795.2.1, StackAnalysis.optimized795.2.2) :: programs796
def bodies795 := (795, stackBody795_890) :: bodies796
def frames795 := 20 :: frames796
def after795 (bitmapPrefix : AppList (BitVec 64)) := after796 (step795 bitmapPrefix)
theorem compiled795_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs795 (bitmapPrefix, 3780) = (bodies795, frames795, after795 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 795 StackAnalysis.optimized795.2.1 StackAnalysis.optimized795.2.2 programs796 (bitmapPrefix, 3780) (step795 bitmapPrefix, 3789) (after796 (step795 bitmapPrefix), 3840) stackBody795_890 20 bodies796 frames796 (function795_eq bitmapPrefix) (compiled796_eq (step795 bitmapPrefix))
def step794 (bitmapPrefix : AppList (BitVec 64)) := (function794 bitmapPrefix).2.2.1
def programs794 := (794, StackAnalysis.optimized794.2.1, StackAnalysis.optimized794.2.2) :: programs795
def bodies794 := (794, stackBody794_744) :: bodies795
def frames794 := 8 :: frames795
def after794 (bitmapPrefix : AppList (BitVec 64)) := after795 (step794 bitmapPrefix)
theorem compiled794_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs794 (bitmapPrefix, 3769) = (bodies794, frames794, after794 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 794 StackAnalysis.optimized794.2.1 StackAnalysis.optimized794.2.2 programs795 (bitmapPrefix, 3769) (step794 bitmapPrefix, 3780) (after795 (step794 bitmapPrefix), 3840) stackBody794_744 8 bodies795 frames795 (function794_eq bitmapPrefix) (compiled795_eq (step794 bitmapPrefix))
def step793 (bitmapPrefix : AppList (BitVec 64)) := (function793 bitmapPrefix).2.2.1
def programs793 := (793, StackAnalysis.optimized793.2.1, StackAnalysis.optimized793.2.2) :: programs794
def bodies793 := (793, stackBody793_1285) :: bodies794
def frames793 := 21 :: frames794
def after793 (bitmapPrefix : AppList (BitVec 64)) := after794 (step793 bitmapPrefix)
theorem compiled793_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs793 (bitmapPrefix, 3755) = (bodies793, frames793, after793 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 793 StackAnalysis.optimized793.2.1 StackAnalysis.optimized793.2.2 programs794 (bitmapPrefix, 3755) (step793 bitmapPrefix, 3769) (after794 (step793 bitmapPrefix), 3840) stackBody793_1285 21 bodies794 frames794 (function793_eq bitmapPrefix) (compiled794_eq (step793 bitmapPrefix))
def step792 (bitmapPrefix : AppList (BitVec 64)) := (function792 bitmapPrefix).2.2.1
def programs792 := (792, StackAnalysis.optimized792.2.1, StackAnalysis.optimized792.2.2) :: programs793
def bodies792 := (792, stackBody792_598) :: bodies793
def frames792 := 18 :: frames793
def after792 (bitmapPrefix : AppList (BitVec 64)) := after793 (step792 bitmapPrefix)
theorem compiled792_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs792 (bitmapPrefix, 3747) = (bodies792, frames792, after792 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 792 StackAnalysis.optimized792.2.1 StackAnalysis.optimized792.2.2 programs793 (bitmapPrefix, 3747) (step792 bitmapPrefix, 3755) (after793 (step792 bitmapPrefix), 3840) stackBody792_598 18 bodies793 frames793 (function792_eq bitmapPrefix) (compiled793_eq (step792 bitmapPrefix))
def step791 (bitmapPrefix : AppList (BitVec 64)) := (function791 bitmapPrefix).2.2.1
def programs791 := (791, StackAnalysis.optimized791.2.1, StackAnalysis.optimized791.2.2) :: programs792
def bodies791 := (791, stackBody791_3104) :: bodies792
def frames791 := 21 :: frames792
def after791 (bitmapPrefix : AppList (BitVec 64)) := after792 (step791 bitmapPrefix)
theorem compiled791_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs791 (bitmapPrefix, 3703) = (bodies791, frames791, after791 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 791 StackAnalysis.optimized791.2.1 StackAnalysis.optimized791.2.2 programs792 (bitmapPrefix, 3703) (step791 bitmapPrefix, 3747) (after792 (step791 bitmapPrefix), 3840) stackBody791_3104 21 bodies792 frames792 (function791_eq bitmapPrefix) (compiled792_eq (step791 bitmapPrefix))
def step790 (bitmapPrefix : AppList (BitVec 64)) := (function790 bitmapPrefix).2.2.1
def programs790 := (790, StackAnalysis.optimized790.2.1, StackAnalysis.optimized790.2.2) :: programs791
def bodies790 := (790, stackBody790_2448) :: bodies791
def frames790 := 16 :: frames791
def after790 (bitmapPrefix : AppList (BitVec 64)) := after791 (step790 bitmapPrefix)
theorem compiled790_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs790 (bitmapPrefix, 3663) = (bodies790, frames790, after790 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 790 StackAnalysis.optimized790.2.1 StackAnalysis.optimized790.2.2 programs791 (bitmapPrefix, 3663) (step790 bitmapPrefix, 3703) (after791 (step790 bitmapPrefix), 3840) stackBody790_2448 16 bodies791 frames791 (function790_eq bitmapPrefix) (compiled791_eq (step790 bitmapPrefix))
def step789 (bitmapPrefix : AppList (BitVec 64)) := (function789 bitmapPrefix).2.2.1
def programs789 := (789, StackAnalysis.optimized789.2.1, StackAnalysis.optimized789.2.2) :: programs790
def bodies789 := (789, stackBody789_274) :: bodies790
def frames789 := 4 :: frames790
def after789 (bitmapPrefix : AppList (BitVec 64)) := after790 (step789 bitmapPrefix)
theorem compiled789_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs789 (bitmapPrefix, 3658) = (bodies789, frames789, after789 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 789 StackAnalysis.optimized789.2.1 StackAnalysis.optimized789.2.2 programs790 (bitmapPrefix, 3658) (step789 bitmapPrefix, 3663) (after790 (step789 bitmapPrefix), 3840) stackBody789_274 4 bodies790 frames790 (function789_eq bitmapPrefix) (compiled790_eq (step789 bitmapPrefix))
def step788 (bitmapPrefix : AppList (BitVec 64)) := (function788 bitmapPrefix).2.2.1
def programs788 := (788, StackAnalysis.optimized788.2.1, StackAnalysis.optimized788.2.2) :: programs789
def bodies788 := (788, stackBody788_458) :: bodies789
def frames788 := 5 :: frames789
def after788 (bitmapPrefix : AppList (BitVec 64)) := after789 (step788 bitmapPrefix)
theorem compiled788_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs788 (bitmapPrefix, 3650) = (bodies788, frames788, after788 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 788 StackAnalysis.optimized788.2.1 StackAnalysis.optimized788.2.2 programs789 (bitmapPrefix, 3650) (step788 bitmapPrefix, 3658) (after789 (step788 bitmapPrefix), 3840) stackBody788_458 5 bodies789 frames789 (function788_eq bitmapPrefix) (compiled789_eq (step788 bitmapPrefix))
def step787 (bitmapPrefix : AppList (BitVec 64)) := (function787 bitmapPrefix).2.2.1
def programs787 := (787, StackAnalysis.optimized787.2.1, StackAnalysis.optimized787.2.2) :: programs788
def bodies787 := (787, stackBody787_634) :: bodies788
def frames787 := 4 :: frames788
def after787 (bitmapPrefix : AppList (BitVec 64)) := after788 (step787 bitmapPrefix)
theorem compiled787_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs787 (bitmapPrefix, 3642) = (bodies787, frames787, after787 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 787 StackAnalysis.optimized787.2.1 StackAnalysis.optimized787.2.2 programs788 (bitmapPrefix, 3642) (step787 bitmapPrefix, 3650) (after788 (step787 bitmapPrefix), 3840) stackBody787_634 4 bodies788 frames788 (function787_eq bitmapPrefix) (compiled788_eq (step787 bitmapPrefix))
def step786 (bitmapPrefix : AppList (BitVec 64)) := (function786 bitmapPrefix).2.2.1
def programs786 := (786, StackAnalysis.optimized786.2.1, StackAnalysis.optimized786.2.2) :: programs787
def bodies786 := (786, stackBody786_504) :: bodies787
def frames786 := 6 :: frames787
def after786 (bitmapPrefix : AppList (BitVec 64)) := after787 (step786 bitmapPrefix)
theorem compiled786_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs786 (bitmapPrefix, 3633) = (bodies786, frames786, after786 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 786 StackAnalysis.optimized786.2.1 StackAnalysis.optimized786.2.2 programs787 (bitmapPrefix, 3633) (step786 bitmapPrefix, 3642) (after787 (step786 bitmapPrefix), 3840) stackBody786_504 6 bodies787 frames787 (function786_eq bitmapPrefix) (compiled787_eq (step786 bitmapPrefix))
def step785 (bitmapPrefix : AppList (BitVec 64)) := (function785 bitmapPrefix).2.2.1
def programs785 := (785, StackAnalysis.optimized785.2.1, StackAnalysis.optimized785.2.2) :: programs786
def bodies785 := (785, stackBody785_524) :: bodies786
def frames785 := 6 :: frames786
def after785 (bitmapPrefix : AppList (BitVec 64)) := after786 (step785 bitmapPrefix)
theorem compiled785_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs785 (bitmapPrefix, 3624) = (bodies785, frames785, after785 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 785 StackAnalysis.optimized785.2.1 StackAnalysis.optimized785.2.2 programs786 (bitmapPrefix, 3624) (step785 bitmapPrefix, 3633) (after786 (step785 bitmapPrefix), 3840) stackBody785_524 6 bodies786 frames786 (function785_eq bitmapPrefix) (compiled786_eq (step785 bitmapPrefix))
def step784 (bitmapPrefix : AppList (BitVec 64)) := (function784 bitmapPrefix).2.2.1
def programs784 := (784, StackAnalysis.optimized784.2.1, StackAnalysis.optimized784.2.2) :: programs785
def bodies784 := (784, stackBody784_597) :: bodies785
def frames784 := 10 :: frames785
def after784 (bitmapPrefix : AppList (BitVec 64)) := after785 (step784 bitmapPrefix)
theorem compiled784_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs784 (bitmapPrefix, 3617) = (bodies784, frames784, after784 bitmapPrefix, 3840) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 784 StackAnalysis.optimized784.2.1 StackAnalysis.optimized784.2.2 programs785 (bitmapPrefix, 3617) (step784 bitmapPrefix, 3624) (after785 (step784 bitmapPrefix), 3840) stackBody784_597 10 bodies785 frames785 (function784_eq bitmapPrefix) (compiled785_eq (step784 bitmapPrefix))
def programs := programs784
def bodies := bodies784
def frames := frames784
def after := after784
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3840)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3617) = result bitmapPrefix := compiled784_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk784_799
