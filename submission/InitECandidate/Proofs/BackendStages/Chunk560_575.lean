import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function560
import InitECandidate.Proofs.BackendStages.Function561
import InitECandidate.Proofs.BackendStages.Function562
import InitECandidate.Proofs.BackendStages.Function563
import InitECandidate.Proofs.BackendStages.Function564
import InitECandidate.Proofs.BackendStages.Function565
import InitECandidate.Proofs.BackendStages.Function566
import InitECandidate.Proofs.BackendStages.Function567
import InitECandidate.Proofs.BackendStages.Function568
import InitECandidate.Proofs.BackendStages.Function569
import InitECandidate.Proofs.BackendStages.Function570
import InitECandidate.Proofs.BackendStages.Function571
import InitECandidate.Proofs.BackendStages.Function572
import InitECandidate.Proofs.BackendStages.Function573
import InitECandidate.Proofs.BackendStages.Function574
import InitECandidate.Proofs.BackendStages.Function575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk560_575
def programs576 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies576 : List (Nat × StackLang.HolProg 64) := []
def frames576 : List Nat := []
def after576 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled576_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs576 (bitmapPrefix, 2007) = (bodies576, frames576, after576 bitmapPrefix, 2007) := by rfl
def step575 (bitmapPrefix : AppList (BitVec 64)) := (function575 bitmapPrefix).2.2.1
def programs575 := (575, StackAnalysis.optimized575.2.1, StackAnalysis.optimized575.2.2) :: programs576
def bodies575 := (575, stackBody575_258) :: bodies576
def frames575 := 2 :: frames576
def after575 (bitmapPrefix : AppList (BitVec 64)) := after576 (step575 bitmapPrefix)
theorem compiled575_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs575 (bitmapPrefix, 2002) = (bodies575, frames575, after575 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 575 StackAnalysis.optimized575.2.1 StackAnalysis.optimized575.2.2 programs576 (bitmapPrefix, 2002) (step575 bitmapPrefix, 2007) (after576 (step575 bitmapPrefix), 2007) stackBody575_258 2 bodies576 frames576 (function575_eq bitmapPrefix) (compiled576_eq (step575 bitmapPrefix))
def step574 (bitmapPrefix : AppList (BitVec 64)) := (function574 bitmapPrefix).2.2.1
def programs574 := (574, StackAnalysis.optimized574.2.1, StackAnalysis.optimized574.2.2) :: programs575
def bodies574 := (574, stackBody574_424) :: bodies575
def frames574 := 6 :: frames575
def after574 (bitmapPrefix : AppList (BitVec 64)) := after575 (step574 bitmapPrefix)
theorem compiled574_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs574 (bitmapPrefix, 1995) = (bodies574, frames574, after574 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 574 StackAnalysis.optimized574.2.1 StackAnalysis.optimized574.2.2 programs575 (bitmapPrefix, 1995) (step574 bitmapPrefix, 2002) (after575 (step574 bitmapPrefix), 2007) stackBody574_424 6 bodies575 frames575 (function574_eq bitmapPrefix) (compiled575_eq (step574 bitmapPrefix))
def step573 (bitmapPrefix : AppList (BitVec 64)) := (function573 bitmapPrefix).2.2.1
def programs573 := (573, StackAnalysis.optimized573.2.1, StackAnalysis.optimized573.2.2) :: programs574
def bodies573 := (573, stackBody573_222) :: bodies574
def frames573 := 2 :: frames574
def after573 (bitmapPrefix : AppList (BitVec 64)) := after574 (step573 bitmapPrefix)
theorem compiled573_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs573 (bitmapPrefix, 1991) = (bodies573, frames573, after573 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 573 StackAnalysis.optimized573.2.1 StackAnalysis.optimized573.2.2 programs574 (bitmapPrefix, 1991) (step573 bitmapPrefix, 1995) (after574 (step573 bitmapPrefix), 2007) stackBody573_222 2 bodies574 frames574 (function573_eq bitmapPrefix) (compiled574_eq (step573 bitmapPrefix))
def step572 (bitmapPrefix : AppList (BitVec 64)) := (function572 bitmapPrefix).2.2.1
def programs572 := (572, StackAnalysis.optimized572.2.1, StackAnalysis.optimized572.2.2) :: programs573
def bodies572 := (572, stackBody572_18) :: bodies573
def frames572 := 0 :: frames573
def after572 (bitmapPrefix : AppList (BitVec 64)) := after573 (step572 bitmapPrefix)
theorem compiled572_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs572 (bitmapPrefix, 1991) = (bodies572, frames572, after572 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 572 StackAnalysis.optimized572.2.1 StackAnalysis.optimized572.2.2 programs573 (bitmapPrefix, 1991) (step572 bitmapPrefix, 1991) (after573 (step572 bitmapPrefix), 2007) stackBody572_18 0 bodies573 frames573 (function572_eq bitmapPrefix) (compiled573_eq (step572 bitmapPrefix))
def step571 (bitmapPrefix : AppList (BitVec 64)) := (function571 bitmapPrefix).2.2.1
def programs571 := (571, StackAnalysis.optimized571.2.1, StackAnalysis.optimized571.2.2) :: programs572
def bodies571 := (571, stackBody571_234) :: bodies572
def frames571 := 2 :: frames572
def after571 (bitmapPrefix : AppList (BitVec 64)) := after572 (step571 bitmapPrefix)
theorem compiled571_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs571 (bitmapPrefix, 1987) = (bodies571, frames571, after571 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 571 StackAnalysis.optimized571.2.1 StackAnalysis.optimized571.2.2 programs572 (bitmapPrefix, 1987) (step571 bitmapPrefix, 1991) (after572 (step571 bitmapPrefix), 2007) stackBody571_234 2 bodies572 frames572 (function571_eq bitmapPrefix) (compiled572_eq (step571 bitmapPrefix))
def step570 (bitmapPrefix : AppList (BitVec 64)) := (function570 bitmapPrefix).2.2.1
def programs570 := (570, StackAnalysis.optimized570.2.1, StackAnalysis.optimized570.2.2) :: programs571
def bodies570 := (570, stackBody570_580) :: bodies571
def frames570 := 4 :: frames571
def after570 (bitmapPrefix : AppList (BitVec 64)) := after571 (step570 bitmapPrefix)
theorem compiled570_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs570 (bitmapPrefix, 1976) = (bodies570, frames570, after570 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 570 StackAnalysis.optimized570.2.1 StackAnalysis.optimized570.2.2 programs571 (bitmapPrefix, 1976) (step570 bitmapPrefix, 1987) (after571 (step570 bitmapPrefix), 2007) stackBody570_580 4 bodies571 frames571 (function570_eq bitmapPrefix) (compiled571_eq (step570 bitmapPrefix))
def step569 (bitmapPrefix : AppList (BitVec 64)) := (function569 bitmapPrefix).2.2.1
def programs569 := (569, StackAnalysis.optimized569.2.1, StackAnalysis.optimized569.2.2) :: programs570
def bodies569 := (569, stackBody569_984) :: bodies570
def frames569 := 15 :: frames570
def after569 (bitmapPrefix : AppList (BitVec 64)) := after570 (step569 bitmapPrefix)
theorem compiled569_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs569 (bitmapPrefix, 1962) = (bodies569, frames569, after569 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 569 StackAnalysis.optimized569.2.1 StackAnalysis.optimized569.2.2 programs570 (bitmapPrefix, 1962) (step569 bitmapPrefix, 1976) (after570 (step569 bitmapPrefix), 2007) stackBody569_984 15 bodies570 frames570 (function569_eq bitmapPrefix) (compiled570_eq (step569 bitmapPrefix))
def step568 (bitmapPrefix : AppList (BitVec 64)) := (function568 bitmapPrefix).2.2.1
def programs568 := (568, StackAnalysis.optimized568.2.1, StackAnalysis.optimized568.2.2) :: programs569
def bodies568 := (568, stackBody568_168) :: bodies569
def frames568 := 2 :: frames569
def after568 (bitmapPrefix : AppList (BitVec 64)) := after569 (step568 bitmapPrefix)
theorem compiled568_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs568 (bitmapPrefix, 1959) = (bodies568, frames568, after568 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 568 StackAnalysis.optimized568.2.1 StackAnalysis.optimized568.2.2 programs569 (bitmapPrefix, 1959) (step568 bitmapPrefix, 1962) (after569 (step568 bitmapPrefix), 2007) stackBody568_168 2 bodies569 frames569 (function568_eq bitmapPrefix) (compiled569_eq (step568 bitmapPrefix))
def step567 (bitmapPrefix : AppList (BitVec 64)) := (function567 bitmapPrefix).2.2.1
def programs567 := (567, StackAnalysis.optimized567.2.1, StackAnalysis.optimized567.2.2) :: programs568
def bodies567 := (567, stackBody567_1224) :: bodies568
def frames567 := 16 :: frames568
def after567 (bitmapPrefix : AppList (BitVec 64)) := after568 (step567 bitmapPrefix)
theorem compiled567_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs567 (bitmapPrefix, 1941) = (bodies567, frames567, after567 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 567 StackAnalysis.optimized567.2.1 StackAnalysis.optimized567.2.2 programs568 (bitmapPrefix, 1941) (step567 bitmapPrefix, 1959) (after568 (step567 bitmapPrefix), 2007) stackBody567_1224 16 bodies568 frames568 (function567_eq bitmapPrefix) (compiled568_eq (step567 bitmapPrefix))
def step566 (bitmapPrefix : AppList (BitVec 64)) := (function566 bitmapPrefix).2.2.1
def programs566 := (566, StackAnalysis.optimized566.2.1, StackAnalysis.optimized566.2.2) :: programs567
def bodies566 := (566, stackBody566_406) :: bodies567
def frames566 := 4 :: frames567
def after566 (bitmapPrefix : AppList (BitVec 64)) := after567 (step566 bitmapPrefix)
theorem compiled566_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs566 (bitmapPrefix, 1933) = (bodies566, frames566, after566 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 566 StackAnalysis.optimized566.2.1 StackAnalysis.optimized566.2.2 programs567 (bitmapPrefix, 1933) (step566 bitmapPrefix, 1941) (after567 (step566 bitmapPrefix), 2007) stackBody566_406 4 bodies567 frames567 (function566_eq bitmapPrefix) (compiled567_eq (step566 bitmapPrefix))
def step565 (bitmapPrefix : AppList (BitVec 64)) := (function565 bitmapPrefix).2.2.1
def programs565 := (565, StackAnalysis.optimized565.2.1, StackAnalysis.optimized565.2.2) :: programs566
def bodies565 := (565, stackBody565_112) :: bodies566
def frames565 := 3 :: frames566
def after565 (bitmapPrefix : AppList (BitVec 64)) := after566 (step565 bitmapPrefix)
theorem compiled565_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs565 (bitmapPrefix, 1931) = (bodies565, frames565, after565 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 565 StackAnalysis.optimized565.2.1 StackAnalysis.optimized565.2.2 programs566 (bitmapPrefix, 1931) (step565 bitmapPrefix, 1933) (after566 (step565 bitmapPrefix), 2007) stackBody565_112 3 bodies566 frames566 (function565_eq bitmapPrefix) (compiled566_eq (step565 bitmapPrefix))
def step564 (bitmapPrefix : AppList (BitVec 64)) := (function564 bitmapPrefix).2.2.1
def programs564 := (564, StackAnalysis.optimized564.2.1, StackAnalysis.optimized564.2.2) :: programs565
def bodies564 := (564, stackBody564_186) :: bodies565
def frames564 := 2 :: frames565
def after564 (bitmapPrefix : AppList (BitVec 64)) := after565 (step564 bitmapPrefix)
theorem compiled564_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs564 (bitmapPrefix, 1928) = (bodies564, frames564, after564 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 564 StackAnalysis.optimized564.2.1 StackAnalysis.optimized564.2.2 programs565 (bitmapPrefix, 1928) (step564 bitmapPrefix, 1931) (after565 (step564 bitmapPrefix), 2007) stackBody564_186 2 bodies565 frames565 (function564_eq bitmapPrefix) (compiled565_eq (step564 bitmapPrefix))
def step563 (bitmapPrefix : AppList (BitVec 64)) := (function563 bitmapPrefix).2.2.1
def programs563 := (563, StackAnalysis.optimized563.2.1, StackAnalysis.optimized563.2.2) :: programs564
def bodies563 := (563, stackBody563_74) :: bodies564
def frames563 := 2 :: frames564
def after563 (bitmapPrefix : AppList (BitVec 64)) := after564 (step563 bitmapPrefix)
theorem compiled563_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs563 (bitmapPrefix, 1927) = (bodies563, frames563, after563 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 563 StackAnalysis.optimized563.2.1 StackAnalysis.optimized563.2.2 programs564 (bitmapPrefix, 1927) (step563 bitmapPrefix, 1928) (after564 (step563 bitmapPrefix), 2007) stackBody563_74 2 bodies564 frames564 (function563_eq bitmapPrefix) (compiled564_eq (step563 bitmapPrefix))
def step562 (bitmapPrefix : AppList (BitVec 64)) := (function562 bitmapPrefix).2.2.1
def programs562 := (562, StackAnalysis.optimized562.2.1, StackAnalysis.optimized562.2.2) :: programs563
def bodies562 := (562, stackBody562_168) :: bodies563
def frames562 := 2 :: frames563
def after562 (bitmapPrefix : AppList (BitVec 64)) := after563 (step562 bitmapPrefix)
theorem compiled562_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs562 (bitmapPrefix, 1924) = (bodies562, frames562, after562 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 562 StackAnalysis.optimized562.2.1 StackAnalysis.optimized562.2.2 programs563 (bitmapPrefix, 1924) (step562 bitmapPrefix, 1927) (after563 (step562 bitmapPrefix), 2007) stackBody562_168 2 bodies563 frames563 (function562_eq bitmapPrefix) (compiled563_eq (step562 bitmapPrefix))
def step561 (bitmapPrefix : AppList (BitVec 64)) := (function561 bitmapPrefix).2.2.1
def programs561 := (561, StackAnalysis.optimized561.2.1, StackAnalysis.optimized561.2.2) :: programs562
def bodies561 := (561, stackBody561_78) :: bodies562
def frames561 := 2 :: frames562
def after561 (bitmapPrefix : AppList (BitVec 64)) := after562 (step561 bitmapPrefix)
theorem compiled561_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs561 (bitmapPrefix, 1923) = (bodies561, frames561, after561 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 561 StackAnalysis.optimized561.2.1 StackAnalysis.optimized561.2.2 programs562 (bitmapPrefix, 1923) (step561 bitmapPrefix, 1924) (after562 (step561 bitmapPrefix), 2007) stackBody561_78 2 bodies562 frames562 (function561_eq bitmapPrefix) (compiled562_eq (step561 bitmapPrefix))
def step560 (bitmapPrefix : AppList (BitVec 64)) := (function560 bitmapPrefix).2.2.1
def programs560 := (560, StackAnalysis.optimized560.2.1, StackAnalysis.optimized560.2.2) :: programs561
def bodies560 := (560, stackBody560_952) :: bodies561
def frames560 := 18 :: frames561
def after560 (bitmapPrefix : AppList (BitVec 64)) := after561 (step560 bitmapPrefix)
theorem compiled560_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs560 (bitmapPrefix, 1910) = (bodies560, frames560, after560 bitmapPrefix, 2007) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 560 StackAnalysis.optimized560.2.1 StackAnalysis.optimized560.2.2 programs561 (bitmapPrefix, 1910) (step560 bitmapPrefix, 1923) (after561 (step560 bitmapPrefix), 2007) stackBody560_952 18 bodies561 frames561 (function560_eq bitmapPrefix) (compiled561_eq (step560 bitmapPrefix))
def programs := programs560
def bodies := bodies560
def frames := frames560
def after := after560
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2007)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1910) = result bitmapPrefix := compiled560_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk560_575
