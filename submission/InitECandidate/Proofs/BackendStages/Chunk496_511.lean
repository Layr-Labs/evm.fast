import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function496
import InitECandidate.Proofs.BackendStages.Function497
import InitECandidate.Proofs.BackendStages.Function498
import InitECandidate.Proofs.BackendStages.Function499
import InitECandidate.Proofs.BackendStages.Function500
import InitECandidate.Proofs.BackendStages.Function501
import InitECandidate.Proofs.BackendStages.Function502
import InitECandidate.Proofs.BackendStages.Function503
import InitECandidate.Proofs.BackendStages.Function504
import InitECandidate.Proofs.BackendStages.Function505
import InitECandidate.Proofs.BackendStages.Function506
import InitECandidate.Proofs.BackendStages.Function507
import InitECandidate.Proofs.BackendStages.Function508
import InitECandidate.Proofs.BackendStages.Function509
import InitECandidate.Proofs.BackendStages.Function510
import InitECandidate.Proofs.BackendStages.Function511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk496_511
def programs512 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies512 : List (Nat × StackLang.HolProg 64) := []
def frames512 : List Nat := []
def after512 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled512_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs512 (bitmapPrefix, 1637) = (bodies512, frames512, after512 bitmapPrefix, 1637) := by rfl
def step511 (bitmapPrefix : AppList (BitVec 64)) := (function511 bitmapPrefix).2.2.1
def programs511 := (511, StackAnalysis.optimized511.2.1, StackAnalysis.optimized511.2.2) :: programs512
def bodies511 := (511, stackBody511_340) :: bodies512
def frames511 := 10 :: frames512
def after511 (bitmapPrefix : AppList (BitVec 64)) := after512 (step511 bitmapPrefix)
theorem compiled511_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs511 (bitmapPrefix, 1631) = (bodies511, frames511, after511 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 511 StackAnalysis.optimized511.2.1 StackAnalysis.optimized511.2.2 programs512 (bitmapPrefix, 1631) (step511 bitmapPrefix, 1637) (after512 (step511 bitmapPrefix), 1637) stackBody511_340 10 bodies512 frames512 (function511_eq bitmapPrefix) (compiled512_eq (step511 bitmapPrefix))
def step510 (bitmapPrefix : AppList (BitVec 64)) := (function510 bitmapPrefix).2.2.1
def programs510 := (510, StackAnalysis.optimized510.2.1, StackAnalysis.optimized510.2.2) :: programs511
def bodies510 := (510, stackBody510_340) :: bodies511
def frames510 := 10 :: frames511
def after510 (bitmapPrefix : AppList (BitVec 64)) := after511 (step510 bitmapPrefix)
theorem compiled510_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs510 (bitmapPrefix, 1625) = (bodies510, frames510, after510 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 510 StackAnalysis.optimized510.2.1 StackAnalysis.optimized510.2.2 programs511 (bitmapPrefix, 1625) (step510 bitmapPrefix, 1631) (after511 (step510 bitmapPrefix), 1637) stackBody510_340 10 bodies511 frames511 (function510_eq bitmapPrefix) (compiled511_eq (step510 bitmapPrefix))
def step509 (bitmapPrefix : AppList (BitVec 64)) := (function509 bitmapPrefix).2.2.1
def programs509 := (509, StackAnalysis.optimized509.2.1, StackAnalysis.optimized509.2.2) :: programs510
def bodies509 := (509, stackBody509_340) :: bodies510
def frames509 := 10 :: frames510
def after509 (bitmapPrefix : AppList (BitVec 64)) := after510 (step509 bitmapPrefix)
theorem compiled509_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs509 (bitmapPrefix, 1619) = (bodies509, frames509, after509 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 509 StackAnalysis.optimized509.2.1 StackAnalysis.optimized509.2.2 programs510 (bitmapPrefix, 1619) (step509 bitmapPrefix, 1625) (after510 (step509 bitmapPrefix), 1637) stackBody509_340 10 bodies510 frames510 (function509_eq bitmapPrefix) (compiled510_eq (step509 bitmapPrefix))
def step508 (bitmapPrefix : AppList (BitVec 64)) := (function508 bitmapPrefix).2.2.1
def programs508 := (508, StackAnalysis.optimized508.2.1, StackAnalysis.optimized508.2.2) :: programs509
def bodies508 := (508, stackBody508_340) :: bodies509
def frames508 := 10 :: frames509
def after508 (bitmapPrefix : AppList (BitVec 64)) := after509 (step508 bitmapPrefix)
theorem compiled508_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs508 (bitmapPrefix, 1613) = (bodies508, frames508, after508 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 508 StackAnalysis.optimized508.2.1 StackAnalysis.optimized508.2.2 programs509 (bitmapPrefix, 1613) (step508 bitmapPrefix, 1619) (after509 (step508 bitmapPrefix), 1637) stackBody508_340 10 bodies509 frames509 (function508_eq bitmapPrefix) (compiled509_eq (step508 bitmapPrefix))
def step507 (bitmapPrefix : AppList (BitVec 64)) := (function507 bitmapPrefix).2.2.1
def programs507 := (507, StackAnalysis.optimized507.2.1, StackAnalysis.optimized507.2.2) :: programs508
def bodies507 := (507, stackBody507_410) :: bodies508
def frames507 := 10 :: frames508
def after507 (bitmapPrefix : AppList (BitVec 64)) := after508 (step507 bitmapPrefix)
theorem compiled507_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs507 (bitmapPrefix, 1606) = (bodies507, frames507, after507 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 507 StackAnalysis.optimized507.2.1 StackAnalysis.optimized507.2.2 programs508 (bitmapPrefix, 1606) (step507 bitmapPrefix, 1613) (after508 (step507 bitmapPrefix), 1637) stackBody507_410 10 bodies508 frames508 (function507_eq bitmapPrefix) (compiled508_eq (step507 bitmapPrefix))
def step506 (bitmapPrefix : AppList (BitVec 64)) := (function506 bitmapPrefix).2.2.1
def programs506 := (506, StackAnalysis.optimized506.2.1, StackAnalysis.optimized506.2.2) :: programs507
def bodies506 := (506, stackBody506_400) :: bodies507
def frames506 := 10 :: frames507
def after506 (bitmapPrefix : AppList (BitVec 64)) := after507 (step506 bitmapPrefix)
theorem compiled506_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs506 (bitmapPrefix, 1599) = (bodies506, frames506, after506 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 506 StackAnalysis.optimized506.2.1 StackAnalysis.optimized506.2.2 programs507 (bitmapPrefix, 1599) (step506 bitmapPrefix, 1606) (after507 (step506 bitmapPrefix), 1637) stackBody506_400 10 bodies507 frames507 (function506_eq bitmapPrefix) (compiled507_eq (step506 bitmapPrefix))
def step505 (bitmapPrefix : AppList (BitVec 64)) := (function505 bitmapPrefix).2.2.1
def programs505 := (505, StackAnalysis.optimized505.2.1, StackAnalysis.optimized505.2.2) :: programs506
def bodies505 := (505, stackBody505_410) :: bodies506
def frames505 := 14 :: frames506
def after505 (bitmapPrefix : AppList (BitVec 64)) := after506 (step505 bitmapPrefix)
theorem compiled505_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs505 (bitmapPrefix, 1592) = (bodies505, frames505, after505 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 505 StackAnalysis.optimized505.2.1 StackAnalysis.optimized505.2.2 programs506 (bitmapPrefix, 1592) (step505 bitmapPrefix, 1599) (after506 (step505 bitmapPrefix), 1637) stackBody505_410 14 bodies506 frames506 (function505_eq bitmapPrefix) (compiled506_eq (step505 bitmapPrefix))
def step504 (bitmapPrefix : AppList (BitVec 64)) := (function504 bitmapPrefix).2.2.1
def programs504 := (504, StackAnalysis.optimized504.2.1, StackAnalysis.optimized504.2.2) :: programs505
def bodies504 := (504, stackBody504_410) :: bodies505
def frames504 := 14 :: frames505
def after504 (bitmapPrefix : AppList (BitVec 64)) := after505 (step504 bitmapPrefix)
theorem compiled504_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs504 (bitmapPrefix, 1585) = (bodies504, frames504, after504 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 504 StackAnalysis.optimized504.2.1 StackAnalysis.optimized504.2.2 programs505 (bitmapPrefix, 1585) (step504 bitmapPrefix, 1592) (after505 (step504 bitmapPrefix), 1637) stackBody504_410 14 bodies505 frames505 (function504_eq bitmapPrefix) (compiled505_eq (step504 bitmapPrefix))
def step503 (bitmapPrefix : AppList (BitVec 64)) := (function503 bitmapPrefix).2.2.1
def programs503 := (503, StackAnalysis.optimized503.2.1, StackAnalysis.optimized503.2.2) :: programs504
def bodies503 := (503, stackBody503_340) :: bodies504
def frames503 := 10 :: frames504
def after503 (bitmapPrefix : AppList (BitVec 64)) := after504 (step503 bitmapPrefix)
theorem compiled503_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs503 (bitmapPrefix, 1579) = (bodies503, frames503, after503 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 503 StackAnalysis.optimized503.2.1 StackAnalysis.optimized503.2.2 programs504 (bitmapPrefix, 1579) (step503 bitmapPrefix, 1585) (after504 (step503 bitmapPrefix), 1637) stackBody503_340 10 bodies504 frames504 (function503_eq bitmapPrefix) (compiled504_eq (step503 bitmapPrefix))
def step502 (bitmapPrefix : AppList (BitVec 64)) := (function502 bitmapPrefix).2.2.1
def programs502 := (502, StackAnalysis.optimized502.2.1, StackAnalysis.optimized502.2.2) :: programs503
def bodies502 := (502, stackBody502_340) :: bodies503
def frames502 := 10 :: frames503
def after502 (bitmapPrefix : AppList (BitVec 64)) := after503 (step502 bitmapPrefix)
theorem compiled502_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs502 (bitmapPrefix, 1573) = (bodies502, frames502, after502 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 502 StackAnalysis.optimized502.2.1 StackAnalysis.optimized502.2.2 programs503 (bitmapPrefix, 1573) (step502 bitmapPrefix, 1579) (after503 (step502 bitmapPrefix), 1637) stackBody502_340 10 bodies503 frames503 (function502_eq bitmapPrefix) (compiled503_eq (step502 bitmapPrefix))
def step501 (bitmapPrefix : AppList (BitVec 64)) := (function501 bitmapPrefix).2.2.1
def programs501 := (501, StackAnalysis.optimized501.2.1, StackAnalysis.optimized501.2.2) :: programs502
def bodies501 := (501, stackBody501_340) :: bodies502
def frames501 := 10 :: frames502
def after501 (bitmapPrefix : AppList (BitVec 64)) := after502 (step501 bitmapPrefix)
theorem compiled501_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs501 (bitmapPrefix, 1567) = (bodies501, frames501, after501 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 501 StackAnalysis.optimized501.2.1 StackAnalysis.optimized501.2.2 programs502 (bitmapPrefix, 1567) (step501 bitmapPrefix, 1573) (after502 (step501 bitmapPrefix), 1637) stackBody501_340 10 bodies502 frames502 (function501_eq bitmapPrefix) (compiled502_eq (step501 bitmapPrefix))
def step500 (bitmapPrefix : AppList (BitVec 64)) := (function500 bitmapPrefix).2.2.1
def programs500 := (500, StackAnalysis.optimized500.2.1, StackAnalysis.optimized500.2.2) :: programs501
def bodies500 := (500, stackBody500_340) :: bodies501
def frames500 := 10 :: frames501
def after500 (bitmapPrefix : AppList (BitVec 64)) := after501 (step500 bitmapPrefix)
theorem compiled500_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs500 (bitmapPrefix, 1561) = (bodies500, frames500, after500 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 500 StackAnalysis.optimized500.2.1 StackAnalysis.optimized500.2.2 programs501 (bitmapPrefix, 1561) (step500 bitmapPrefix, 1567) (after501 (step500 bitmapPrefix), 1637) stackBody500_340 10 bodies501 frames501 (function500_eq bitmapPrefix) (compiled501_eq (step500 bitmapPrefix))
def step499 (bitmapPrefix : AppList (BitVec 64)) := (function499 bitmapPrefix).2.2.1
def programs499 := (499, StackAnalysis.optimized499.2.1, StackAnalysis.optimized499.2.2) :: programs500
def bodies499 := (499, stackBody499_340) :: bodies500
def frames499 := 10 :: frames500
def after499 (bitmapPrefix : AppList (BitVec 64)) := after500 (step499 bitmapPrefix)
theorem compiled499_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs499 (bitmapPrefix, 1555) = (bodies499, frames499, after499 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 499 StackAnalysis.optimized499.2.1 StackAnalysis.optimized499.2.2 programs500 (bitmapPrefix, 1555) (step499 bitmapPrefix, 1561) (after500 (step499 bitmapPrefix), 1637) stackBody499_340 10 bodies500 frames500 (function499_eq bitmapPrefix) (compiled500_eq (step499 bitmapPrefix))
def step498 (bitmapPrefix : AppList (BitVec 64)) := (function498 bitmapPrefix).2.2.1
def programs498 := (498, StackAnalysis.optimized498.2.1, StackAnalysis.optimized498.2.2) :: programs499
def bodies498 := (498, stackBody498_340) :: bodies499
def frames498 := 10 :: frames499
def after498 (bitmapPrefix : AppList (BitVec 64)) := after499 (step498 bitmapPrefix)
theorem compiled498_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs498 (bitmapPrefix, 1549) = (bodies498, frames498, after498 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 498 StackAnalysis.optimized498.2.1 StackAnalysis.optimized498.2.2 programs499 (bitmapPrefix, 1549) (step498 bitmapPrefix, 1555) (after499 (step498 bitmapPrefix), 1637) stackBody498_340 10 bodies499 frames499 (function498_eq bitmapPrefix) (compiled499_eq (step498 bitmapPrefix))
def step497 (bitmapPrefix : AppList (BitVec 64)) := (function497 bitmapPrefix).2.2.1
def programs497 := (497, StackAnalysis.optimized497.2.1, StackAnalysis.optimized497.2.2) :: programs498
def bodies497 := (497, stackBody497_340) :: bodies498
def frames497 := 10 :: frames498
def after497 (bitmapPrefix : AppList (BitVec 64)) := after498 (step497 bitmapPrefix)
theorem compiled497_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs497 (bitmapPrefix, 1543) = (bodies497, frames497, after497 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 497 StackAnalysis.optimized497.2.1 StackAnalysis.optimized497.2.2 programs498 (bitmapPrefix, 1543) (step497 bitmapPrefix, 1549) (after498 (step497 bitmapPrefix), 1637) stackBody497_340 10 bodies498 frames498 (function497_eq bitmapPrefix) (compiled498_eq (step497 bitmapPrefix))
def step496 (bitmapPrefix : AppList (BitVec 64)) := (function496 bitmapPrefix).2.2.1
def programs496 := (496, StackAnalysis.optimized496.2.1, StackAnalysis.optimized496.2.2) :: programs497
def bodies496 := (496, stackBody496_70) :: bodies497
def frames496 := 2 :: frames497
def after496 (bitmapPrefix : AppList (BitVec 64)) := after497 (step496 bitmapPrefix)
theorem compiled496_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs496 (bitmapPrefix, 1542) = (bodies496, frames496, after496 bitmapPrefix, 1637) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 496 StackAnalysis.optimized496.2.1 StackAnalysis.optimized496.2.2 programs497 (bitmapPrefix, 1542) (step496 bitmapPrefix, 1543) (after497 (step496 bitmapPrefix), 1637) stackBody496_70 2 bodies497 frames497 (function496_eq bitmapPrefix) (compiled497_eq (step496 bitmapPrefix))
def programs := programs496
def bodies := bodies496
def frames := frames496
def after := after496
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1637)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1542) = result bitmapPrefix := compiled496_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk496_511
