import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function512
import InitECandidate.Proofs.BackendStages.Function513
import InitECandidate.Proofs.BackendStages.Function514
import InitECandidate.Proofs.BackendStages.Function515
import InitECandidate.Proofs.BackendStages.Function516
import InitECandidate.Proofs.BackendStages.Function517
import InitECandidate.Proofs.BackendStages.Function518
import InitECandidate.Proofs.BackendStages.Function519
import InitECandidate.Proofs.BackendStages.Function520
import InitECandidate.Proofs.BackendStages.Function521
import InitECandidate.Proofs.BackendStages.Function522
import InitECandidate.Proofs.BackendStages.Function523
import InitECandidate.Proofs.BackendStages.Function524
import InitECandidate.Proofs.BackendStages.Function525
import InitECandidate.Proofs.BackendStages.Function526
import InitECandidate.Proofs.BackendStages.Function527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk512_527
def programs528 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies528 : List (Nat × StackLang.HolProg 64) := []
def frames528 : List Nat := []
def after528 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled528_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs528 (bitmapPrefix, 1729) = (bodies528, frames528, after528 bitmapPrefix, 1729) := by rfl
def step527 (bitmapPrefix : AppList (BitVec 64)) := (function527 bitmapPrefix).2.2.1
def programs527 := (527, StackAnalysis.optimized527.2.1, StackAnalysis.optimized527.2.2) :: programs528
def bodies527 := (527, stackBody527_168) :: bodies528
def frames527 := 2 :: frames528
def after527 (bitmapPrefix : AppList (BitVec 64)) := after528 (step527 bitmapPrefix)
theorem compiled527_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs527 (bitmapPrefix, 1726) = (bodies527, frames527, after527 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 527 StackAnalysis.optimized527.2.1 StackAnalysis.optimized527.2.2 programs528 (bitmapPrefix, 1726) (step527 bitmapPrefix, 1729) (after528 (step527 bitmapPrefix), 1729) stackBody527_168 2 bodies528 frames528 (function527_eq bitmapPrefix) (compiled528_eq (step527 bitmapPrefix))
def step526 (bitmapPrefix : AppList (BitVec 64)) := (function526 bitmapPrefix).2.2.1
def programs526 := (526, StackAnalysis.optimized526.2.1, StackAnalysis.optimized526.2.2) :: programs527
def bodies526 := (526, stackBody526_436) :: bodies527
def frames526 := 10 :: frames527
def after526 (bitmapPrefix : AppList (BitVec 64)) := after527 (step526 bitmapPrefix)
theorem compiled526_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs526 (bitmapPrefix, 1720) = (bodies526, frames526, after526 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 526 StackAnalysis.optimized526.2.1 StackAnalysis.optimized526.2.2 programs527 (bitmapPrefix, 1720) (step526 bitmapPrefix, 1726) (after527 (step526 bitmapPrefix), 1729) stackBody526_436 10 bodies527 frames527 (function526_eq bitmapPrefix) (compiled527_eq (step526 bitmapPrefix))
def step525 (bitmapPrefix : AppList (BitVec 64)) := (function525 bitmapPrefix).2.2.1
def programs525 := (525, StackAnalysis.optimized525.2.1, StackAnalysis.optimized525.2.2) :: programs526
def bodies525 := (525, stackBody525_216) :: bodies526
def frames525 := 6 :: frames526
def after525 (bitmapPrefix : AppList (BitVec 64)) := after526 (step525 bitmapPrefix)
theorem compiled525_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs525 (bitmapPrefix, 1717) = (bodies525, frames525, after525 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 525 StackAnalysis.optimized525.2.1 StackAnalysis.optimized525.2.2 programs526 (bitmapPrefix, 1717) (step525 bitmapPrefix, 1720) (after526 (step525 bitmapPrefix), 1729) stackBody525_216 6 bodies526 frames526 (function525_eq bitmapPrefix) (compiled526_eq (step525 bitmapPrefix))
def step524 (bitmapPrefix : AppList (BitVec 64)) := (function524 bitmapPrefix).2.2.1
def programs524 := (524, StackAnalysis.optimized524.2.1, StackAnalysis.optimized524.2.2) :: programs525
def bodies524 := (524, stackBody524_76) :: bodies525
def frames524 := 2 :: frames525
def after524 (bitmapPrefix : AppList (BitVec 64)) := after525 (step524 bitmapPrefix)
theorem compiled524_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs524 (bitmapPrefix, 1716) = (bodies524, frames524, after524 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 524 StackAnalysis.optimized524.2.1 StackAnalysis.optimized524.2.2 programs525 (bitmapPrefix, 1716) (step524 bitmapPrefix, 1717) (after525 (step524 bitmapPrefix), 1729) stackBody524_76 2 bodies525 frames525 (function524_eq bitmapPrefix) (compiled525_eq (step524 bitmapPrefix))
def step523 (bitmapPrefix : AppList (BitVec 64)) := (function523 bitmapPrefix).2.2.1
def programs523 := (523, StackAnalysis.optimized523.2.1, StackAnalysis.optimized523.2.2) :: programs524
def bodies523 := (523, stackBody523_964) :: bodies524
def frames523 := 11 :: frames524
def after523 (bitmapPrefix : AppList (BitVec 64)) := after524 (step523 bitmapPrefix)
theorem compiled523_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs523 (bitmapPrefix, 1700) = (bodies523, frames523, after523 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 523 StackAnalysis.optimized523.2.1 StackAnalysis.optimized523.2.2 programs524 (bitmapPrefix, 1700) (step523 bitmapPrefix, 1716) (after524 (step523 bitmapPrefix), 1729) stackBody523_964 11 bodies524 frames524 (function523_eq bitmapPrefix) (compiled524_eq (step523 bitmapPrefix))
def step522 (bitmapPrefix : AppList (BitVec 64)) := (function522 bitmapPrefix).2.2.1
def programs522 := (522, StackAnalysis.optimized522.2.1, StackAnalysis.optimized522.2.2) :: programs523
def bodies522 := (522, stackBody522_276) :: bodies523
def frames522 := 6 :: frames523
def after522 (bitmapPrefix : AppList (BitVec 64)) := after523 (step522 bitmapPrefix)
theorem compiled522_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs522 (bitmapPrefix, 1695) = (bodies522, frames522, after522 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 522 StackAnalysis.optimized522.2.1 StackAnalysis.optimized522.2.2 programs523 (bitmapPrefix, 1695) (step522 bitmapPrefix, 1700) (after523 (step522 bitmapPrefix), 1729) stackBody522_276 6 bodies523 frames523 (function522_eq bitmapPrefix) (compiled523_eq (step522 bitmapPrefix))
def step521 (bitmapPrefix : AppList (BitVec 64)) := (function521 bitmapPrefix).2.2.1
def programs521 := (521, StackAnalysis.optimized521.2.1, StackAnalysis.optimized521.2.2) :: programs522
def bodies521 := (521, stackBody521_410) :: bodies522
def frames521 := 10 :: frames522
def after521 (bitmapPrefix : AppList (BitVec 64)) := after522 (step521 bitmapPrefix)
theorem compiled521_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs521 (bitmapPrefix, 1688) = (bodies521, frames521, after521 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 521 StackAnalysis.optimized521.2.1 StackAnalysis.optimized521.2.2 programs522 (bitmapPrefix, 1688) (step521 bitmapPrefix, 1695) (after522 (step521 bitmapPrefix), 1729) stackBody521_410 10 bodies522 frames522 (function521_eq bitmapPrefix) (compiled522_eq (step521 bitmapPrefix))
def step520 (bitmapPrefix : AppList (BitVec 64)) := (function520 bitmapPrefix).2.2.1
def programs520 := (520, StackAnalysis.optimized520.2.1, StackAnalysis.optimized520.2.2) :: programs521
def bodies520 := (520, stackBody520_410) :: bodies521
def frames520 := 10 :: frames521
def after520 (bitmapPrefix : AppList (BitVec 64)) := after521 (step520 bitmapPrefix)
theorem compiled520_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs520 (bitmapPrefix, 1681) = (bodies520, frames520, after520 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 520 StackAnalysis.optimized520.2.1 StackAnalysis.optimized520.2.2 programs521 (bitmapPrefix, 1681) (step520 bitmapPrefix, 1688) (after521 (step520 bitmapPrefix), 1729) stackBody520_410 10 bodies521 frames521 (function520_eq bitmapPrefix) (compiled521_eq (step520 bitmapPrefix))
def step519 (bitmapPrefix : AppList (BitVec 64)) := (function519 bitmapPrefix).2.2.1
def programs519 := (519, StackAnalysis.optimized519.2.1, StackAnalysis.optimized519.2.2) :: programs520
def bodies519 := (519, stackBody519_410) :: bodies520
def frames519 := 10 :: frames520
def after519 (bitmapPrefix : AppList (BitVec 64)) := after520 (step519 bitmapPrefix)
theorem compiled519_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs519 (bitmapPrefix, 1674) = (bodies519, frames519, after519 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 519 StackAnalysis.optimized519.2.1 StackAnalysis.optimized519.2.2 programs520 (bitmapPrefix, 1674) (step519 bitmapPrefix, 1681) (after520 (step519 bitmapPrefix), 1729) stackBody519_410 10 bodies520 frames520 (function519_eq bitmapPrefix) (compiled520_eq (step519 bitmapPrefix))
def step518 (bitmapPrefix : AppList (BitVec 64)) := (function518 bitmapPrefix).2.2.1
def programs518 := (518, StackAnalysis.optimized518.2.1, StackAnalysis.optimized518.2.2) :: programs519
def bodies518 := (518, stackBody518_418) :: bodies519
def frames518 := 10 :: frames519
def after518 (bitmapPrefix : AppList (BitVec 64)) := after519 (step518 bitmapPrefix)
theorem compiled518_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs518 (bitmapPrefix, 1667) = (bodies518, frames518, after518 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 518 StackAnalysis.optimized518.2.1 StackAnalysis.optimized518.2.2 programs519 (bitmapPrefix, 1667) (step518 bitmapPrefix, 1674) (after519 (step518 bitmapPrefix), 1729) stackBody518_418 10 bodies519 frames519 (function518_eq bitmapPrefix) (compiled519_eq (step518 bitmapPrefix))
def step517 (bitmapPrefix : AppList (BitVec 64)) := (function517 bitmapPrefix).2.2.1
def programs517 := (517, StackAnalysis.optimized517.2.1, StackAnalysis.optimized517.2.2) :: programs518
def bodies517 := (517, stackBody517_238) :: bodies518
def frames517 := 6 :: frames518
def after517 (bitmapPrefix : AppList (BitVec 64)) := after518 (step517 bitmapPrefix)
theorem compiled517_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs517 (bitmapPrefix, 1663) = (bodies517, frames517, after517 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 517 StackAnalysis.optimized517.2.1 StackAnalysis.optimized517.2.2 programs518 (bitmapPrefix, 1663) (step517 bitmapPrefix, 1667) (after518 (step517 bitmapPrefix), 1729) stackBody517_238 6 bodies518 frames518 (function517_eq bitmapPrefix) (compiled518_eq (step517 bitmapPrefix))
def step516 (bitmapPrefix : AppList (BitVec 64)) := (function516 bitmapPrefix).2.2.1
def programs516 := (516, StackAnalysis.optimized516.2.1, StackAnalysis.optimized516.2.2) :: programs517
def bodies516 := (516, stackBody516_308) :: bodies517
def frames516 := 10 :: frames517
def after516 (bitmapPrefix : AppList (BitVec 64)) := after517 (step516 bitmapPrefix)
theorem compiled516_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs516 (bitmapPrefix, 1658) = (bodies516, frames516, after516 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 516 StackAnalysis.optimized516.2.1 StackAnalysis.optimized516.2.2 programs517 (bitmapPrefix, 1658) (step516 bitmapPrefix, 1663) (after517 (step516 bitmapPrefix), 1729) stackBody516_308 10 bodies517 frames517 (function516_eq bitmapPrefix) (compiled517_eq (step516 bitmapPrefix))
def step515 (bitmapPrefix : AppList (BitVec 64)) := (function515 bitmapPrefix).2.2.1
def programs515 := (515, StackAnalysis.optimized515.2.1, StackAnalysis.optimized515.2.2) :: programs516
def bodies515 := (515, stackBody515_308) :: bodies516
def frames515 := 10 :: frames516
def after515 (bitmapPrefix : AppList (BitVec 64)) := after516 (step515 bitmapPrefix)
theorem compiled515_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs515 (bitmapPrefix, 1653) = (bodies515, frames515, after515 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 515 StackAnalysis.optimized515.2.1 StackAnalysis.optimized515.2.2 programs516 (bitmapPrefix, 1653) (step515 bitmapPrefix, 1658) (after516 (step515 bitmapPrefix), 1729) stackBody515_308 10 bodies516 frames516 (function515_eq bitmapPrefix) (compiled516_eq (step515 bitmapPrefix))
def step514 (bitmapPrefix : AppList (BitVec 64)) := (function514 bitmapPrefix).2.2.1
def programs514 := (514, StackAnalysis.optimized514.2.1, StackAnalysis.optimized514.2.2) :: programs515
def bodies514 := (514, stackBody514_308) :: bodies515
def frames514 := 10 :: frames515
def after514 (bitmapPrefix : AppList (BitVec 64)) := after515 (step514 bitmapPrefix)
theorem compiled514_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs514 (bitmapPrefix, 1648) = (bodies514, frames514, after514 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 514 StackAnalysis.optimized514.2.1 StackAnalysis.optimized514.2.2 programs515 (bitmapPrefix, 1648) (step514 bitmapPrefix, 1653) (after515 (step514 bitmapPrefix), 1729) stackBody514_308 10 bodies515 frames515 (function514_eq bitmapPrefix) (compiled515_eq (step514 bitmapPrefix))
def step513 (bitmapPrefix : AppList (BitVec 64)) := (function513 bitmapPrefix).2.2.1
def programs513 := (513, StackAnalysis.optimized513.2.1, StackAnalysis.optimized513.2.2) :: programs514
def bodies513 := (513, stackBody513_270) :: bodies514
def frames513 := 6 :: frames514
def after513 (bitmapPrefix : AppList (BitVec 64)) := after514 (step513 bitmapPrefix)
theorem compiled513_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs513 (bitmapPrefix, 1643) = (bodies513, frames513, after513 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 513 StackAnalysis.optimized513.2.1 StackAnalysis.optimized513.2.2 programs514 (bitmapPrefix, 1643) (step513 bitmapPrefix, 1648) (after514 (step513 bitmapPrefix), 1729) stackBody513_270 6 bodies514 frames514 (function513_eq bitmapPrefix) (compiled514_eq (step513 bitmapPrefix))
def step512 (bitmapPrefix : AppList (BitVec 64)) := (function512 bitmapPrefix).2.2.1
def programs512 := (512, StackAnalysis.optimized512.2.1, StackAnalysis.optimized512.2.2) :: programs513
def bodies512 := (512, stackBody512_340) :: bodies513
def frames512 := 10 :: frames513
def after512 (bitmapPrefix : AppList (BitVec 64)) := after513 (step512 bitmapPrefix)
theorem compiled512_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs512 (bitmapPrefix, 1637) = (bodies512, frames512, after512 bitmapPrefix, 1729) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 512 StackAnalysis.optimized512.2.1 StackAnalysis.optimized512.2.2 programs513 (bitmapPrefix, 1637) (step512 bitmapPrefix, 1643) (after513 (step512 bitmapPrefix), 1729) stackBody512_340 10 bodies513 frames513 (function512_eq bitmapPrefix) (compiled513_eq (step512 bitmapPrefix))
def programs := programs512
def bodies := bodies512
def frames := frames512
def after := after512
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1729)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1637) = result bitmapPrefix := compiled512_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk512_527
