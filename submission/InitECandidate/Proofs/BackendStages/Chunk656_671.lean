import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function656
import InitECandidate.Proofs.BackendStages.Function657
import InitECandidate.Proofs.BackendStages.Function658
import InitECandidate.Proofs.BackendStages.Function659
import InitECandidate.Proofs.BackendStages.Function660
import InitECandidate.Proofs.BackendStages.Function661
import InitECandidate.Proofs.BackendStages.Function662
import InitECandidate.Proofs.BackendStages.Function663
import InitECandidate.Proofs.BackendStages.Function664
import InitECandidate.Proofs.BackendStages.Function665
import InitECandidate.Proofs.BackendStages.Function666
import InitECandidate.Proofs.BackendStages.Function667
import InitECandidate.Proofs.BackendStages.Function668
import InitECandidate.Proofs.BackendStages.Function669
import InitECandidate.Proofs.BackendStages.Function670
import InitECandidate.Proofs.BackendStages.Function671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk656_671
def programs672 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies672 : List (Nat × StackLang.HolProg 64) := []
def frames672 : List Nat := []
def after672 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled672_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs672 (bitmapPrefix, 2787) = (bodies672, frames672, after672 bitmapPrefix, 2787) := by rfl
def step671 (bitmapPrefix : AppList (BitVec 64)) := (function671 bitmapPrefix).2.2.1
def programs671 := (671, StackAnalysis.optimized671.2.1, StackAnalysis.optimized671.2.2) :: programs672
def bodies671 := (671, stackBody671_132) :: bodies672
def frames671 := 3 :: frames672
def after671 (bitmapPrefix : AppList (BitVec 64)) := after672 (step671 bitmapPrefix)
theorem compiled671_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs671 (bitmapPrefix, 2785) = (bodies671, frames671, after671 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 671 StackAnalysis.optimized671.2.1 StackAnalysis.optimized671.2.2 programs672 (bitmapPrefix, 2785) (step671 bitmapPrefix, 2787) (after672 (step671 bitmapPrefix), 2787) stackBody671_132 3 bodies672 frames672 (function671_eq bitmapPrefix) (compiled672_eq (step671 bitmapPrefix))
def step670 (bitmapPrefix : AppList (BitVec 64)) := (function670 bitmapPrefix).2.2.1
def programs670 := (670, StackAnalysis.optimized670.2.1, StackAnalysis.optimized670.2.2) :: programs671
def bodies670 := (670, stackBody670_266) :: bodies671
def frames670 := 4 :: frames671
def after670 (bitmapPrefix : AppList (BitVec 64)) := after671 (step670 bitmapPrefix)
theorem compiled670_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs670 (bitmapPrefix, 2782) = (bodies670, frames670, after670 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 670 StackAnalysis.optimized670.2.1 StackAnalysis.optimized670.2.2 programs671 (bitmapPrefix, 2782) (step670 bitmapPrefix, 2785) (after671 (step670 bitmapPrefix), 2787) stackBody670_266 4 bodies671 frames671 (function670_eq bitmapPrefix) (compiled671_eq (step670 bitmapPrefix))
def step669 (bitmapPrefix : AppList (BitVec 64)) := (function669 bitmapPrefix).2.2.1
def programs669 := (669, StackAnalysis.optimized669.2.1, StackAnalysis.optimized669.2.2) :: programs670
def bodies669 := (669, stackBody669_926) :: bodies670
def frames669 := 12 :: frames670
def after669 (bitmapPrefix : AppList (BitVec 64)) := after670 (step669 bitmapPrefix)
theorem compiled669_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs669 (bitmapPrefix, 2772) = (bodies669, frames669, after669 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 669 StackAnalysis.optimized669.2.1 StackAnalysis.optimized669.2.2 programs670 (bitmapPrefix, 2772) (step669 bitmapPrefix, 2782) (after670 (step669 bitmapPrefix), 2787) stackBody669_926 12 bodies670 frames670 (function669_eq bitmapPrefix) (compiled670_eq (step669 bitmapPrefix))
def step668 (bitmapPrefix : AppList (BitVec 64)) := (function668 bitmapPrefix).2.2.1
def programs668 := (668, StackAnalysis.optimized668.2.1, StackAnalysis.optimized668.2.2) :: programs669
def bodies668 := (668, stackBody668_692) :: bodies669
def frames668 := 14 :: frames669
def after668 (bitmapPrefix : AppList (BitVec 64)) := after669 (step668 bitmapPrefix)
theorem compiled668_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs668 (bitmapPrefix, 2765) = (bodies668, frames668, after668 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 668 StackAnalysis.optimized668.2.1 StackAnalysis.optimized668.2.2 programs669 (bitmapPrefix, 2765) (step668 bitmapPrefix, 2772) (after669 (step668 bitmapPrefix), 2787) stackBody668_692 14 bodies669 frames669 (function668_eq bitmapPrefix) (compiled669_eq (step668 bitmapPrefix))
def step667 (bitmapPrefix : AppList (BitVec 64)) := (function667 bitmapPrefix).2.2.1
def programs667 := (667, StackAnalysis.optimized667.2.1, StackAnalysis.optimized667.2.2) :: programs668
def bodies667 := (667, stackBody667_469) :: bodies668
def frames667 := 8 :: frames668
def after667 (bitmapPrefix : AppList (BitVec 64)) := after668 (step667 bitmapPrefix)
theorem compiled667_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs667 (bitmapPrefix, 2761) = (bodies667, frames667, after667 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 667 StackAnalysis.optimized667.2.1 StackAnalysis.optimized667.2.2 programs668 (bitmapPrefix, 2761) (step667 bitmapPrefix, 2765) (after668 (step667 bitmapPrefix), 2787) stackBody667_469 8 bodies668 frames668 (function667_eq bitmapPrefix) (compiled668_eq (step667 bitmapPrefix))
def step666 (bitmapPrefix : AppList (BitVec 64)) := (function666 bitmapPrefix).2.2.1
def programs666 := (666, StackAnalysis.optimized666.2.1, StackAnalysis.optimized666.2.2) :: programs667
def bodies666 := (666, stackBody666_826) :: bodies667
def frames666 := 23 :: frames667
def after666 (bitmapPrefix : AppList (BitVec 64)) := after667 (step666 bitmapPrefix)
theorem compiled666_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs666 (bitmapPrefix, 2755) = (bodies666, frames666, after666 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 666 StackAnalysis.optimized666.2.1 StackAnalysis.optimized666.2.2 programs667 (bitmapPrefix, 2755) (step666 bitmapPrefix, 2761) (after667 (step666 bitmapPrefix), 2787) stackBody666_826 23 bodies667 frames667 (function666_eq bitmapPrefix) (compiled667_eq (step666 bitmapPrefix))
def step665 (bitmapPrefix : AppList (BitVec 64)) := (function665 bitmapPrefix).2.2.1
def programs665 := (665, StackAnalysis.optimized665.2.1, StackAnalysis.optimized665.2.2) :: programs666
def bodies665 := (665, stackBody665_361) :: bodies666
def frames665 := 11 :: frames666
def after665 (bitmapPrefix : AppList (BitVec 64)) := after666 (step665 bitmapPrefix)
theorem compiled665_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs665 (bitmapPrefix, 2752) = (bodies665, frames665, after665 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 665 StackAnalysis.optimized665.2.1 StackAnalysis.optimized665.2.2 programs666 (bitmapPrefix, 2752) (step665 bitmapPrefix, 2755) (after666 (step665 bitmapPrefix), 2787) stackBody665_361 11 bodies666 frames666 (function665_eq bitmapPrefix) (compiled666_eq (step665 bitmapPrefix))
def step664 (bitmapPrefix : AppList (BitVec 64)) := (function664 bitmapPrefix).2.2.1
def programs664 := (664, StackAnalysis.optimized664.2.1, StackAnalysis.optimized664.2.2) :: programs665
def bodies664 := (664, stackBody664_78) :: bodies665
def frames664 := 2 :: frames665
def after664 (bitmapPrefix : AppList (BitVec 64)) := after665 (step664 bitmapPrefix)
theorem compiled664_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs664 (bitmapPrefix, 2751) = (bodies664, frames664, after664 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 664 StackAnalysis.optimized664.2.1 StackAnalysis.optimized664.2.2 programs665 (bitmapPrefix, 2751) (step664 bitmapPrefix, 2752) (after665 (step664 bitmapPrefix), 2787) stackBody664_78 2 bodies665 frames665 (function664_eq bitmapPrefix) (compiled665_eq (step664 bitmapPrefix))
def step663 (bitmapPrefix : AppList (BitVec 64)) := (function663 bitmapPrefix).2.2.1
def programs663 := (663, StackAnalysis.optimized663.2.1, StackAnalysis.optimized663.2.2) :: programs664
def bodies663 := (663, stackBody663_16) :: bodies664
def frames663 := 0 :: frames664
def after663 (bitmapPrefix : AppList (BitVec 64)) := after664 (step663 bitmapPrefix)
theorem compiled663_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs663 (bitmapPrefix, 2751) = (bodies663, frames663, after663 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 663 StackAnalysis.optimized663.2.1 StackAnalysis.optimized663.2.2 programs664 (bitmapPrefix, 2751) (step663 bitmapPrefix, 2751) (after664 (step663 bitmapPrefix), 2787) stackBody663_16 0 bodies664 frames664 (function663_eq bitmapPrefix) (compiled664_eq (step663 bitmapPrefix))
def step662 (bitmapPrefix : AppList (BitVec 64)) := (function662 bitmapPrefix).2.2.1
def programs662 := (662, StackAnalysis.optimized662.2.1, StackAnalysis.optimized662.2.2) :: programs663
def bodies662 := (662, stackBody662_16) :: bodies663
def frames662 := 0 :: frames663
def after662 (bitmapPrefix : AppList (BitVec 64)) := after663 (step662 bitmapPrefix)
theorem compiled662_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs662 (bitmapPrefix, 2751) = (bodies662, frames662, after662 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 662 StackAnalysis.optimized662.2.1 StackAnalysis.optimized662.2.2 programs663 (bitmapPrefix, 2751) (step662 bitmapPrefix, 2751) (after663 (step662 bitmapPrefix), 2787) stackBody662_16 0 bodies663 frames663 (function662_eq bitmapPrefix) (compiled663_eq (step662 bitmapPrefix))
def step661 (bitmapPrefix : AppList (BitVec 64)) := (function661 bitmapPrefix).2.2.1
def programs661 := (661, StackAnalysis.optimized661.2.1, StackAnalysis.optimized661.2.2) :: programs662
def bodies661 := (661, stackBody661_3794) :: bodies662
def frames661 := 9 :: frames662
def after661 (bitmapPrefix : AppList (BitVec 64)) := after662 (step661 bitmapPrefix)
theorem compiled661_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs661 (bitmapPrefix, 2750) = (bodies661, frames661, after661 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 661 StackAnalysis.optimized661.2.1 StackAnalysis.optimized661.2.2 programs662 (bitmapPrefix, 2750) (step661 bitmapPrefix, 2751) (after662 (step661 bitmapPrefix), 2787) stackBody661_3794 9 bodies662 frames662 (function661_eq bitmapPrefix) (compiled662_eq (step661 bitmapPrefix))
def step660 (bitmapPrefix : AppList (BitVec 64)) := (function660 bitmapPrefix).2.2.1
def programs660 := (660, StackAnalysis.optimized660.2.1, StackAnalysis.optimized660.2.2) :: programs661
def bodies660 := (660, stackBody660_118) :: bodies661
def frames660 := 6 :: frames661
def after660 (bitmapPrefix : AppList (BitVec 64)) := after661 (step660 bitmapPrefix)
theorem compiled660_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs660 (bitmapPrefix, 2749) = (bodies660, frames660, after660 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 660 StackAnalysis.optimized660.2.1 StackAnalysis.optimized660.2.2 programs661 (bitmapPrefix, 2749) (step660 bitmapPrefix, 2750) (after661 (step660 bitmapPrefix), 2787) stackBody660_118 6 bodies661 frames661 (function660_eq bitmapPrefix) (compiled661_eq (step660 bitmapPrefix))
def step659 (bitmapPrefix : AppList (BitVec 64)) := (function659 bitmapPrefix).2.2.1
def programs659 := (659, StackAnalysis.optimized659.2.1, StackAnalysis.optimized659.2.2) :: programs660
def bodies659 := (659, stackBody659_226) :: bodies660
def frames659 := 10 :: frames660
def after659 (bitmapPrefix : AppList (BitVec 64)) := after660 (step659 bitmapPrefix)
theorem compiled659_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs659 (bitmapPrefix, 2746) = (bodies659, frames659, after659 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 659 StackAnalysis.optimized659.2.1 StackAnalysis.optimized659.2.2 programs660 (bitmapPrefix, 2746) (step659 bitmapPrefix, 2749) (after660 (step659 bitmapPrefix), 2787) stackBody659_226 10 bodies660 frames660 (function659_eq bitmapPrefix) (compiled660_eq (step659 bitmapPrefix))
def step658 (bitmapPrefix : AppList (BitVec 64)) := (function658 bitmapPrefix).2.2.1
def programs658 := (658, StackAnalysis.optimized658.2.1, StackAnalysis.optimized658.2.2) :: programs659
def bodies658 := (658, stackBody658_166) :: bodies659
def frames658 := 6 :: frames659
def after658 (bitmapPrefix : AppList (BitVec 64)) := after659 (step658 bitmapPrefix)
theorem compiled658_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs658 (bitmapPrefix, 2744) = (bodies658, frames658, after658 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 658 StackAnalysis.optimized658.2.1 StackAnalysis.optimized658.2.2 programs659 (bitmapPrefix, 2744) (step658 bitmapPrefix, 2746) (after659 (step658 bitmapPrefix), 2787) stackBody658_166 6 bodies659 frames659 (function658_eq bitmapPrefix) (compiled659_eq (step658 bitmapPrefix))
def step657 (bitmapPrefix : AppList (BitVec 64)) := (function657 bitmapPrefix).2.2.1
def programs657 := (657, StackAnalysis.optimized657.2.1, StackAnalysis.optimized657.2.2) :: programs658
def bodies657 := (657, stackBody657_1046) :: bodies658
def frames657 := 2 :: frames658
def after657 (bitmapPrefix : AppList (BitVec 64)) := after658 (step657 bitmapPrefix)
theorem compiled657_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs657 (bitmapPrefix, 2742) = (bodies657, frames657, after657 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 657 StackAnalysis.optimized657.2.1 StackAnalysis.optimized657.2.2 programs658 (bitmapPrefix, 2742) (step657 bitmapPrefix, 2744) (after658 (step657 bitmapPrefix), 2787) stackBody657_1046 2 bodies658 frames658 (function657_eq bitmapPrefix) (compiled658_eq (step657 bitmapPrefix))
def step656 (bitmapPrefix : AppList (BitVec 64)) := (function656 bitmapPrefix).2.2.1
def programs656 := (656, StackAnalysis.optimized656.2.1, StackAnalysis.optimized656.2.2) :: programs657
def bodies656 := (656, stackBody656_694) :: bodies657
def frames656 := 15 :: frames657
def after656 (bitmapPrefix : AppList (BitVec 64)) := after657 (step656 bitmapPrefix)
theorem compiled656_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs656 (bitmapPrefix, 2733) = (bodies656, frames656, after656 bitmapPrefix, 2787) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 656 StackAnalysis.optimized656.2.1 StackAnalysis.optimized656.2.2 programs657 (bitmapPrefix, 2733) (step656 bitmapPrefix, 2742) (after657 (step656 bitmapPrefix), 2787) stackBody656_694 15 bodies657 frames657 (function656_eq bitmapPrefix) (compiled657_eq (step656 bitmapPrefix))
def programs := programs656
def bodies := bodies656
def frames := frames656
def after := after656
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2787)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2733) = result bitmapPrefix := compiled656_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk656_671
