import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function544
import InitECandidate.Proofs.BackendStages.Function545
import InitECandidate.Proofs.BackendStages.Function546
import InitECandidate.Proofs.BackendStages.Function547
import InitECandidate.Proofs.BackendStages.Function548
import InitECandidate.Proofs.BackendStages.Function549
import InitECandidate.Proofs.BackendStages.Function550
import InitECandidate.Proofs.BackendStages.Function551
import InitECandidate.Proofs.BackendStages.Function552
import InitECandidate.Proofs.BackendStages.Function553
import InitECandidate.Proofs.BackendStages.Function554
import InitECandidate.Proofs.BackendStages.Function555
import InitECandidate.Proofs.BackendStages.Function556
import InitECandidate.Proofs.BackendStages.Function557
import InitECandidate.Proofs.BackendStages.Function558
import InitECandidate.Proofs.BackendStages.Function559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk544_559
def programs560 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies560 : List (Nat × StackLang.HolProg 64) := []
def frames560 : List Nat := []
def after560 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled560_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs560 (bitmapPrefix, 1910) = (bodies560, frames560, after560 bitmapPrefix, 1910) := by rfl
def step559 (bitmapPrefix : AppList (BitVec 64)) := (function559 bitmapPrefix).2.2.1
def programs559 := (559, StackAnalysis.optimized559.2.1, StackAnalysis.optimized559.2.2) :: programs560
def bodies559 := (559, stackBody559_170) :: bodies560
def frames559 := 2 :: frames560
def after559 (bitmapPrefix : AppList (BitVec 64)) := after560 (step559 bitmapPrefix)
theorem compiled559_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs559 (bitmapPrefix, 1907) = (bodies559, frames559, after559 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 559 StackAnalysis.optimized559.2.1 StackAnalysis.optimized559.2.2 programs560 (bitmapPrefix, 1907) (step559 bitmapPrefix, 1910) (after560 (step559 bitmapPrefix), 1910) stackBody559_170 2 bodies560 frames560 (function559_eq bitmapPrefix) (compiled560_eq (step559 bitmapPrefix))
def step558 (bitmapPrefix : AppList (BitVec 64)) := (function558 bitmapPrefix).2.2.1
def programs558 := (558, StackAnalysis.optimized558.2.1, StackAnalysis.optimized558.2.2) :: programs559
def bodies558 := (558, stackBody558_576) :: bodies559
def frames558 := 6 :: frames559
def after558 (bitmapPrefix : AppList (BitVec 64)) := after559 (step558 bitmapPrefix)
theorem compiled558_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs558 (bitmapPrefix, 1897) = (bodies558, frames558, after558 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 558 StackAnalysis.optimized558.2.1 StackAnalysis.optimized558.2.2 programs559 (bitmapPrefix, 1897) (step558 bitmapPrefix, 1907) (after559 (step558 bitmapPrefix), 1910) stackBody558_576 6 bodies559 frames559 (function558_eq bitmapPrefix) (compiled559_eq (step558 bitmapPrefix))
def step557 (bitmapPrefix : AppList (BitVec 64)) := (function557 bitmapPrefix).2.2.1
def programs557 := (557, StackAnalysis.optimized557.2.1, StackAnalysis.optimized557.2.2) :: programs558
def bodies557 := (557, stackBody557_182) :: bodies558
def frames557 := 2 :: frames558
def after557 (bitmapPrefix : AppList (BitVec 64)) := after558 (step557 bitmapPrefix)
theorem compiled557_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs557 (bitmapPrefix, 1894) = (bodies557, frames557, after557 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 557 StackAnalysis.optimized557.2.1 StackAnalysis.optimized557.2.2 programs558 (bitmapPrefix, 1894) (step557 bitmapPrefix, 1897) (after558 (step557 bitmapPrefix), 1910) stackBody557_182 2 bodies558 frames558 (function557_eq bitmapPrefix) (compiled558_eq (step557 bitmapPrefix))
def step556 (bitmapPrefix : AppList (BitVec 64)) := (function556 bitmapPrefix).2.2.1
def programs556 := (556, StackAnalysis.optimized556.2.1, StackAnalysis.optimized556.2.2) :: programs557
def bodies556 := (556, stackBody556_218) :: bodies557
def frames556 := 2 :: frames557
def after556 (bitmapPrefix : AppList (BitVec 64)) := after557 (step556 bitmapPrefix)
theorem compiled556_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs556 (bitmapPrefix, 1890) = (bodies556, frames556, after556 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 556 StackAnalysis.optimized556.2.1 StackAnalysis.optimized556.2.2 programs557 (bitmapPrefix, 1890) (step556 bitmapPrefix, 1894) (after557 (step556 bitmapPrefix), 1910) stackBody556_218 2 bodies557 frames557 (function556_eq bitmapPrefix) (compiled557_eq (step556 bitmapPrefix))
def step555 (bitmapPrefix : AppList (BitVec 64)) := (function555 bitmapPrefix).2.2.1
def programs555 := (555, StackAnalysis.optimized555.2.1, StackAnalysis.optimized555.2.2) :: programs556
def bodies555 := (555, stackBody555_222) :: bodies556
def frames555 := 2 :: frames556
def after555 (bitmapPrefix : AppList (BitVec 64)) := after556 (step555 bitmapPrefix)
theorem compiled555_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs555 (bitmapPrefix, 1886) = (bodies555, frames555, after555 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 555 StackAnalysis.optimized555.2.1 StackAnalysis.optimized555.2.2 programs556 (bitmapPrefix, 1886) (step555 bitmapPrefix, 1890) (after556 (step555 bitmapPrefix), 1910) stackBody555_222 2 bodies556 frames556 (function555_eq bitmapPrefix) (compiled556_eq (step555 bitmapPrefix))
def step554 (bitmapPrefix : AppList (BitVec 64)) := (function554 bitmapPrefix).2.2.1
def programs554 := (554, StackAnalysis.optimized554.2.1, StackAnalysis.optimized554.2.2) :: programs555
def bodies554 := (554, stackBody554_420) :: bodies555
def frames554 := 4 :: frames555
def after554 (bitmapPrefix : AppList (BitVec 64)) := after555 (step554 bitmapPrefix)
theorem compiled554_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs554 (bitmapPrefix, 1878) = (bodies554, frames554, after554 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 554 StackAnalysis.optimized554.2.1 StackAnalysis.optimized554.2.2 programs555 (bitmapPrefix, 1878) (step554 bitmapPrefix, 1886) (after555 (step554 bitmapPrefix), 1910) stackBody554_420 4 bodies555 frames555 (function554_eq bitmapPrefix) (compiled555_eq (step554 bitmapPrefix))
def step553 (bitmapPrefix : AppList (BitVec 64)) := (function553 bitmapPrefix).2.2.1
def programs553 := (553, StackAnalysis.optimized553.2.1, StackAnalysis.optimized553.2.2) :: programs554
def bodies553 := (553, stackBody553_218) :: bodies554
def frames553 := 2 :: frames554
def after553 (bitmapPrefix : AppList (BitVec 64)) := after554 (step553 bitmapPrefix)
theorem compiled553_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs553 (bitmapPrefix, 1874) = (bodies553, frames553, after553 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 553 StackAnalysis.optimized553.2.1 StackAnalysis.optimized553.2.2 programs554 (bitmapPrefix, 1874) (step553 bitmapPrefix, 1878) (after554 (step553 bitmapPrefix), 1910) stackBody553_218 2 bodies554 frames554 (function553_eq bitmapPrefix) (compiled554_eq (step553 bitmapPrefix))
def step552 (bitmapPrefix : AppList (BitVec 64)) := (function552 bitmapPrefix).2.2.1
def programs552 := (552, StackAnalysis.optimized552.2.1, StackAnalysis.optimized552.2.2) :: programs553
def bodies552 := (552, stackBody552_426) :: bodies553
def frames552 := 10 :: frames553
def after552 (bitmapPrefix : AppList (BitVec 64)) := after553 (step552 bitmapPrefix)
theorem compiled552_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs552 (bitmapPrefix, 1867) = (bodies552, frames552, after552 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 552 StackAnalysis.optimized552.2.1 StackAnalysis.optimized552.2.2 programs553 (bitmapPrefix, 1867) (step552 bitmapPrefix, 1874) (after553 (step552 bitmapPrefix), 1910) stackBody552_426 10 bodies553 frames553 (function552_eq bitmapPrefix) (compiled553_eq (step552 bitmapPrefix))
def step551 (bitmapPrefix : AppList (BitVec 64)) := (function551 bitmapPrefix).2.2.1
def programs551 := (551, StackAnalysis.optimized551.2.1, StackAnalysis.optimized551.2.2) :: programs552
def bodies551 := (551, stackBody551_340) :: bodies552
def frames551 := 6 :: frames552
def after551 (bitmapPrefix : AppList (BitVec 64)) := after552 (step551 bitmapPrefix)
theorem compiled551_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs551 (bitmapPrefix, 1861) = (bodies551, frames551, after551 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 551 StackAnalysis.optimized551.2.1 StackAnalysis.optimized551.2.2 programs552 (bitmapPrefix, 1861) (step551 bitmapPrefix, 1867) (after552 (step551 bitmapPrefix), 1910) stackBody551_340 6 bodies552 frames552 (function551_eq bitmapPrefix) (compiled552_eq (step551 bitmapPrefix))
def step550 (bitmapPrefix : AppList (BitVec 64)) := (function550 bitmapPrefix).2.2.1
def programs550 := (550, StackAnalysis.optimized550.2.1, StackAnalysis.optimized550.2.2) :: programs551
def bodies550 := (550, stackBody550_2032) :: bodies551
def frames550 := 19 :: frames551
def after550 (bitmapPrefix : AppList (BitVec 64)) := after551 (step550 bitmapPrefix)
theorem compiled550_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs550 (bitmapPrefix, 1839) = (bodies550, frames550, after550 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 550 StackAnalysis.optimized550.2.1 StackAnalysis.optimized550.2.2 programs551 (bitmapPrefix, 1839) (step550 bitmapPrefix, 1861) (after551 (step550 bitmapPrefix), 1910) stackBody550_2032 19 bodies551 frames551 (function550_eq bitmapPrefix) (compiled551_eq (step550 bitmapPrefix))
def step549 (bitmapPrefix : AppList (BitVec 64)) := (function549 bitmapPrefix).2.2.1
def programs549 := (549, StackAnalysis.optimized549.2.1, StackAnalysis.optimized549.2.2) :: programs550
def bodies549 := (549, stackBody549_500) :: bodies550
def frames549 := 4 :: frames550
def after549 (bitmapPrefix : AppList (BitVec 64)) := after550 (step549 bitmapPrefix)
theorem compiled549_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs549 (bitmapPrefix, 1830) = (bodies549, frames549, after549 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 549 StackAnalysis.optimized549.2.1 StackAnalysis.optimized549.2.2 programs550 (bitmapPrefix, 1830) (step549 bitmapPrefix, 1839) (after550 (step549 bitmapPrefix), 1910) stackBody549_500 4 bodies550 frames550 (function549_eq bitmapPrefix) (compiled550_eq (step549 bitmapPrefix))
def step548 (bitmapPrefix : AppList (BitVec 64)) := (function548 bitmapPrefix).2.2.1
def programs548 := (548, StackAnalysis.optimized548.2.1, StackAnalysis.optimized548.2.2) :: programs549
def bodies548 := (548, stackBody548_118) :: bodies549
def frames548 := 2 :: frames549
def after548 (bitmapPrefix : AppList (BitVec 64)) := after549 (step548 bitmapPrefix)
theorem compiled548_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs548 (bitmapPrefix, 1828) = (bodies548, frames548, after548 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 548 StackAnalysis.optimized548.2.1 StackAnalysis.optimized548.2.2 programs549 (bitmapPrefix, 1828) (step548 bitmapPrefix, 1830) (after549 (step548 bitmapPrefix), 1910) stackBody548_118 2 bodies549 frames549 (function548_eq bitmapPrefix) (compiled549_eq (step548 bitmapPrefix))
def step547 (bitmapPrefix : AppList (BitVec 64)) := (function547 bitmapPrefix).2.2.1
def programs547 := (547, StackAnalysis.optimized547.2.1, StackAnalysis.optimized547.2.2) :: programs548
def bodies547 := (547, stackBody547_114) :: bodies548
def frames547 := 2 :: frames548
def after547 (bitmapPrefix : AppList (BitVec 64)) := after548 (step547 bitmapPrefix)
theorem compiled547_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs547 (bitmapPrefix, 1826) = (bodies547, frames547, after547 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 547 StackAnalysis.optimized547.2.1 StackAnalysis.optimized547.2.2 programs548 (bitmapPrefix, 1826) (step547 bitmapPrefix, 1828) (after548 (step547 bitmapPrefix), 1910) stackBody547_114 2 bodies548 frames548 (function547_eq bitmapPrefix) (compiled548_eq (step547 bitmapPrefix))
def step546 (bitmapPrefix : AppList (BitVec 64)) := (function546 bitmapPrefix).2.2.1
def programs546 := (546, StackAnalysis.optimized546.2.1, StackAnalysis.optimized546.2.2) :: programs547
def bodies546 := (546, stackBody546_1661) :: bodies547
def frames546 := 19 :: frames547
def after546 (bitmapPrefix : AppList (BitVec 64)) := after547 (step546 bitmapPrefix)
theorem compiled546_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs546 (bitmapPrefix, 1805) = (bodies546, frames546, after546 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 546 StackAnalysis.optimized546.2.1 StackAnalysis.optimized546.2.2 programs547 (bitmapPrefix, 1805) (step546 bitmapPrefix, 1826) (after547 (step546 bitmapPrefix), 1910) stackBody546_1661 19 bodies547 frames547 (function546_eq bitmapPrefix) (compiled547_eq (step546 bitmapPrefix))
def step545 (bitmapPrefix : AppList (BitVec 64)) := (function545 bitmapPrefix).2.2.1
def programs545 := (545, StackAnalysis.optimized545.2.1, StackAnalysis.optimized545.2.2) :: programs546
def bodies545 := (545, stackBody545_74) :: bodies546
def frames545 := 3 :: frames546
def after545 (bitmapPrefix : AppList (BitVec 64)) := after546 (step545 bitmapPrefix)
theorem compiled545_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs545 (bitmapPrefix, 1804) = (bodies545, frames545, after545 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 545 StackAnalysis.optimized545.2.1 StackAnalysis.optimized545.2.2 programs546 (bitmapPrefix, 1804) (step545 bitmapPrefix, 1805) (after546 (step545 bitmapPrefix), 1910) stackBody545_74 3 bodies546 frames546 (function545_eq bitmapPrefix) (compiled546_eq (step545 bitmapPrefix))
def step544 (bitmapPrefix : AppList (BitVec 64)) := (function544 bitmapPrefix).2.2.1
def programs544 := (544, StackAnalysis.optimized544.2.1, StackAnalysis.optimized544.2.2) :: programs545
def bodies544 := (544, stackBody544_394) :: bodies545
def frames544 := 4 :: frames545
def after544 (bitmapPrefix : AppList (BitVec 64)) := after545 (step544 bitmapPrefix)
theorem compiled544_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs544 (bitmapPrefix, 1799) = (bodies544, frames544, after544 bitmapPrefix, 1910) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 544 StackAnalysis.optimized544.2.1 StackAnalysis.optimized544.2.2 programs545 (bitmapPrefix, 1799) (step544 bitmapPrefix, 1804) (after545 (step544 bitmapPrefix), 1910) stackBody544_394 4 bodies545 frames545 (function544_eq bitmapPrefix) (compiled545_eq (step544 bitmapPrefix))
def programs := programs544
def bodies := bodies544
def frames := frames544
def after := after544
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1910)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1799) = result bitmapPrefix := compiled544_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk544_559
