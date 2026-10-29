import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function720
import InitECandidate.Proofs.BackendStages.Function721
import InitECandidate.Proofs.BackendStages.Function722
import InitECandidate.Proofs.BackendStages.Function723
import InitECandidate.Proofs.BackendStages.Function724
import InitECandidate.Proofs.BackendStages.Function725
import InitECandidate.Proofs.BackendStages.Function726
import InitECandidate.Proofs.BackendStages.Function727
import InitECandidate.Proofs.BackendStages.Function728
import InitECandidate.Proofs.BackendStages.Function729
import InitECandidate.Proofs.BackendStages.Function730
import InitECandidate.Proofs.BackendStages.Function731
import InitECandidate.Proofs.BackendStages.Function732
import InitECandidate.Proofs.BackendStages.Function733
import InitECandidate.Proofs.BackendStages.Function734
import InitECandidate.Proofs.BackendStages.Function735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk720_735
def programs736 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies736 : List (Nat × StackLang.HolProg 64) := []
def frames736 : List Nat := []
def after736 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled736_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs736 (bitmapPrefix, 3267) = (bodies736, frames736, after736 bitmapPrefix, 3267) := by rfl
def step735 (bitmapPrefix : AppList (BitVec 64)) := (function735 bitmapPrefix).2.2.1
def programs735 := (735, StackAnalysis.optimized735.2.1, StackAnalysis.optimized735.2.2) :: programs736
def bodies735 := (735, stackBody735_388) :: bodies736
def frames735 := 15 :: frames736
def after735 (bitmapPrefix : AppList (BitVec 64)) := after736 (step735 bitmapPrefix)
theorem compiled735_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs735 (bitmapPrefix, 3265) = (bodies735, frames735, after735 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 735 StackAnalysis.optimized735.2.1 StackAnalysis.optimized735.2.2 programs736 (bitmapPrefix, 3265) (step735 bitmapPrefix, 3267) (after736 (step735 bitmapPrefix), 3267) stackBody735_388 15 bodies736 frames736 (function735_eq bitmapPrefix) (compiled736_eq (step735 bitmapPrefix))
def step734 (bitmapPrefix : AppList (BitVec 64)) := (function734 bitmapPrefix).2.2.1
def programs734 := (734, StackAnalysis.optimized734.2.1, StackAnalysis.optimized734.2.2) :: programs735
def bodies734 := (734, stackBody734_388) :: bodies735
def frames734 := 15 :: frames735
def after734 (bitmapPrefix : AppList (BitVec 64)) := after735 (step734 bitmapPrefix)
theorem compiled734_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs734 (bitmapPrefix, 3263) = (bodies734, frames734, after734 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 734 StackAnalysis.optimized734.2.1 StackAnalysis.optimized734.2.2 programs735 (bitmapPrefix, 3263) (step734 bitmapPrefix, 3265) (after735 (step734 bitmapPrefix), 3267) stackBody734_388 15 bodies735 frames735 (function734_eq bitmapPrefix) (compiled735_eq (step734 bitmapPrefix))
def step733 (bitmapPrefix : AppList (BitVec 64)) := (function733 bitmapPrefix).2.2.1
def programs733 := (733, StackAnalysis.optimized733.2.1, StackAnalysis.optimized733.2.2) :: programs734
def bodies733 := (733, stackBody733_188) :: bodies734
def frames733 := 4 :: frames734
def after733 (bitmapPrefix : AppList (BitVec 64)) := after734 (step733 bitmapPrefix)
theorem compiled733_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs733 (bitmapPrefix, 3262) = (bodies733, frames733, after733 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 733 StackAnalysis.optimized733.2.1 StackAnalysis.optimized733.2.2 programs734 (bitmapPrefix, 3262) (step733 bitmapPrefix, 3263) (after734 (step733 bitmapPrefix), 3267) stackBody733_188 4 bodies734 frames734 (function733_eq bitmapPrefix) (compiled734_eq (step733 bitmapPrefix))
def step732 (bitmapPrefix : AppList (BitVec 64)) := (function732 bitmapPrefix).2.2.1
def programs732 := (732, StackAnalysis.optimized732.2.1, StackAnalysis.optimized732.2.2) :: programs733
def bodies732 := (732, stackBody732_114) :: bodies733
def frames732 := 0 :: frames733
def after732 (bitmapPrefix : AppList (BitVec 64)) := after733 (step732 bitmapPrefix)
theorem compiled732_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs732 (bitmapPrefix, 3262) = (bodies732, frames732, after732 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 732 StackAnalysis.optimized732.2.1 StackAnalysis.optimized732.2.2 programs733 (bitmapPrefix, 3262) (step732 bitmapPrefix, 3262) (after733 (step732 bitmapPrefix), 3267) stackBody732_114 0 bodies733 frames733 (function732_eq bitmapPrefix) (compiled733_eq (step732 bitmapPrefix))
def step731 (bitmapPrefix : AppList (BitVec 64)) := (function731 bitmapPrefix).2.2.1
def programs731 := (731, StackAnalysis.optimized731.2.1, StackAnalysis.optimized731.2.2) :: programs732
def bodies731 := (731, stackBody731_84) :: bodies732
def frames731 := 0 :: frames732
def after731 (bitmapPrefix : AppList (BitVec 64)) := after732 (step731 bitmapPrefix)
theorem compiled731_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs731 (bitmapPrefix, 3262) = (bodies731, frames731, after731 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 731 StackAnalysis.optimized731.2.1 StackAnalysis.optimized731.2.2 programs732 (bitmapPrefix, 3262) (step731 bitmapPrefix, 3262) (after732 (step731 bitmapPrefix), 3267) stackBody731_84 0 bodies732 frames732 (function731_eq bitmapPrefix) (compiled732_eq (step731 bitmapPrefix))
def step730 (bitmapPrefix : AppList (BitVec 64)) := (function730 bitmapPrefix).2.2.1
def programs730 := (730, StackAnalysis.optimized730.2.1, StackAnalysis.optimized730.2.2) :: programs731
def bodies730 := (730, stackBody730_60) :: bodies731
def frames730 := 2 :: frames731
def after730 (bitmapPrefix : AppList (BitVec 64)) := after731 (step730 bitmapPrefix)
theorem compiled730_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs730 (bitmapPrefix, 3261) = (bodies730, frames730, after730 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 730 StackAnalysis.optimized730.2.1 StackAnalysis.optimized730.2.2 programs731 (bitmapPrefix, 3261) (step730 bitmapPrefix, 3262) (after731 (step730 bitmapPrefix), 3267) stackBody730_60 2 bodies731 frames731 (function730_eq bitmapPrefix) (compiled731_eq (step730 bitmapPrefix))
def step729 (bitmapPrefix : AppList (BitVec 64)) := (function729 bitmapPrefix).2.2.1
def programs729 := (729, StackAnalysis.optimized729.2.1, StackAnalysis.optimized729.2.2) :: programs730
def bodies729 := (729, stackBody729_60) :: bodies730
def frames729 := 2 :: frames730
def after729 (bitmapPrefix : AppList (BitVec 64)) := after730 (step729 bitmapPrefix)
theorem compiled729_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs729 (bitmapPrefix, 3260) = (bodies729, frames729, after729 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 729 StackAnalysis.optimized729.2.1 StackAnalysis.optimized729.2.2 programs730 (bitmapPrefix, 3260) (step729 bitmapPrefix, 3261) (after730 (step729 bitmapPrefix), 3267) stackBody729_60 2 bodies730 frames730 (function729_eq bitmapPrefix) (compiled730_eq (step729 bitmapPrefix))
def step728 (bitmapPrefix : AppList (BitVec 64)) := (function728 bitmapPrefix).2.2.1
def programs728 := (728, StackAnalysis.optimized728.2.1, StackAnalysis.optimized728.2.2) :: programs729
def bodies728 := (728, stackBody728_228) :: bodies729
def frames728 := 9 :: frames729
def after728 (bitmapPrefix : AppList (BitVec 64)) := after729 (step728 bitmapPrefix)
theorem compiled728_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs728 (bitmapPrefix, 3257) = (bodies728, frames728, after728 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 728 StackAnalysis.optimized728.2.1 StackAnalysis.optimized728.2.2 programs729 (bitmapPrefix, 3257) (step728 bitmapPrefix, 3260) (after729 (step728 bitmapPrefix), 3267) stackBody728_228 9 bodies729 frames729 (function728_eq bitmapPrefix) (compiled729_eq (step728 bitmapPrefix))
def step727 (bitmapPrefix : AppList (BitVec 64)) := (function727 bitmapPrefix).2.2.1
def programs727 := (727, StackAnalysis.optimized727.2.1, StackAnalysis.optimized727.2.2) :: programs728
def bodies727 := (727, stackBody727_348) :: bodies728
def frames727 := 9 :: frames728
def after727 (bitmapPrefix : AppList (BitVec 64)) := after728 (step727 bitmapPrefix)
theorem compiled727_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs727 (bitmapPrefix, 3253) = (bodies727, frames727, after727 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 727 StackAnalysis.optimized727.2.1 StackAnalysis.optimized727.2.2 programs728 (bitmapPrefix, 3253) (step727 bitmapPrefix, 3257) (after728 (step727 bitmapPrefix), 3267) stackBody727_348 9 bodies728 frames728 (function727_eq bitmapPrefix) (compiled728_eq (step727 bitmapPrefix))
def step726 (bitmapPrefix : AppList (BitVec 64)) := (function726 bitmapPrefix).2.2.1
def programs726 := (726, StackAnalysis.optimized726.2.1, StackAnalysis.optimized726.2.2) :: programs727
def bodies726 := (726, stackBody726_392) :: bodies727
def frames726 := 8 :: frames727
def after726 (bitmapPrefix : AppList (BitVec 64)) := after727 (step726 bitmapPrefix)
theorem compiled726_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs726 (bitmapPrefix, 3247) = (bodies726, frames726, after726 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 726 StackAnalysis.optimized726.2.1 StackAnalysis.optimized726.2.2 programs727 (bitmapPrefix, 3247) (step726 bitmapPrefix, 3253) (after727 (step726 bitmapPrefix), 3267) stackBody726_392 8 bodies727 frames727 (function726_eq bitmapPrefix) (compiled727_eq (step726 bitmapPrefix))
def step725 (bitmapPrefix : AppList (BitVec 64)) := (function725 bitmapPrefix).2.2.1
def programs725 := (725, StackAnalysis.optimized725.2.1, StackAnalysis.optimized725.2.2) :: programs726
def bodies725 := (725, stackBody725_612) :: bodies726
def frames725 := 29 :: frames726
def after725 (bitmapPrefix : AppList (BitVec 64)) := after726 (step725 bitmapPrefix)
theorem compiled725_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs725 (bitmapPrefix, 3247) = (bodies725, frames725, after725 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 725 StackAnalysis.optimized725.2.1 StackAnalysis.optimized725.2.2 programs726 (bitmapPrefix, 3247) (step725 bitmapPrefix, 3247) (after726 (step725 bitmapPrefix), 3267) stackBody725_612 29 bodies726 frames726 (function725_eq bitmapPrefix) (compiled726_eq (step725 bitmapPrefix))
def step724 (bitmapPrefix : AppList (BitVec 64)) := (function724 bitmapPrefix).2.2.1
def programs724 := (724, StackAnalysis.optimized724.2.1, StackAnalysis.optimized724.2.2) :: programs725
def bodies724 := (724, stackBody724_126) :: bodies725
def frames724 := 2 :: frames725
def after724 (bitmapPrefix : AppList (BitVec 64)) := after725 (step724 bitmapPrefix)
theorem compiled724_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs724 (bitmapPrefix, 3245) = (bodies724, frames724, after724 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 724 StackAnalysis.optimized724.2.1 StackAnalysis.optimized724.2.2 programs725 (bitmapPrefix, 3245) (step724 bitmapPrefix, 3247) (after725 (step724 bitmapPrefix), 3267) stackBody724_126 2 bodies725 frames725 (function724_eq bitmapPrefix) (compiled725_eq (step724 bitmapPrefix))
def step723 (bitmapPrefix : AppList (BitVec 64)) := (function723 bitmapPrefix).2.2.1
def programs723 := (723, StackAnalysis.optimized723.2.1, StackAnalysis.optimized723.2.2) :: programs724
def bodies723 := (723, stackBody723_60) :: bodies724
def frames723 := 2 :: frames724
def after723 (bitmapPrefix : AppList (BitVec 64)) := after724 (step723 bitmapPrefix)
theorem compiled723_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs723 (bitmapPrefix, 3244) = (bodies723, frames723, after723 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 723 StackAnalysis.optimized723.2.1 StackAnalysis.optimized723.2.2 programs724 (bitmapPrefix, 3244) (step723 bitmapPrefix, 3245) (after724 (step723 bitmapPrefix), 3267) stackBody723_60 2 bodies724 frames724 (function723_eq bitmapPrefix) (compiled724_eq (step723 bitmapPrefix))
def step722 (bitmapPrefix : AppList (BitVec 64)) := (function722 bitmapPrefix).2.2.1
def programs722 := (722, StackAnalysis.optimized722.2.1, StackAnalysis.optimized722.2.2) :: programs723
def bodies722 := (722, stackBody722_475) :: bodies723
def frames722 := 12 :: frames723
def after722 (bitmapPrefix : AppList (BitVec 64)) := after723 (step722 bitmapPrefix)
theorem compiled722_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs722 (bitmapPrefix, 3242) = (bodies722, frames722, after722 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 722 StackAnalysis.optimized722.2.1 StackAnalysis.optimized722.2.2 programs723 (bitmapPrefix, 3242) (step722 bitmapPrefix, 3244) (after723 (step722 bitmapPrefix), 3267) stackBody722_475 12 bodies723 frames723 (function722_eq bitmapPrefix) (compiled723_eq (step722 bitmapPrefix))
def step721 (bitmapPrefix : AppList (BitVec 64)) := (function721 bitmapPrefix).2.2.1
def programs721 := (721, StackAnalysis.optimized721.2.1, StackAnalysis.optimized721.2.2) :: programs722
def bodies721 := (721, stackBody721_72) :: bodies722
def frames721 := 2 :: frames722
def after721 (bitmapPrefix : AppList (BitVec 64)) := after722 (step721 bitmapPrefix)
theorem compiled721_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs721 (bitmapPrefix, 3241) = (bodies721, frames721, after721 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 721 StackAnalysis.optimized721.2.1 StackAnalysis.optimized721.2.2 programs722 (bitmapPrefix, 3241) (step721 bitmapPrefix, 3242) (after722 (step721 bitmapPrefix), 3267) stackBody721_72 2 bodies722 frames722 (function721_eq bitmapPrefix) (compiled722_eq (step721 bitmapPrefix))
def step720 (bitmapPrefix : AppList (BitVec 64)) := (function720 bitmapPrefix).2.2.1
def programs720 := (720, StackAnalysis.optimized720.2.1, StackAnalysis.optimized720.2.2) :: programs721
def bodies720 := (720, stackBody720_2227) :: bodies721
def frames720 := 33 :: frames721
def after720 (bitmapPrefix : AppList (BitVec 64)) := after721 (step720 bitmapPrefix)
theorem compiled720_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs720 (bitmapPrefix, 3231) = (bodies720, frames720, after720 bitmapPrefix, 3267) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 720 StackAnalysis.optimized720.2.1 StackAnalysis.optimized720.2.2 programs721 (bitmapPrefix, 3231) (step720 bitmapPrefix, 3241) (after721 (step720 bitmapPrefix), 3267) stackBody720_2227 33 bodies721 frames721 (function720_eq bitmapPrefix) (compiled721_eq (step720 bitmapPrefix))
def programs := programs720
def bodies := bodies720
def frames := frames720
def after := after720
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 3267)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 3231) = result bitmapPrefix := compiled720_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk720_735
