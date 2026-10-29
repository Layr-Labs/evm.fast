import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function592
import InitECandidate.Proofs.BackendStages.Function593
import InitECandidate.Proofs.BackendStages.Function594
import InitECandidate.Proofs.BackendStages.Function595
import InitECandidate.Proofs.BackendStages.Function596
import InitECandidate.Proofs.BackendStages.Function597
import InitECandidate.Proofs.BackendStages.Function598
import InitECandidate.Proofs.BackendStages.Function599
import InitECandidate.Proofs.BackendStages.Function600
import InitECandidate.Proofs.BackendStages.Function601
import InitECandidate.Proofs.BackendStages.Function602
import InitECandidate.Proofs.BackendStages.Function603
import InitECandidate.Proofs.BackendStages.Function604
import InitECandidate.Proofs.BackendStages.Function605
import InitECandidate.Proofs.BackendStages.Function606
import InitECandidate.Proofs.BackendStages.Function607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk592_607
def programs608 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies608 : List (Nat × StackLang.HolProg 64) := []
def frames608 : List Nat := []
def after608 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled608_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs608 (bitmapPrefix, 2334) = (bodies608, frames608, after608 bitmapPrefix, 2334) := by rfl
def step607 (bitmapPrefix : AppList (BitVec 64)) := (function607 bitmapPrefix).2.2.1
def programs607 := (607, StackAnalysis.optimized607.2.1, StackAnalysis.optimized607.2.2) :: programs608
def bodies607 := (607, stackBody607_420) :: bodies608
def frames607 := 5 :: frames608
def after607 (bitmapPrefix : AppList (BitVec 64)) := after608 (step607 bitmapPrefix)
theorem compiled607_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs607 (bitmapPrefix, 2328) = (bodies607, frames607, after607 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 607 StackAnalysis.optimized607.2.1 StackAnalysis.optimized607.2.2 programs608 (bitmapPrefix, 2328) (step607 bitmapPrefix, 2334) (after608 (step607 bitmapPrefix), 2334) stackBody607_420 5 bodies608 frames608 (function607_eq bitmapPrefix) (compiled608_eq (step607 bitmapPrefix))
def step606 (bitmapPrefix : AppList (BitVec 64)) := (function606 bitmapPrefix).2.2.1
def programs606 := (606, StackAnalysis.optimized606.2.1, StackAnalysis.optimized606.2.2) :: programs607
def bodies606 := (606, stackBody606_850) :: bodies607
def frames606 := 11 :: frames607
def after606 (bitmapPrefix : AppList (BitVec 64)) := after607 (step606 bitmapPrefix)
theorem compiled606_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs606 (bitmapPrefix, 2317) = (bodies606, frames606, after606 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 606 StackAnalysis.optimized606.2.1 StackAnalysis.optimized606.2.2 programs607 (bitmapPrefix, 2317) (step606 bitmapPrefix, 2328) (after607 (step606 bitmapPrefix), 2334) stackBody606_850 11 bodies607 frames607 (function606_eq bitmapPrefix) (compiled607_eq (step606 bitmapPrefix))
def step605 (bitmapPrefix : AppList (BitVec 64)) := (function605 bitmapPrefix).2.2.1
def programs605 := (605, StackAnalysis.optimized605.2.1, StackAnalysis.optimized605.2.2) :: programs606
def bodies605 := (605, stackBody605_236) :: bodies606
def frames605 := 3 :: frames606
def after605 (bitmapPrefix : AppList (BitVec 64)) := after606 (step605 bitmapPrefix)
theorem compiled605_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs605 (bitmapPrefix, 2314) = (bodies605, frames605, after605 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 605 StackAnalysis.optimized605.2.1 StackAnalysis.optimized605.2.2 programs606 (bitmapPrefix, 2314) (step605 bitmapPrefix, 2317) (after606 (step605 bitmapPrefix), 2334) stackBody605_236 3 bodies606 frames606 (function605_eq bitmapPrefix) (compiled606_eq (step605 bitmapPrefix))
def step604 (bitmapPrefix : AppList (BitVec 64)) := (function604 bitmapPrefix).2.2.1
def programs604 := (604, StackAnalysis.optimized604.2.1, StackAnalysis.optimized604.2.2) :: programs605
def bodies604 := (604, stackBody604_54) :: bodies605
def frames604 := 0 :: frames605
def after604 (bitmapPrefix : AppList (BitVec 64)) := after605 (step604 bitmapPrefix)
theorem compiled604_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs604 (bitmapPrefix, 2314) = (bodies604, frames604, after604 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 604 StackAnalysis.optimized604.2.1 StackAnalysis.optimized604.2.2 programs605 (bitmapPrefix, 2314) (step604 bitmapPrefix, 2314) (after605 (step604 bitmapPrefix), 2334) stackBody604_54 0 bodies605 frames605 (function604_eq bitmapPrefix) (compiled605_eq (step604 bitmapPrefix))
def step603 (bitmapPrefix : AppList (BitVec 64)) := (function603 bitmapPrefix).2.2.1
def programs603 := (603, StackAnalysis.optimized603.2.1, StackAnalysis.optimized603.2.2) :: programs604
def bodies603 := (603, stackBody603_632) :: bodies604
def frames603 := 12 :: frames604
def after603 (bitmapPrefix : AppList (BitVec 64)) := after604 (step603 bitmapPrefix)
theorem compiled603_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs603 (bitmapPrefix, 2307) = (bodies603, frames603, after603 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 603 StackAnalysis.optimized603.2.1 StackAnalysis.optimized603.2.2 programs604 (bitmapPrefix, 2307) (step603 bitmapPrefix, 2314) (after604 (step603 bitmapPrefix), 2334) stackBody603_632 12 bodies604 frames604 (function603_eq bitmapPrefix) (compiled604_eq (step603 bitmapPrefix))
def step602 (bitmapPrefix : AppList (BitVec 64)) := (function602 bitmapPrefix).2.2.1
def programs602 := (602, StackAnalysis.optimized602.2.1, StackAnalysis.optimized602.2.2) :: programs603
def bodies602 := (602, stackBody602_471) :: bodies603
def frames602 := 6 :: frames603
def after602 (bitmapPrefix : AppList (BitVec 64)) := after603 (step602 bitmapPrefix)
theorem compiled602_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs602 (bitmapPrefix, 2302) = (bodies602, frames602, after602 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 602 StackAnalysis.optimized602.2.1 StackAnalysis.optimized602.2.2 programs603 (bitmapPrefix, 2302) (step602 bitmapPrefix, 2307) (after603 (step602 bitmapPrefix), 2334) stackBody602_471 6 bodies603 frames603 (function602_eq bitmapPrefix) (compiled603_eq (step602 bitmapPrefix))
def step601 (bitmapPrefix : AppList (BitVec 64)) := (function601 bitmapPrefix).2.2.1
def programs601 := (601, StackAnalysis.optimized601.2.1, StackAnalysis.optimized601.2.2) :: programs602
def bodies601 := (601, stackBody601_2026) :: bodies602
def frames601 := 20 :: frames602
def after601 (bitmapPrefix : AppList (BitVec 64)) := after602 (step601 bitmapPrefix)
theorem compiled601_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs601 (bitmapPrefix, 2275) = (bodies601, frames601, after601 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 601 StackAnalysis.optimized601.2.1 StackAnalysis.optimized601.2.2 programs602 (bitmapPrefix, 2275) (step601 bitmapPrefix, 2302) (after602 (step601 bitmapPrefix), 2334) stackBody601_2026 20 bodies602 frames602 (function601_eq bitmapPrefix) (compiled602_eq (step601 bitmapPrefix))
def step600 (bitmapPrefix : AppList (BitVec 64)) := (function600 bitmapPrefix).2.2.1
def programs600 := (600, StackAnalysis.optimized600.2.1, StackAnalysis.optimized600.2.2) :: programs601
def bodies600 := (600, stackBody600_86) :: bodies601
def frames600 := 2 :: frames601
def after600 (bitmapPrefix : AppList (BitVec 64)) := after601 (step600 bitmapPrefix)
theorem compiled600_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs600 (bitmapPrefix, 2274) = (bodies600, frames600, after600 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 600 StackAnalysis.optimized600.2.1 StackAnalysis.optimized600.2.2 programs601 (bitmapPrefix, 2274) (step600 bitmapPrefix, 2275) (after601 (step600 bitmapPrefix), 2334) stackBody600_86 2 bodies601 frames601 (function600_eq bitmapPrefix) (compiled601_eq (step600 bitmapPrefix))
def step599 (bitmapPrefix : AppList (BitVec 64)) := (function599 bitmapPrefix).2.2.1
def programs599 := (599, StackAnalysis.optimized599.2.1, StackAnalysis.optimized599.2.2) :: programs600
def bodies599 := (599, stackBody599_154) :: bodies600
def frames599 := 3 :: frames600
def after599 (bitmapPrefix : AppList (BitVec 64)) := after600 (step599 bitmapPrefix)
theorem compiled599_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs599 (bitmapPrefix, 2272) = (bodies599, frames599, after599 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 599 StackAnalysis.optimized599.2.1 StackAnalysis.optimized599.2.2 programs600 (bitmapPrefix, 2272) (step599 bitmapPrefix, 2274) (after600 (step599 bitmapPrefix), 2334) stackBody599_154 3 bodies600 frames600 (function599_eq bitmapPrefix) (compiled600_eq (step599 bitmapPrefix))
def step598 (bitmapPrefix : AppList (BitVec 64)) := (function598 bitmapPrefix).2.2.1
def programs598 := (598, StackAnalysis.optimized598.2.1, StackAnalysis.optimized598.2.2) :: programs599
def bodies598 := (598, stackBody598_504) :: bodies599
def frames598 := 7 :: frames599
def after598 (bitmapPrefix : AppList (BitVec 64)) := after599 (step598 bitmapPrefix)
theorem compiled598_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs598 (bitmapPrefix, 2266) = (bodies598, frames598, after598 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 598 StackAnalysis.optimized598.2.1 StackAnalysis.optimized598.2.2 programs599 (bitmapPrefix, 2266) (step598 bitmapPrefix, 2272) (after599 (step598 bitmapPrefix), 2334) stackBody598_504 7 bodies599 frames599 (function598_eq bitmapPrefix) (compiled599_eq (step598 bitmapPrefix))
def step597 (bitmapPrefix : AppList (BitVec 64)) := (function597 bitmapPrefix).2.2.1
def programs597 := (597, StackAnalysis.optimized597.2.1, StackAnalysis.optimized597.2.2) :: programs598
def bodies597 := (597, stackBody597_180) :: bodies598
def frames597 := 3 :: frames598
def after597 (bitmapPrefix : AppList (BitVec 64)) := after598 (step597 bitmapPrefix)
theorem compiled597_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs597 (bitmapPrefix, 2264) = (bodies597, frames597, after597 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 597 StackAnalysis.optimized597.2.1 StackAnalysis.optimized597.2.2 programs598 (bitmapPrefix, 2264) (step597 bitmapPrefix, 2266) (after598 (step597 bitmapPrefix), 2334) stackBody597_180 3 bodies598 frames598 (function597_eq bitmapPrefix) (compiled598_eq (step597 bitmapPrefix))
def step596 (bitmapPrefix : AppList (BitVec 64)) := (function596 bitmapPrefix).2.2.1
def programs596 := (596, StackAnalysis.optimized596.2.1, StackAnalysis.optimized596.2.2) :: programs597
def bodies596 := (596, stackBody596_244) :: bodies597
def frames596 := 7 :: frames597
def after596 (bitmapPrefix : AppList (BitVec 64)) := after597 (step596 bitmapPrefix)
theorem compiled596_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs596 (bitmapPrefix, 2261) = (bodies596, frames596, after596 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 596 StackAnalysis.optimized596.2.1 StackAnalysis.optimized596.2.2 programs597 (bitmapPrefix, 2261) (step596 bitmapPrefix, 2264) (after597 (step596 bitmapPrefix), 2334) stackBody596_244 7 bodies597 frames597 (function596_eq bitmapPrefix) (compiled597_eq (step596 bitmapPrefix))
def step595 (bitmapPrefix : AppList (BitVec 64)) := (function595 bitmapPrefix).2.2.1
def programs595 := (595, StackAnalysis.optimized595.2.1, StackAnalysis.optimized595.2.2) :: programs596
def bodies595 := (595, stackBody595_6248) :: bodies596
def frames595 := 5 :: frames596
def after595 (bitmapPrefix : AppList (BitVec 64)) := after596 (step595 bitmapPrefix)
theorem compiled595_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs595 (bitmapPrefix, 2173) = (bodies595, frames595, after595 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 595 StackAnalysis.optimized595.2.1 StackAnalysis.optimized595.2.2 programs596 (bitmapPrefix, 2173) (step595 bitmapPrefix, 2261) (after596 (step595 bitmapPrefix), 2334) stackBody595_6248 5 bodies596 frames596 (function595_eq bitmapPrefix) (compiled596_eq (step595 bitmapPrefix))
def step594 (bitmapPrefix : AppList (BitVec 64)) := (function594 bitmapPrefix).2.2.1
def programs594 := (594, StackAnalysis.optimized594.2.1, StackAnalysis.optimized594.2.2) :: programs595
def bodies594 := (594, stackBody594_1030) :: bodies595
def frames594 := 5 :: frames595
def after594 (bitmapPrefix : AppList (BitVec 64)) := after595 (step594 bitmapPrefix)
theorem compiled594_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs594 (bitmapPrefix, 2157) = (bodies594, frames594, after594 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 594 StackAnalysis.optimized594.2.1 StackAnalysis.optimized594.2.2 programs595 (bitmapPrefix, 2157) (step594 bitmapPrefix, 2173) (after595 (step594 bitmapPrefix), 2334) stackBody594_1030 5 bodies595 frames595 (function594_eq bitmapPrefix) (compiled595_eq (step594 bitmapPrefix))
def step593 (bitmapPrefix : AppList (BitVec 64)) := (function593 bitmapPrefix).2.2.1
def programs593 := (593, StackAnalysis.optimized593.2.1, StackAnalysis.optimized593.2.2) :: programs594
def bodies593 := (593, stackBody593_2347) :: bodies594
def frames593 := 17 :: frames594
def after593 (bitmapPrefix : AppList (BitVec 64)) := after594 (step593 bitmapPrefix)
theorem compiled593_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs593 (bitmapPrefix, 2130) = (bodies593, frames593, after593 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 593 StackAnalysis.optimized593.2.1 StackAnalysis.optimized593.2.2 programs594 (bitmapPrefix, 2130) (step593 bitmapPrefix, 2157) (after594 (step593 bitmapPrefix), 2334) stackBody593_2347 17 bodies594 frames594 (function593_eq bitmapPrefix) (compiled594_eq (step593 bitmapPrefix))
def step592 (bitmapPrefix : AppList (BitVec 64)) := (function592 bitmapPrefix).2.2.1
def programs592 := (592, StackAnalysis.optimized592.2.1, StackAnalysis.optimized592.2.2) :: programs593
def bodies592 := (592, stackBody592_244) :: bodies593
def frames592 := 4 :: frames593
def after592 (bitmapPrefix : AppList (BitVec 64)) := after593 (step592 bitmapPrefix)
theorem compiled592_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs592 (bitmapPrefix, 2127) = (bodies592, frames592, after592 bitmapPrefix, 2334) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 592 StackAnalysis.optimized592.2.1 StackAnalysis.optimized592.2.2 programs593 (bitmapPrefix, 2127) (step592 bitmapPrefix, 2130) (after593 (step592 bitmapPrefix), 2334) stackBody592_244 4 bodies593 frames593 (function592_eq bitmapPrefix) (compiled593_eq (step592 bitmapPrefix))
def programs := programs592
def bodies := bodies592
def frames := frames592
def after := after592
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 2334)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 2127) = result bitmapPrefix := compiled592_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk592_607
