import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function576
import InitECandidate.Proofs.BackendStages.Function577
import InitECandidate.Proofs.BackendStages.Function578
import InitECandidate.Proofs.BackendStages.Function579
import InitECandidate.Proofs.BackendStages.Function580
import InitECandidate.Proofs.BackendStages.Function581
import InitECandidate.Proofs.BackendStages.Function582
import InitECandidate.Proofs.BackendStages.Function583
import InitECandidate.Proofs.BackendStages.Function584
import InitECandidate.Proofs.BackendStages.Function585
import InitECandidate.Proofs.BackendStages.Function586
import InitECandidate.Proofs.BackendStages.Function587
import InitECandidate.Proofs.BackendStages.Function588
import InitECandidate.Proofs.BackendStages.Function589
import InitECandidate.Proofs.BackendStages.Function590
import InitECandidate.Proofs.BackendStages.Function591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk576_591
def programs592 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies592 : List (Nat × StackLang.HolProg 64) := []
def frames592 : List Nat := []
def after592 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled592_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs592 (bitmapPrefix, 2127) = (bodies592, frames592, after592 bitmapPrefix, 2127) := by rfl
def step591 (bitmapPrefix : AppList (BitVec 64)) := (function591 bitmapPrefix).2.2.1
def programs591 := (591, StackAnalysis.optimized591.2.1, StackAnalysis.optimized591.2.2) :: programs592
def bodies591 := (591, stackBody591_328) :: bodies592
def frames591 := 4 :: frames592
def after591 (bitmapPrefix : AppList (BitVec 64)) := after592 (step591 bitmapPrefix)
theorem compiled591_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs591 (bitmapPrefix, 2122) = (bodies591, frames591, after591 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 591 StackAnalysis.optimized591.2.1 StackAnalysis.optimized591.2.2 programs592 (bitmapPrefix, 2122) (step591 bitmapPrefix, 2127) (after592 (step591 bitmapPrefix), 2127) stackBody591_328 4 bodies592 frames592 (function591_eq bitmapPrefix) (compiled592_eq (step591 bitmapPrefix))
def step590 (bitmapPrefix : AppList (BitVec 64)) := (function590 bitmapPrefix).2.2.1
def programs590 := (590, StackAnalysis.optimized590.2.1, StackAnalysis.optimized590.2.2) :: programs591
def bodies590 := (590, stackBody590_1574) :: bodies591
def frames590 := 15 :: frames591
def after590 (bitmapPrefix : AppList (BitVec 64)) := after591 (step590 bitmapPrefix)
theorem compiled590_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs590 (bitmapPrefix, 2102) = (bodies590, frames590, after590 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 590 StackAnalysis.optimized590.2.1 StackAnalysis.optimized590.2.2 programs591 (bitmapPrefix, 2102) (step590 bitmapPrefix, 2122) (after591 (step590 bitmapPrefix), 2127) stackBody590_1574 15 bodies591 frames591 (function590_eq bitmapPrefix) (compiled591_eq (step590 bitmapPrefix))
def step589 (bitmapPrefix : AppList (BitVec 64)) := (function589 bitmapPrefix).2.2.1
def programs589 := (589, StackAnalysis.optimized589.2.1, StackAnalysis.optimized589.2.2) :: programs590
def bodies589 := (589, stackBody589_86) :: bodies590
def frames589 := 3 :: frames590
def after589 (bitmapPrefix : AppList (BitVec 64)) := after590 (step589 bitmapPrefix)
theorem compiled589_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs589 (bitmapPrefix, 2101) = (bodies589, frames589, after589 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 589 StackAnalysis.optimized589.2.1 StackAnalysis.optimized589.2.2 programs590 (bitmapPrefix, 2101) (step589 bitmapPrefix, 2102) (after590 (step589 bitmapPrefix), 2127) stackBody589_86 3 bodies590 frames590 (function589_eq bitmapPrefix) (compiled590_eq (step589 bitmapPrefix))
def step588 (bitmapPrefix : AppList (BitVec 64)) := (function588 bitmapPrefix).2.2.1
def programs588 := (588, StackAnalysis.optimized588.2.1, StackAnalysis.optimized588.2.2) :: programs589
def bodies588 := (588, stackBody588_1116) :: bodies589
def frames588 := 8 :: frames589
def after588 (bitmapPrefix : AppList (BitVec 64)) := after589 (step588 bitmapPrefix)
theorem compiled588_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs588 (bitmapPrefix, 2084) = (bodies588, frames588, after588 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 588 StackAnalysis.optimized588.2.1 StackAnalysis.optimized588.2.2 programs589 (bitmapPrefix, 2084) (step588 bitmapPrefix, 2101) (after589 (step588 bitmapPrefix), 2127) stackBody588_1116 8 bodies589 frames589 (function588_eq bitmapPrefix) (compiled589_eq (step588 bitmapPrefix))
def step587 (bitmapPrefix : AppList (BitVec 64)) := (function587 bitmapPrefix).2.2.1
def programs587 := (587, StackAnalysis.optimized587.2.1, StackAnalysis.optimized587.2.2) :: programs588
def bodies587 := (587, stackBody587_548) :: bodies588
def frames587 := 11 :: frames588
def after587 (bitmapPrefix : AppList (BitVec 64)) := after588 (step587 bitmapPrefix)
theorem compiled587_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs587 (bitmapPrefix, 2077) = (bodies587, frames587, after587 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 587 StackAnalysis.optimized587.2.1 StackAnalysis.optimized587.2.2 programs588 (bitmapPrefix, 2077) (step587 bitmapPrefix, 2084) (after588 (step587 bitmapPrefix), 2127) stackBody587_548 11 bodies588 frames588 (function587_eq bitmapPrefix) (compiled588_eq (step587 bitmapPrefix))
def step586 (bitmapPrefix : AppList (BitVec 64)) := (function586 bitmapPrefix).2.2.1
def programs586 := (586, StackAnalysis.optimized586.2.1, StackAnalysis.optimized586.2.2) :: programs587
def bodies586 := (586, stackBody586_560) :: bodies587
def frames586 := 11 :: frames587
def after586 (bitmapPrefix : AppList (BitVec 64)) := after587 (step586 bitmapPrefix)
theorem compiled586_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs586 (bitmapPrefix, 2070) = (bodies586, frames586, after586 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 586 StackAnalysis.optimized586.2.1 StackAnalysis.optimized586.2.2 programs587 (bitmapPrefix, 2070) (step586 bitmapPrefix, 2077) (after587 (step586 bitmapPrefix), 2127) stackBody586_560 11 bodies587 frames587 (function586_eq bitmapPrefix) (compiled587_eq (step586 bitmapPrefix))
def step585 (bitmapPrefix : AppList (BitVec 64)) := (function585 bitmapPrefix).2.2.1
def programs585 := (585, StackAnalysis.optimized585.2.1, StackAnalysis.optimized585.2.2) :: programs586
def bodies585 := (585, stackBody585_778) :: bodies586
def frames585 := 10 :: frames586
def after585 (bitmapPrefix : AppList (BitVec 64)) := after586 (step585 bitmapPrefix)
theorem compiled585_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs585 (bitmapPrefix, 2059) = (bodies585, frames585, after585 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 585 StackAnalysis.optimized585.2.1 StackAnalysis.optimized585.2.2 programs586 (bitmapPrefix, 2059) (step585 bitmapPrefix, 2070) (after586 (step585 bitmapPrefix), 2127) stackBody585_778 10 bodies586 frames586 (function585_eq bitmapPrefix) (compiled586_eq (step585 bitmapPrefix))
def step584 (bitmapPrefix : AppList (BitVec 64)) := (function584 bitmapPrefix).2.2.1
def programs584 := (584, StackAnalysis.optimized584.2.1, StackAnalysis.optimized584.2.2) :: programs585
def bodies584 := (584, stackBody584_1029) :: bodies585
def frames584 := 4 :: frames585
def after584 (bitmapPrefix : AppList (BitVec 64)) := after585 (step584 bitmapPrefix)
theorem compiled584_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs584 (bitmapPrefix, 2047) = (bodies584, frames584, after584 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 584 StackAnalysis.optimized584.2.1 StackAnalysis.optimized584.2.2 programs585 (bitmapPrefix, 2047) (step584 bitmapPrefix, 2059) (after585 (step584 bitmapPrefix), 2127) stackBody584_1029 4 bodies585 frames585 (function584_eq bitmapPrefix) (compiled585_eq (step584 bitmapPrefix))
def step583 (bitmapPrefix : AppList (BitVec 64)) := (function583 bitmapPrefix).2.2.1
def programs583 := (583, StackAnalysis.optimized583.2.1, StackAnalysis.optimized583.2.2) :: programs584
def bodies583 := (583, stackBody583_210) :: bodies584
def frames583 := 2 :: frames584
def after583 (bitmapPrefix : AppList (BitVec 64)) := after584 (step583 bitmapPrefix)
theorem compiled583_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs583 (bitmapPrefix, 2043) = (bodies583, frames583, after583 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 583 StackAnalysis.optimized583.2.1 StackAnalysis.optimized583.2.2 programs584 (bitmapPrefix, 2043) (step583 bitmapPrefix, 2047) (after584 (step583 bitmapPrefix), 2127) stackBody583_210 2 bodies584 frames584 (function583_eq bitmapPrefix) (compiled584_eq (step583 bitmapPrefix))
def step582 (bitmapPrefix : AppList (BitVec 64)) := (function582 bitmapPrefix).2.2.1
def programs582 := (582, StackAnalysis.optimized582.2.1, StackAnalysis.optimized582.2.2) :: programs583
def bodies582 := (582, stackBody582_260) :: bodies583
def frames582 := 2 :: frames583
def after582 (bitmapPrefix : AppList (BitVec 64)) := after583 (step582 bitmapPrefix)
theorem compiled582_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs582 (bitmapPrefix, 2038) = (bodies582, frames582, after582 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 582 StackAnalysis.optimized582.2.1 StackAnalysis.optimized582.2.2 programs583 (bitmapPrefix, 2038) (step582 bitmapPrefix, 2043) (after583 (step582 bitmapPrefix), 2127) stackBody582_260 2 bodies583 frames583 (function582_eq bitmapPrefix) (compiled583_eq (step582 bitmapPrefix))
def step581 (bitmapPrefix : AppList (BitVec 64)) := (function581 bitmapPrefix).2.2.1
def programs581 := (581, StackAnalysis.optimized581.2.1, StackAnalysis.optimized581.2.2) :: programs582
def bodies581 := (581, stackBody581_210) :: bodies582
def frames581 := 2 :: frames582
def after581 (bitmapPrefix : AppList (BitVec 64)) := after582 (step581 bitmapPrefix)
theorem compiled581_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs581 (bitmapPrefix, 2034) = (bodies581, frames581, after581 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 581 StackAnalysis.optimized581.2.1 StackAnalysis.optimized581.2.2 programs582 (bitmapPrefix, 2034) (step581 bitmapPrefix, 2038) (after582 (step581 bitmapPrefix), 2127) stackBody581_210 2 bodies582 frames582 (function581_eq bitmapPrefix) (compiled582_eq (step581 bitmapPrefix))
def step580 (bitmapPrefix : AppList (BitVec 64)) := (function580 bitmapPrefix).2.2.1
def programs580 := (580, StackAnalysis.optimized580.2.1, StackAnalysis.optimized580.2.2) :: programs581
def bodies580 := (580, stackBody580_210) :: bodies581
def frames580 := 2 :: frames581
def after580 (bitmapPrefix : AppList (BitVec 64)) := after581 (step580 bitmapPrefix)
theorem compiled580_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs580 (bitmapPrefix, 2030) = (bodies580, frames580, after580 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 580 StackAnalysis.optimized580.2.1 StackAnalysis.optimized580.2.2 programs581 (bitmapPrefix, 2030) (step580 bitmapPrefix, 2034) (after581 (step580 bitmapPrefix), 2127) stackBody580_210 2 bodies581 frames581 (function580_eq bitmapPrefix) (compiled581_eq (step580 bitmapPrefix))
def step579 (bitmapPrefix : AppList (BitVec 64)) := (function579 bitmapPrefix).2.2.1
def programs579 := (579, StackAnalysis.optimized579.2.1, StackAnalysis.optimized579.2.2) :: programs580
def bodies579 := (579, stackBody579_210) :: bodies580
def frames579 := 2 :: frames580
def after579 (bitmapPrefix : AppList (BitVec 64)) := after580 (step579 bitmapPrefix)
theorem compiled579_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs579 (bitmapPrefix, 2026) = (bodies579, frames579, after579 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 579 StackAnalysis.optimized579.2.1 StackAnalysis.optimized579.2.2 programs580 (bitmapPrefix, 2026) (step579 bitmapPrefix, 2030) (after580 (step579 bitmapPrefix), 2127) stackBody579_210 2 bodies580 frames580 (function579_eq bitmapPrefix) (compiled580_eq (step579 bitmapPrefix))
def step578 (bitmapPrefix : AppList (BitVec 64)) := (function578 bitmapPrefix).2.2.1
def programs578 := (578, StackAnalysis.optimized578.2.1, StackAnalysis.optimized578.2.2) :: programs579
def bodies578 := (578, stackBody578_210) :: bodies579
def frames578 := 2 :: frames579
def after578 (bitmapPrefix : AppList (BitVec 64)) := after579 (step578 bitmapPrefix)
theorem compiled578_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs578 (bitmapPrefix, 2022) = (bodies578, frames578, after578 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 578 StackAnalysis.optimized578.2.1 StackAnalysis.optimized578.2.2 programs579 (bitmapPrefix, 2022) (step578 bitmapPrefix, 2026) (after579 (step578 bitmapPrefix), 2127) stackBody578_210 2 bodies579 frames579 (function578_eq bitmapPrefix) (compiled579_eq (step578 bitmapPrefix))
def step577 (bitmapPrefix : AppList (BitVec 64)) := (function577 bitmapPrefix).2.2.1
def programs577 := (577, StackAnalysis.optimized577.2.1, StackAnalysis.optimized577.2.2) :: programs578
def bodies577 := (577, stackBody577_258) :: bodies578
def frames577 := 2 :: frames578
def after577 (bitmapPrefix : AppList (BitVec 64)) := after578 (step577 bitmapPrefix)
theorem compiled577_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs577 (bitmapPrefix, 2017) = (bodies577, frames577, after577 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 577 StackAnalysis.optimized577.2.1 StackAnalysis.optimized577.2.2 programs578 (bitmapPrefix, 2017) (step577 bitmapPrefix, 2022) (after578 (step577 bitmapPrefix), 2127) stackBody577_258 2 bodies578 frames578 (function577_eq bitmapPrefix) (compiled578_eq (step577 bitmapPrefix))
def step576 (bitmapPrefix : AppList (BitVec 64)) := (function576 bitmapPrefix).2.2.1
def programs576 := (576, StackAnalysis.optimized576.2.1, StackAnalysis.optimized576.2.2) :: programs577
def bodies576 := (576, stackBody576_672) :: bodies577
def frames576 := 6 :: frames577
def after576 (bitmapPrefix : AppList (BitVec 64)) := after577 (step576 bitmapPrefix)
theorem compiled576_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs576 (bitmapPrefix, 2007) = (bodies576, frames576, after576 bitmapPrefix, 2127) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 576 StackAnalysis.optimized576.2.1 StackAnalysis.optimized576.2.2 programs577 (bitmapPrefix, 2007) (step576 bitmapPrefix, 2017) (after577 (step576 bitmapPrefix), 2127) stackBody576_672 6 bodies577 frames577 (function576_eq bitmapPrefix) (compiled577_eq (step576 bitmapPrefix))
def programs := programs576
def bodies := bodies576
def frames := frames576
def after := after576
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2127)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2007) = result bitmapPrefix := compiled576_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk576_591
