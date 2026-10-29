import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function624
import InitECandidate.Proofs.BackendStages.Function625
import InitECandidate.Proofs.BackendStages.Function626
import InitECandidate.Proofs.BackendStages.Function627
import InitECandidate.Proofs.BackendStages.Function628
import InitECandidate.Proofs.BackendStages.Function629
import InitECandidate.Proofs.BackendStages.Function630
import InitECandidate.Proofs.BackendStages.Function631
import InitECandidate.Proofs.BackendStages.Function632
import InitECandidate.Proofs.BackendStages.Function633
import InitECandidate.Proofs.BackendStages.Function634
import InitECandidate.Proofs.BackendStages.Function635
import InitECandidate.Proofs.BackendStages.Function636
import InitECandidate.Proofs.BackendStages.Function637
import InitECandidate.Proofs.BackendStages.Function638
import InitECandidate.Proofs.BackendStages.Function639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk624_639
def programs640 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies640 : List (Nat × StackLang.HolProg 64) := []
def frames640 : List Nat := []
def after640 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled640_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs640 (bitmapPrefix, 2592) = (bodies640, frames640, after640 bitmapPrefix, 2592) := by rfl
def step639 (bitmapPrefix : AppList (BitVec 64)) := (function639 bitmapPrefix).2.2.1
def programs639 := (639, StackAnalysis.optimized639.2.1, StackAnalysis.optimized639.2.2) :: programs640
def bodies639 := (639, stackBody639_294) :: bodies640
def frames639 := 9 :: frames640
def after639 (bitmapPrefix : AppList (BitVec 64)) := after640 (step639 bitmapPrefix)
theorem compiled639_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs639 (bitmapPrefix, 2588) = (bodies639, frames639, after639 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 639 StackAnalysis.optimized639.2.1 StackAnalysis.optimized639.2.2 programs640 (bitmapPrefix, 2588) (step639 bitmapPrefix, 2592) (after640 (step639 bitmapPrefix), 2592) stackBody639_294 9 bodies640 frames640 (function639_eq bitmapPrefix) (compiled640_eq (step639 bitmapPrefix))
def step638 (bitmapPrefix : AppList (BitVec 64)) := (function638 bitmapPrefix).2.2.1
def programs638 := (638, StackAnalysis.optimized638.2.1, StackAnalysis.optimized638.2.2) :: programs639
def bodies638 := (638, stackBody638_1493) :: bodies639
def frames638 := 18 :: frames639
def after638 (bitmapPrefix : AppList (BitVec 64)) := after639 (step638 bitmapPrefix)
theorem compiled638_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs638 (bitmapPrefix, 2585) = (bodies638, frames638, after638 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 638 StackAnalysis.optimized638.2.1 StackAnalysis.optimized638.2.2 programs639 (bitmapPrefix, 2585) (step638 bitmapPrefix, 2588) (after639 (step638 bitmapPrefix), 2592) stackBody638_1493 18 bodies639 frames639 (function638_eq bitmapPrefix) (compiled639_eq (step638 bitmapPrefix))
def step637 (bitmapPrefix : AppList (BitVec 64)) := (function637 bitmapPrefix).2.2.1
def programs637 := (637, StackAnalysis.optimized637.2.1, StackAnalysis.optimized637.2.2) :: programs638
def bodies637 := (637, stackBody637_187) :: bodies638
def frames637 := 0 :: frames638
def after637 (bitmapPrefix : AppList (BitVec 64)) := after638 (step637 bitmapPrefix)
theorem compiled637_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs637 (bitmapPrefix, 2585) = (bodies637, frames637, after637 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 637 StackAnalysis.optimized637.2.1 StackAnalysis.optimized637.2.2 programs638 (bitmapPrefix, 2585) (step637 bitmapPrefix, 2585) (after638 (step637 bitmapPrefix), 2592) stackBody637_187 0 bodies638 frames638 (function637_eq bitmapPrefix) (compiled638_eq (step637 bitmapPrefix))
def step636 (bitmapPrefix : AppList (BitVec 64)) := (function636 bitmapPrefix).2.2.1
def programs636 := (636, StackAnalysis.optimized636.2.1, StackAnalysis.optimized636.2.2) :: programs637
def bodies636 := (636, stackBody636_93) :: bodies637
def frames636 := 0 :: frames637
def after636 (bitmapPrefix : AppList (BitVec 64)) := after637 (step636 bitmapPrefix)
theorem compiled636_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs636 (bitmapPrefix, 2585) = (bodies636, frames636, after636 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 636 StackAnalysis.optimized636.2.1 StackAnalysis.optimized636.2.2 programs637 (bitmapPrefix, 2585) (step636 bitmapPrefix, 2585) (after637 (step636 bitmapPrefix), 2592) stackBody636_93 0 bodies637 frames637 (function636_eq bitmapPrefix) (compiled637_eq (step636 bitmapPrefix))
def step635 (bitmapPrefix : AppList (BitVec 64)) := (function635 bitmapPrefix).2.2.1
def programs635 := (635, StackAnalysis.optimized635.2.1, StackAnalysis.optimized635.2.2) :: programs636
def bodies635 := (635, stackBody635_128) :: bodies636
def frames635 := 0 :: frames636
def after635 (bitmapPrefix : AppList (BitVec 64)) := after636 (step635 bitmapPrefix)
theorem compiled635_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs635 (bitmapPrefix, 2585) = (bodies635, frames635, after635 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 635 StackAnalysis.optimized635.2.1 StackAnalysis.optimized635.2.2 programs636 (bitmapPrefix, 2585) (step635 bitmapPrefix, 2585) (after636 (step635 bitmapPrefix), 2592) stackBody635_128 0 bodies636 frames636 (function635_eq bitmapPrefix) (compiled636_eq (step635 bitmapPrefix))
def step634 (bitmapPrefix : AppList (BitVec 64)) := (function634 bitmapPrefix).2.2.1
def programs634 := (634, StackAnalysis.optimized634.2.1, StackAnalysis.optimized634.2.2) :: programs635
def bodies634 := (634, stackBody634_1234) :: bodies635
def frames634 := 10 :: frames635
def after634 (bitmapPrefix : AppList (BitVec 64)) := after635 (step634 bitmapPrefix)
theorem compiled634_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs634 (bitmapPrefix, 2575) = (bodies634, frames634, after634 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 634 StackAnalysis.optimized634.2.1 StackAnalysis.optimized634.2.2 programs635 (bitmapPrefix, 2575) (step634 bitmapPrefix, 2585) (after635 (step634 bitmapPrefix), 2592) stackBody634_1234 10 bodies635 frames635 (function634_eq bitmapPrefix) (compiled635_eq (step634 bitmapPrefix))
def step633 (bitmapPrefix : AppList (BitVec 64)) := (function633 bitmapPrefix).2.2.1
def programs633 := (633, StackAnalysis.optimized633.2.1, StackAnalysis.optimized633.2.2) :: programs634
def bodies633 := (633, stackBody633_124) :: bodies634
def frames633 := 0 :: frames634
def after633 (bitmapPrefix : AppList (BitVec 64)) := after634 (step633 bitmapPrefix)
theorem compiled633_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs633 (bitmapPrefix, 2575) = (bodies633, frames633, after633 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 633 StackAnalysis.optimized633.2.1 StackAnalysis.optimized633.2.2 programs634 (bitmapPrefix, 2575) (step633 bitmapPrefix, 2575) (after634 (step633 bitmapPrefix), 2592) stackBody633_124 0 bodies634 frames634 (function633_eq bitmapPrefix) (compiled634_eq (step633 bitmapPrefix))
def step632 (bitmapPrefix : AppList (BitVec 64)) := (function632 bitmapPrefix).2.2.1
def programs632 := (632, StackAnalysis.optimized632.2.1, StackAnalysis.optimized632.2.2) :: programs633
def bodies632 := (632, stackBody632_436) :: bodies633
def frames632 := 2 :: frames633
def after632 (bitmapPrefix : AppList (BitVec 64)) := after633 (step632 bitmapPrefix)
theorem compiled632_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs632 (bitmapPrefix, 2572) = (bodies632, frames632, after632 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 632 StackAnalysis.optimized632.2.1 StackAnalysis.optimized632.2.2 programs633 (bitmapPrefix, 2572) (step632 bitmapPrefix, 2575) (after633 (step632 bitmapPrefix), 2592) stackBody632_436 2 bodies633 frames633 (function632_eq bitmapPrefix) (compiled633_eq (step632 bitmapPrefix))
def step631 (bitmapPrefix : AppList (BitVec 64)) := (function631 bitmapPrefix).2.2.1
def programs631 := (631, StackAnalysis.optimized631.2.1, StackAnalysis.optimized631.2.2) :: programs632
def bodies631 := (631, stackBody631_734) :: bodies632
def frames631 := 8 :: frames632
def after631 (bitmapPrefix : AppList (BitVec 64)) := after632 (step631 bitmapPrefix)
theorem compiled631_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs631 (bitmapPrefix, 2565) = (bodies631, frames631, after631 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 631 StackAnalysis.optimized631.2.1 StackAnalysis.optimized631.2.2 programs632 (bitmapPrefix, 2565) (step631 bitmapPrefix, 2572) (after632 (step631 bitmapPrefix), 2592) stackBody631_734 8 bodies632 frames632 (function631_eq bitmapPrefix) (compiled632_eq (step631 bitmapPrefix))
def step630 (bitmapPrefix : AppList (BitVec 64)) := (function630 bitmapPrefix).2.2.1
def programs630 := (630, StackAnalysis.optimized630.2.1, StackAnalysis.optimized630.2.2) :: programs631
def bodies630 := (630, stackBody630_952) :: bodies631
def frames630 := 17 :: frames631
def after630 (bitmapPrefix : AppList (BitVec 64)) := after631 (step630 bitmapPrefix)
theorem compiled630_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs630 (bitmapPrefix, 2561) = (bodies630, frames630, after630 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 630 StackAnalysis.optimized630.2.1 StackAnalysis.optimized630.2.2 programs631 (bitmapPrefix, 2561) (step630 bitmapPrefix, 2565) (after631 (step630 bitmapPrefix), 2592) stackBody630_952 17 bodies631 frames631 (function630_eq bitmapPrefix) (compiled631_eq (step630 bitmapPrefix))
def step629 (bitmapPrefix : AppList (BitVec 64)) := (function629 bitmapPrefix).2.2.1
def programs629 := (629, StackAnalysis.optimized629.2.1, StackAnalysis.optimized629.2.2) :: programs630
def bodies629 := (629, stackBody629_78) :: bodies630
def frames629 := 0 :: frames630
def after629 (bitmapPrefix : AppList (BitVec 64)) := after630 (step629 bitmapPrefix)
theorem compiled629_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs629 (bitmapPrefix, 2561) = (bodies629, frames629, after629 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 629 StackAnalysis.optimized629.2.1 StackAnalysis.optimized629.2.2 programs630 (bitmapPrefix, 2561) (step629 bitmapPrefix, 2561) (after630 (step629 bitmapPrefix), 2592) stackBody629_78 0 bodies630 frames630 (function629_eq bitmapPrefix) (compiled630_eq (step629 bitmapPrefix))
def step628 (bitmapPrefix : AppList (BitVec 64)) := (function628 bitmapPrefix).2.2.1
def programs628 := (628, StackAnalysis.optimized628.2.1, StackAnalysis.optimized628.2.2) :: programs629
def bodies628 := (628, stackBody628_78) :: bodies629
def frames628 := 0 :: frames629
def after628 (bitmapPrefix : AppList (BitVec 64)) := after629 (step628 bitmapPrefix)
theorem compiled628_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs628 (bitmapPrefix, 2561) = (bodies628, frames628, after628 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 628 StackAnalysis.optimized628.2.1 StackAnalysis.optimized628.2.2 programs629 (bitmapPrefix, 2561) (step628 bitmapPrefix, 2561) (after629 (step628 bitmapPrefix), 2592) stackBody628_78 0 bodies629 frames629 (function628_eq bitmapPrefix) (compiled629_eq (step628 bitmapPrefix))
def step627 (bitmapPrefix : AppList (BitVec 64)) := (function627 bitmapPrefix).2.2.1
def programs627 := (627, StackAnalysis.optimized627.2.1, StackAnalysis.optimized627.2.2) :: programs628
def bodies627 := (627, stackBody627_148) :: bodies628
def frames627 := 0 :: frames628
def after627 (bitmapPrefix : AppList (BitVec 64)) := after628 (step627 bitmapPrefix)
theorem compiled627_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs627 (bitmapPrefix, 2561) = (bodies627, frames627, after627 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 627 StackAnalysis.optimized627.2.1 StackAnalysis.optimized627.2.2 programs628 (bitmapPrefix, 2561) (step627 bitmapPrefix, 2561) (after628 (step627 bitmapPrefix), 2592) stackBody627_148 0 bodies628 frames628 (function627_eq bitmapPrefix) (compiled628_eq (step627 bitmapPrefix))
def step626 (bitmapPrefix : AppList (BitVec 64)) := (function626 bitmapPrefix).2.2.1
def programs626 := (626, StackAnalysis.optimized626.2.1, StackAnalysis.optimized626.2.2) :: programs627
def bodies626 := (626, stackBody626_524) :: bodies627
def frames626 := 2 :: frames627
def after626 (bitmapPrefix : AppList (BitVec 64)) := after627 (step626 bitmapPrefix)
theorem compiled626_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs626 (bitmapPrefix, 2557) = (bodies626, frames626, after626 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 626 StackAnalysis.optimized626.2.1 StackAnalysis.optimized626.2.2 programs627 (bitmapPrefix, 2557) (step626 bitmapPrefix, 2561) (after627 (step626 bitmapPrefix), 2592) stackBody626_524 2 bodies627 frames627 (function626_eq bitmapPrefix) (compiled627_eq (step626 bitmapPrefix))
def step625 (bitmapPrefix : AppList (BitVec 64)) := (function625 bitmapPrefix).2.2.1
def programs625 := (625, StackAnalysis.optimized625.2.1, StackAnalysis.optimized625.2.2) :: programs626
def bodies625 := (625, stackBody625_604) :: bodies626
def frames625 := 5 :: frames626
def after625 (bitmapPrefix : AppList (BitVec 64)) := after626 (step625 bitmapPrefix)
theorem compiled625_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs625 (bitmapPrefix, 2551) = (bodies625, frames625, after625 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 625 StackAnalysis.optimized625.2.1 StackAnalysis.optimized625.2.2 programs626 (bitmapPrefix, 2551) (step625 bitmapPrefix, 2557) (after626 (step625 bitmapPrefix), 2592) stackBody625_604 5 bodies626 frames626 (function625_eq bitmapPrefix) (compiled626_eq (step625 bitmapPrefix))
def step624 (bitmapPrefix : AppList (BitVec 64)) := (function624 bitmapPrefix).2.2.1
def programs624 := (624, StackAnalysis.optimized624.2.1, StackAnalysis.optimized624.2.2) :: programs625
def bodies624 := (624, stackBody624_2370) :: bodies625
def frames624 := 27 :: frames625
def after624 (bitmapPrefix : AppList (BitVec 64)) := after625 (step624 bitmapPrefix)
theorem compiled624_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs624 (bitmapPrefix, 2525) = (bodies624, frames624, after624 bitmapPrefix, 2592) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 624 StackAnalysis.optimized624.2.1 StackAnalysis.optimized624.2.2 programs625 (bitmapPrefix, 2525) (step624 bitmapPrefix, 2551) (after625 (step624 bitmapPrefix), 2592) stackBody624_2370 27 bodies625 frames625 (function624_eq bitmapPrefix) (compiled625_eq (step624 bitmapPrefix))
def programs := programs624
def bodies := bodies624
def frames := frames624
def after := after624
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2592)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2525) = result bitmapPrefix := compiled624_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk624_639
