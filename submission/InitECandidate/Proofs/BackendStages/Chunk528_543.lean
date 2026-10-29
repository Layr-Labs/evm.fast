import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function528
import InitECandidate.Proofs.BackendStages.Function529
import InitECandidate.Proofs.BackendStages.Function530
import InitECandidate.Proofs.BackendStages.Function531
import InitECandidate.Proofs.BackendStages.Function532
import InitECandidate.Proofs.BackendStages.Function533
import InitECandidate.Proofs.BackendStages.Function534
import InitECandidate.Proofs.BackendStages.Function535
import InitECandidate.Proofs.BackendStages.Function536
import InitECandidate.Proofs.BackendStages.Function537
import InitECandidate.Proofs.BackendStages.Function538
import InitECandidate.Proofs.BackendStages.Function539
import InitECandidate.Proofs.BackendStages.Function540
import InitECandidate.Proofs.BackendStages.Function541
import InitECandidate.Proofs.BackendStages.Function542
import InitECandidate.Proofs.BackendStages.Function543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk528_543
def programs544 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies544 : List (Nat × StackLang.HolProg 64) := []
def frames544 : List Nat := []
def after544 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled544_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs544 (bitmapPrefix, 1799) = (bodies544, frames544, after544 bitmapPrefix, 1799) := by rfl
def step543 (bitmapPrefix : AppList (BitVec 64)) := (function543 bitmapPrefix).2.2.1
def programs543 := (543, StackAnalysis.optimized543.2.1, StackAnalysis.optimized543.2.2) :: programs544
def bodies543 := (543, stackBody543_292) :: bodies544
def frames543 := 2 :: frames544
def after543 (bitmapPrefix : AppList (BitVec 64)) := after544 (step543 bitmapPrefix)
theorem compiled543_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs543 (bitmapPrefix, 1794) = (bodies543, frames543, after543 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 543 StackAnalysis.optimized543.2.1 StackAnalysis.optimized543.2.2 programs544 (bitmapPrefix, 1794) (step543 bitmapPrefix, 1799) (after544 (step543 bitmapPrefix), 1799) stackBody543_292 2 bodies544 frames544 (function543_eq bitmapPrefix) (compiled544_eq (step543 bitmapPrefix))
def step542 (bitmapPrefix : AppList (BitVec 64)) := (function542 bitmapPrefix).2.2.1
def programs542 := (542, StackAnalysis.optimized542.2.1, StackAnalysis.optimized542.2.2) :: programs543
def bodies542 := (542, stackBody542_314) :: bodies543
def frames542 := 2 :: frames543
def after542 (bitmapPrefix : AppList (BitVec 64)) := after543 (step542 bitmapPrefix)
theorem compiled542_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs542 (bitmapPrefix, 1789) = (bodies542, frames542, after542 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 542 StackAnalysis.optimized542.2.1 StackAnalysis.optimized542.2.2 programs543 (bitmapPrefix, 1789) (step542 bitmapPrefix, 1794) (after543 (step542 bitmapPrefix), 1799) stackBody542_314 2 bodies543 frames543 (function542_eq bitmapPrefix) (compiled543_eq (step542 bitmapPrefix))
def step541 (bitmapPrefix : AppList (BitVec 64)) := (function541 bitmapPrefix).2.2.1
def programs541 := (541, StackAnalysis.optimized541.2.1, StackAnalysis.optimized541.2.2) :: programs542
def bodies541 := (541, stackBody541_66) :: bodies542
def frames541 := 0 :: frames542
def after541 (bitmapPrefix : AppList (BitVec 64)) := after542 (step541 bitmapPrefix)
theorem compiled541_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs541 (bitmapPrefix, 1789) = (bodies541, frames541, after541 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 541 StackAnalysis.optimized541.2.1 StackAnalysis.optimized541.2.2 programs542 (bitmapPrefix, 1789) (step541 bitmapPrefix, 1789) (after542 (step541 bitmapPrefix), 1799) stackBody541_66 0 bodies542 frames542 (function541_eq bitmapPrefix) (compiled542_eq (step541 bitmapPrefix))
def step540 (bitmapPrefix : AppList (BitVec 64)) := (function540 bitmapPrefix).2.2.1
def programs540 := (540, StackAnalysis.optimized540.2.1, StackAnalysis.optimized540.2.2) :: programs541
def bodies540 := (540, stackBody540_48) :: bodies541
def frames540 := 0 :: frames541
def after540 (bitmapPrefix : AppList (BitVec 64)) := after541 (step540 bitmapPrefix)
theorem compiled540_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs540 (bitmapPrefix, 1789) = (bodies540, frames540, after540 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 540 StackAnalysis.optimized540.2.1 StackAnalysis.optimized540.2.2 programs541 (bitmapPrefix, 1789) (step540 bitmapPrefix, 1789) (after541 (step540 bitmapPrefix), 1799) stackBody540_48 0 bodies541 frames541 (function540_eq bitmapPrefix) (compiled541_eq (step540 bitmapPrefix))
def step539 (bitmapPrefix : AppList (BitVec 64)) := (function539 bitmapPrefix).2.2.1
def programs539 := (539, StackAnalysis.optimized539.2.1, StackAnalysis.optimized539.2.2) :: programs540
def bodies539 := (539, stackBody539_196) :: bodies540
def frames539 := 3 :: frames540
def after539 (bitmapPrefix : AppList (BitVec 64)) := after540 (step539 bitmapPrefix)
theorem compiled539_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs539 (bitmapPrefix, 1786) = (bodies539, frames539, after539 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 539 StackAnalysis.optimized539.2.1 StackAnalysis.optimized539.2.2 programs540 (bitmapPrefix, 1786) (step539 bitmapPrefix, 1789) (after540 (step539 bitmapPrefix), 1799) stackBody539_196 3 bodies540 frames540 (function539_eq bitmapPrefix) (compiled540_eq (step539 bitmapPrefix))
def step538 (bitmapPrefix : AppList (BitVec 64)) := (function538 bitmapPrefix).2.2.1
def programs538 := (538, StackAnalysis.optimized538.2.1, StackAnalysis.optimized538.2.2) :: programs539
def bodies538 := (538, stackBody538_110) :: bodies539
def frames538 := 0 :: frames539
def after538 (bitmapPrefix : AppList (BitVec 64)) := after539 (step538 bitmapPrefix)
theorem compiled538_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs538 (bitmapPrefix, 1786) = (bodies538, frames538, after538 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 538 StackAnalysis.optimized538.2.1 StackAnalysis.optimized538.2.2 programs539 (bitmapPrefix, 1786) (step538 bitmapPrefix, 1786) (after539 (step538 bitmapPrefix), 1799) stackBody538_110 0 bodies539 frames539 (function538_eq bitmapPrefix) (compiled539_eq (step538 bitmapPrefix))
def step537 (bitmapPrefix : AppList (BitVec 64)) := (function537 bitmapPrefix).2.2.1
def programs537 := (537, StackAnalysis.optimized537.2.1, StackAnalysis.optimized537.2.2) :: programs538
def bodies537 := (537, stackBody537_224) :: bodies538
def frames537 := 3 :: frames538
def after537 (bitmapPrefix : AppList (BitVec 64)) := after538 (step537 bitmapPrefix)
theorem compiled537_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs537 (bitmapPrefix, 1783) = (bodies537, frames537, after537 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 537 StackAnalysis.optimized537.2.1 StackAnalysis.optimized537.2.2 programs538 (bitmapPrefix, 1783) (step537 bitmapPrefix, 1786) (after538 (step537 bitmapPrefix), 1799) stackBody537_224 3 bodies538 frames538 (function537_eq bitmapPrefix) (compiled538_eq (step537 bitmapPrefix))
def step536 (bitmapPrefix : AppList (BitVec 64)) := (function536 bitmapPrefix).2.2.1
def programs536 := (536, StackAnalysis.optimized536.2.1, StackAnalysis.optimized536.2.2) :: programs537
def bodies536 := (536, stackBody536_536) :: bodies537
def frames536 := 7 :: frames537
def after536 (bitmapPrefix : AppList (BitVec 64)) := after537 (step536 bitmapPrefix)
theorem compiled536_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs536 (bitmapPrefix, 1774) = (bodies536, frames536, after536 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 536 StackAnalysis.optimized536.2.1 StackAnalysis.optimized536.2.2 programs537 (bitmapPrefix, 1774) (step536 bitmapPrefix, 1783) (after537 (step536 bitmapPrefix), 1799) stackBody536_536 7 bodies537 frames537 (function536_eq bitmapPrefix) (compiled537_eq (step536 bitmapPrefix))
def step535 (bitmapPrefix : AppList (BitVec 64)) := (function535 bitmapPrefix).2.2.1
def programs535 := (535, StackAnalysis.optimized535.2.1, StackAnalysis.optimized535.2.2) :: programs536
def bodies535 := (535, stackBody535_156) :: bodies536
def frames535 := 2 :: frames536
def after535 (bitmapPrefix : AppList (BitVec 64)) := after536 (step535 bitmapPrefix)
theorem compiled535_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs535 (bitmapPrefix, 1771) = (bodies535, frames535, after535 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 535 StackAnalysis.optimized535.2.1 StackAnalysis.optimized535.2.2 programs536 (bitmapPrefix, 1771) (step535 bitmapPrefix, 1774) (after536 (step535 bitmapPrefix), 1799) stackBody535_156 2 bodies536 frames536 (function535_eq bitmapPrefix) (compiled536_eq (step535 bitmapPrefix))
def step534 (bitmapPrefix : AppList (BitVec 64)) := (function534 bitmapPrefix).2.2.1
def programs534 := (534, StackAnalysis.optimized534.2.1, StackAnalysis.optimized534.2.2) :: programs535
def bodies534 := (534, stackBody534_1172) :: bodies535
def frames534 := 15 :: frames535
def after534 (bitmapPrefix : AppList (BitVec 64)) := after535 (step534 bitmapPrefix)
theorem compiled534_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs534 (bitmapPrefix, 1754) = (bodies534, frames534, after534 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 534 StackAnalysis.optimized534.2.1 StackAnalysis.optimized534.2.2 programs535 (bitmapPrefix, 1754) (step534 bitmapPrefix, 1771) (after535 (step534 bitmapPrefix), 1799) stackBody534_1172 15 bodies535 frames535 (function534_eq bitmapPrefix) (compiled535_eq (step534 bitmapPrefix))
def step533 (bitmapPrefix : AppList (BitVec 64)) := (function533 bitmapPrefix).2.2.1
def programs533 := (533, StackAnalysis.optimized533.2.1, StackAnalysis.optimized533.2.2) :: programs534
def bodies533 := (533, stackBody533_168) :: bodies534
def frames533 := 2 :: frames534
def after533 (bitmapPrefix : AppList (BitVec 64)) := after534 (step533 bitmapPrefix)
theorem compiled533_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs533 (bitmapPrefix, 1751) = (bodies533, frames533, after533 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 533 StackAnalysis.optimized533.2.1 StackAnalysis.optimized533.2.2 programs534 (bitmapPrefix, 1751) (step533 bitmapPrefix, 1754) (after534 (step533 bitmapPrefix), 1799) stackBody533_168 2 bodies534 frames534 (function533_eq bitmapPrefix) (compiled534_eq (step533 bitmapPrefix))
def step532 (bitmapPrefix : AppList (BitVec 64)) := (function532 bitmapPrefix).2.2.1
def programs532 := (532, StackAnalysis.optimized532.2.1, StackAnalysis.optimized532.2.2) :: programs533
def bodies532 := (532, stackBody532_350) :: bodies533
def frames532 := 6 :: frames533
def after532 (bitmapPrefix : AppList (BitVec 64)) := after533 (step532 bitmapPrefix)
theorem compiled532_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs532 (bitmapPrefix, 1745) = (bodies532, frames532, after532 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 532 StackAnalysis.optimized532.2.1 StackAnalysis.optimized532.2.2 programs533 (bitmapPrefix, 1745) (step532 bitmapPrefix, 1751) (after533 (step532 bitmapPrefix), 1799) stackBody532_350 6 bodies533 frames533 (function532_eq bitmapPrefix) (compiled533_eq (step532 bitmapPrefix))
def step531 (bitmapPrefix : AppList (BitVec 64)) := (function531 bitmapPrefix).2.2.1
def programs531 := (531, StackAnalysis.optimized531.2.1, StackAnalysis.optimized531.2.2) :: programs532
def bodies531 := (531, stackBody531_324) :: bodies532
def frames531 := 7 :: frames532
def after531 (bitmapPrefix : AppList (BitVec 64)) := after532 (step531 bitmapPrefix)
theorem compiled531_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs531 (bitmapPrefix, 1740) = (bodies531, frames531, after531 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 531 StackAnalysis.optimized531.2.1 StackAnalysis.optimized531.2.2 programs532 (bitmapPrefix, 1740) (step531 bitmapPrefix, 1745) (after532 (step531 bitmapPrefix), 1799) stackBody531_324 7 bodies532 frames532 (function531_eq bitmapPrefix) (compiled532_eq (step531 bitmapPrefix))
def step530 (bitmapPrefix : AppList (BitVec 64)) := (function530 bitmapPrefix).2.2.1
def programs530 := (530, StackAnalysis.optimized530.2.1, StackAnalysis.optimized530.2.2) :: programs531
def bodies530 := (530, stackBody530_414) :: bodies531
def frames530 := 10 :: frames531
def after530 (bitmapPrefix : AppList (BitVec 64)) := after531 (step530 bitmapPrefix)
theorem compiled530_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs530 (bitmapPrefix, 1734) = (bodies530, frames530, after530 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 530 StackAnalysis.optimized530.2.1 StackAnalysis.optimized530.2.2 programs531 (bitmapPrefix, 1734) (step530 bitmapPrefix, 1740) (after531 (step530 bitmapPrefix), 1799) stackBody530_414 10 bodies531 frames531 (function530_eq bitmapPrefix) (compiled531_eq (step530 bitmapPrefix))
def step529 (bitmapPrefix : AppList (BitVec 64)) := (function529 bitmapPrefix).2.2.1
def programs529 := (529, StackAnalysis.optimized529.2.1, StackAnalysis.optimized529.2.2) :: programs530
def bodies529 := (529, stackBody529_110) :: bodies530
def frames529 := 2 :: frames530
def after529 (bitmapPrefix : AppList (BitVec 64)) := after530 (step529 bitmapPrefix)
theorem compiled529_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs529 (bitmapPrefix, 1732) = (bodies529, frames529, after529 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 529 StackAnalysis.optimized529.2.1 StackAnalysis.optimized529.2.2 programs530 (bitmapPrefix, 1732) (step529 bitmapPrefix, 1734) (after530 (step529 bitmapPrefix), 1799) stackBody529_110 2 bodies530 frames530 (function529_eq bitmapPrefix) (compiled530_eq (step529 bitmapPrefix))
def step528 (bitmapPrefix : AppList (BitVec 64)) := (function528 bitmapPrefix).2.2.1
def programs528 := (528, StackAnalysis.optimized528.2.1, StackAnalysis.optimized528.2.2) :: programs529
def bodies528 := (528, stackBody528_168) :: bodies529
def frames528 := 2 :: frames529
def after528 (bitmapPrefix : AppList (BitVec 64)) := after529 (step528 bitmapPrefix)
theorem compiled528_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs528 (bitmapPrefix, 1729) = (bodies528, frames528, after528 bitmapPrefix, 1799) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 528 StackAnalysis.optimized528.2.1 StackAnalysis.optimized528.2.2 programs529 (bitmapPrefix, 1729) (step528 bitmapPrefix, 1732) (after529 (step528 bitmapPrefix), 1799) stackBody528_168 2 bodies529 frames529 (function528_eq bitmapPrefix) (compiled529_eq (step528 bitmapPrefix))
def programs := programs528
def bodies := bodies528
def frames := frames528
def after := after528
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1799)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1729) = result bitmapPrefix := compiled528_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk528_543
