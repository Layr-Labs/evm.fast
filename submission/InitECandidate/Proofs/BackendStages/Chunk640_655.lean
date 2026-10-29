import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function640
import InitECandidate.Proofs.BackendStages.Function641
import InitECandidate.Proofs.BackendStages.Function642
import InitECandidate.Proofs.BackendStages.Function643
import InitECandidate.Proofs.BackendStages.Function644
import InitECandidate.Proofs.BackendStages.Function645
import InitECandidate.Proofs.BackendStages.Function646
import InitECandidate.Proofs.BackendStages.Function647
import InitECandidate.Proofs.BackendStages.Function648
import InitECandidate.Proofs.BackendStages.Function649
import InitECandidate.Proofs.BackendStages.Function650
import InitECandidate.Proofs.BackendStages.Function651
import InitECandidate.Proofs.BackendStages.Function652
import InitECandidate.Proofs.BackendStages.Function653
import InitECandidate.Proofs.BackendStages.Function654
import InitECandidate.Proofs.BackendStages.Function655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk640_655
def programs656 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies656 : List (Nat × StackLang.HolProg 64) := []
def frames656 : List Nat := []
def after656 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled656_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs656 (bitmapPrefix, 2733) = (bodies656, frames656, after656 bitmapPrefix, 2733) := by rfl
def step655 (bitmapPrefix : AppList (BitVec 64)) := (function655 bitmapPrefix).2.2.1
def programs655 := (655, StackAnalysis.optimized655.2.1, StackAnalysis.optimized655.2.2) :: programs656
def bodies655 := (655, stackBody655_2636) :: bodies656
def frames655 := 23 :: frames656
def after655 (bitmapPrefix : AppList (BitVec 64)) := after656 (step655 bitmapPrefix)
theorem compiled655_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs655 (bitmapPrefix, 2708) = (bodies655, frames655, after655 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 655 StackAnalysis.optimized655.2.1 StackAnalysis.optimized655.2.2 programs656 (bitmapPrefix, 2708) (step655 bitmapPrefix, 2733) (after656 (step655 bitmapPrefix), 2733) stackBody655_2636 23 bodies656 frames656 (function655_eq bitmapPrefix) (compiled656_eq (step655 bitmapPrefix))
def step654 (bitmapPrefix : AppList (BitVec 64)) := (function654 bitmapPrefix).2.2.1
def programs654 := (654, StackAnalysis.optimized654.2.1, StackAnalysis.optimized654.2.2) :: programs655
def bodies654 := (654, stackBody654_602) :: bodies655
def frames654 := 14 :: frames655
def after654 (bitmapPrefix : AppList (BitVec 64)) := after655 (step654 bitmapPrefix)
theorem compiled654_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs654 (bitmapPrefix, 2701) = (bodies654, frames654, after654 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 654 StackAnalysis.optimized654.2.1 StackAnalysis.optimized654.2.2 programs655 (bitmapPrefix, 2701) (step654 bitmapPrefix, 2708) (after655 (step654 bitmapPrefix), 2733) stackBody654_602 14 bodies655 frames655 (function654_eq bitmapPrefix) (compiled655_eq (step654 bitmapPrefix))
def step653 (bitmapPrefix : AppList (BitVec 64)) := (function653 bitmapPrefix).2.2.1
def programs653 := (653, StackAnalysis.optimized653.2.1, StackAnalysis.optimized653.2.2) :: programs654
def bodies653 := (653, stackBody653_588) :: bodies654
def frames653 := 11 :: frames654
def after653 (bitmapPrefix : AppList (BitVec 64)) := after654 (step653 bitmapPrefix)
theorem compiled653_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs653 (bitmapPrefix, 2694) = (bodies653, frames653, after653 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 653 StackAnalysis.optimized653.2.1 StackAnalysis.optimized653.2.2 programs654 (bitmapPrefix, 2694) (step653 bitmapPrefix, 2701) (after654 (step653 bitmapPrefix), 2733) stackBody653_588 11 bodies654 frames654 (function653_eq bitmapPrefix) (compiled654_eq (step653 bitmapPrefix))
def step652 (bitmapPrefix : AppList (BitVec 64)) := (function652 bitmapPrefix).2.2.1
def programs652 := (652, StackAnalysis.optimized652.2.1, StackAnalysis.optimized652.2.2) :: programs653
def bodies652 := (652, stackBody652_1413) :: bodies653
def frames652 := 30 :: frames653
def after652 (bitmapPrefix : AppList (BitVec 64)) := after653 (step652 bitmapPrefix)
theorem compiled652_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs652 (bitmapPrefix, 2685) = (bodies652, frames652, after652 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 652 StackAnalysis.optimized652.2.1 StackAnalysis.optimized652.2.2 programs653 (bitmapPrefix, 2685) (step652 bitmapPrefix, 2694) (after653 (step652 bitmapPrefix), 2733) stackBody652_1413 30 bodies653 frames653 (function652_eq bitmapPrefix) (compiled653_eq (step652 bitmapPrefix))
def step651 (bitmapPrefix : AppList (BitVec 64)) := (function651 bitmapPrefix).2.2.1
def programs651 := (651, StackAnalysis.optimized651.2.1, StackAnalysis.optimized651.2.2) :: programs652
def bodies651 := (651, stackBody651_2986) :: bodies652
def frames651 := 31 :: frames652
def after651 (bitmapPrefix : AppList (BitVec 64)) := after652 (step651 bitmapPrefix)
theorem compiled651_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs651 (bitmapPrefix, 2660) = (bodies651, frames651, after651 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 651 StackAnalysis.optimized651.2.1 StackAnalysis.optimized651.2.2 programs652 (bitmapPrefix, 2660) (step651 bitmapPrefix, 2685) (after652 (step651 bitmapPrefix), 2733) stackBody651_2986 31 bodies652 frames652 (function651_eq bitmapPrefix) (compiled652_eq (step651 bitmapPrefix))
def step650 (bitmapPrefix : AppList (BitVec 64)) := (function650 bitmapPrefix).2.2.1
def programs650 := (650, StackAnalysis.optimized650.2.1, StackAnalysis.optimized650.2.2) :: programs651
def bodies650 := (650, stackBody650_2710) :: bodies651
def frames650 := 31 :: frames651
def after650 (bitmapPrefix : AppList (BitVec 64)) := after651 (step650 bitmapPrefix)
theorem compiled650_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs650 (bitmapPrefix, 2633) = (bodies650, frames650, after650 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 650 StackAnalysis.optimized650.2.1 StackAnalysis.optimized650.2.2 programs651 (bitmapPrefix, 2633) (step650 bitmapPrefix, 2660) (after651 (step650 bitmapPrefix), 2733) stackBody650_2710 31 bodies651 frames651 (function650_eq bitmapPrefix) (compiled651_eq (step650 bitmapPrefix))
def step649 (bitmapPrefix : AppList (BitVec 64)) := (function649 bitmapPrefix).2.2.1
def programs649 := (649, StackAnalysis.optimized649.2.1, StackAnalysis.optimized649.2.2) :: programs650
def bodies649 := (649, stackBody649_70) :: bodies650
def frames649 := 0 :: frames650
def after649 (bitmapPrefix : AppList (BitVec 64)) := after650 (step649 bitmapPrefix)
theorem compiled649_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs649 (bitmapPrefix, 2633) = (bodies649, frames649, after649 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 649 StackAnalysis.optimized649.2.1 StackAnalysis.optimized649.2.2 programs650 (bitmapPrefix, 2633) (step649 bitmapPrefix, 2633) (after650 (step649 bitmapPrefix), 2733) stackBody649_70 0 bodies650 frames650 (function649_eq bitmapPrefix) (compiled650_eq (step649 bitmapPrefix))
def step648 (bitmapPrefix : AppList (BitVec 64)) := (function648 bitmapPrefix).2.2.1
def programs648 := (648, StackAnalysis.optimized648.2.1, StackAnalysis.optimized648.2.2) :: programs649
def bodies648 := (648, stackBody648_88) :: bodies649
def frames648 := 0 :: frames649
def after648 (bitmapPrefix : AppList (BitVec 64)) := after649 (step648 bitmapPrefix)
theorem compiled648_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs648 (bitmapPrefix, 2633) = (bodies648, frames648, after648 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 648 StackAnalysis.optimized648.2.1 StackAnalysis.optimized648.2.2 programs649 (bitmapPrefix, 2633) (step648 bitmapPrefix, 2633) (after649 (step648 bitmapPrefix), 2733) stackBody648_88 0 bodies649 frames649 (function648_eq bitmapPrefix) (compiled649_eq (step648 bitmapPrefix))
def step647 (bitmapPrefix : AppList (BitVec 64)) := (function647 bitmapPrefix).2.2.1
def programs647 := (647, StackAnalysis.optimized647.2.1, StackAnalysis.optimized647.2.2) :: programs648
def bodies647 := (647, stackBody647_16) :: bodies648
def frames647 := 0 :: frames648
def after647 (bitmapPrefix : AppList (BitVec 64)) := after648 (step647 bitmapPrefix)
theorem compiled647_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs647 (bitmapPrefix, 2633) = (bodies647, frames647, after647 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 647 StackAnalysis.optimized647.2.1 StackAnalysis.optimized647.2.2 programs648 (bitmapPrefix, 2633) (step647 bitmapPrefix, 2633) (after648 (step647 bitmapPrefix), 2733) stackBody647_16 0 bodies648 frames648 (function647_eq bitmapPrefix) (compiled648_eq (step647 bitmapPrefix))
def step646 (bitmapPrefix : AppList (BitVec 64)) := (function646 bitmapPrefix).2.2.1
def programs646 := (646, StackAnalysis.optimized646.2.1, StackAnalysis.optimized646.2.2) :: programs647
def bodies646 := (646, stackBody646_2356) :: bodies647
def frames646 := 58 :: frames647
def after646 (bitmapPrefix : AppList (BitVec 64)) := after647 (step646 bitmapPrefix)
theorem compiled646_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs646 (bitmapPrefix, 2630) = (bodies646, frames646, after646 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 646 StackAnalysis.optimized646.2.1 StackAnalysis.optimized646.2.2 programs647 (bitmapPrefix, 2630) (step646 bitmapPrefix, 2633) (after647 (step646 bitmapPrefix), 2733) stackBody646_2356 58 bodies647 frames647 (function646_eq bitmapPrefix) (compiled647_eq (step646 bitmapPrefix))
def step645 (bitmapPrefix : AppList (BitVec 64)) := (function645 bitmapPrefix).2.2.1
def programs645 := (645, StackAnalysis.optimized645.2.1, StackAnalysis.optimized645.2.2) :: programs646
def bodies645 := (645, stackBody645_2978) :: bodies646
def frames645 := 67 :: frames646
def after645 (bitmapPrefix : AppList (BitVec 64)) := after646 (step645 bitmapPrefix)
theorem compiled645_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs645 (bitmapPrefix, 2624) = (bodies645, frames645, after645 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 645 StackAnalysis.optimized645.2.1 StackAnalysis.optimized645.2.2 programs646 (bitmapPrefix, 2624) (step645 bitmapPrefix, 2630) (after646 (step645 bitmapPrefix), 2733) stackBody645_2978 67 bodies646 frames646 (function645_eq bitmapPrefix) (compiled646_eq (step645 bitmapPrefix))
def step644 (bitmapPrefix : AppList (BitVec 64)) := (function644 bitmapPrefix).2.2.1
def programs644 := (644, StackAnalysis.optimized644.2.1, StackAnalysis.optimized644.2.2) :: programs645
def bodies644 := (644, stackBody644_120) :: bodies645
def frames644 := 6 :: frames645
def after644 (bitmapPrefix : AppList (BitVec 64)) := after645 (step644 bitmapPrefix)
theorem compiled644_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs644 (bitmapPrefix, 2623) = (bodies644, frames644, after644 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 644 StackAnalysis.optimized644.2.1 StackAnalysis.optimized644.2.2 programs645 (bitmapPrefix, 2623) (step644 bitmapPrefix, 2624) (after645 (step644 bitmapPrefix), 2733) stackBody644_120 6 bodies645 frames645 (function644_eq bitmapPrefix) (compiled645_eq (step644 bitmapPrefix))
def step643 (bitmapPrefix : AppList (BitVec 64)) := (function643 bitmapPrefix).2.2.1
def programs643 := (643, StackAnalysis.optimized643.2.1, StackAnalysis.optimized643.2.2) :: programs644
def bodies643 := (643, stackBody643_226) :: bodies644
def frames643 := 10 :: frames644
def after643 (bitmapPrefix : AppList (BitVec 64)) := after644 (step643 bitmapPrefix)
theorem compiled643_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs643 (bitmapPrefix, 2620) = (bodies643, frames643, after643 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 643 StackAnalysis.optimized643.2.1 StackAnalysis.optimized643.2.2 programs644 (bitmapPrefix, 2620) (step643 bitmapPrefix, 2623) (after644 (step643 bitmapPrefix), 2733) stackBody643_226 10 bodies644 frames644 (function643_eq bitmapPrefix) (compiled644_eq (step643 bitmapPrefix))
def step642 (bitmapPrefix : AppList (BitVec 64)) := (function642 bitmapPrefix).2.2.1
def programs642 := (642, StackAnalysis.optimized642.2.1, StackAnalysis.optimized642.2.2) :: programs643
def bodies642 := (642, stackBody642_200) :: bodies643
def frames642 := 6 :: frames643
def after642 (bitmapPrefix : AppList (BitVec 64)) := after643 (step642 bitmapPrefix)
theorem compiled642_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs642 (bitmapPrefix, 2618) = (bodies642, frames642, after642 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 642 StackAnalysis.optimized642.2.1 StackAnalysis.optimized642.2.2 programs643 (bitmapPrefix, 2618) (step642 bitmapPrefix, 2620) (after643 (step642 bitmapPrefix), 2733) stackBody642_200 6 bodies643 frames643 (function642_eq bitmapPrefix) (compiled643_eq (step642 bitmapPrefix))
def step641 (bitmapPrefix : AppList (BitVec 64)) := (function641 bitmapPrefix).2.2.1
def programs641 := (641, StackAnalysis.optimized641.2.1, StackAnalysis.optimized641.2.2) :: programs642
def bodies641 := (641, stackBody641_2203) :: bodies642
def frames641 := 23 :: frames642
def after641 (bitmapPrefix : AppList (BitVec 64)) := after642 (step641 bitmapPrefix)
theorem compiled641_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs641 (bitmapPrefix, 2593) = (bodies641, frames641, after641 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 641 StackAnalysis.optimized641.2.1 StackAnalysis.optimized641.2.2 programs642 (bitmapPrefix, 2593) (step641 bitmapPrefix, 2618) (after642 (step641 bitmapPrefix), 2733) stackBody641_2203 23 bodies642 frames642 (function641_eq bitmapPrefix) (compiled642_eq (step641 bitmapPrefix))
def step640 (bitmapPrefix : AppList (BitVec 64)) := (function640 bitmapPrefix).2.2.1
def programs640 := (640, StackAnalysis.optimized640.2.1, StackAnalysis.optimized640.2.2) :: programs641
def bodies640 := (640, stackBody640_141) :: bodies641
def frames640 := 4 :: frames641
def after640 (bitmapPrefix : AppList (BitVec 64)) := after641 (step640 bitmapPrefix)
theorem compiled640_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs640 (bitmapPrefix, 2592) = (bodies640, frames640, after640 bitmapPrefix, 2733) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 640 StackAnalysis.optimized640.2.1 StackAnalysis.optimized640.2.2 programs641 (bitmapPrefix, 2592) (step640 bitmapPrefix, 2593) (after641 (step640 bitmapPrefix), 2733) stackBody640_141 4 bodies641 frames641 (function640_eq bitmapPrefix) (compiled641_eq (step640 bitmapPrefix))
def programs := programs640
def bodies := bodies640
def frames := frames640
def after := after640
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2733)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2592) = result bitmapPrefix := compiled640_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk640_655
