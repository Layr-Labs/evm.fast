import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function432
import InitECandidate.Proofs.BackendStages.Function433
import InitECandidate.Proofs.BackendStages.Function434
import InitECandidate.Proofs.BackendStages.Function435
import InitECandidate.Proofs.BackendStages.Function436
import InitECandidate.Proofs.BackendStages.Function437
import InitECandidate.Proofs.BackendStages.Function438
import InitECandidate.Proofs.BackendStages.Function439
import InitECandidate.Proofs.BackendStages.Function440
import InitECandidate.Proofs.BackendStages.Function441
import InitECandidate.Proofs.BackendStages.Function442
import InitECandidate.Proofs.BackendStages.Function443
import InitECandidate.Proofs.BackendStages.Function444
import InitECandidate.Proofs.BackendStages.Function445
import InitECandidate.Proofs.BackendStages.Function446
import InitECandidate.Proofs.BackendStages.Function447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk432_447
def programs448 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies448 : List (Nat × StackLang.HolProg 64) := []
def frames448 : List Nat := []
def after448 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled448_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs448 (bitmapPrefix, 1348) = (bodies448, frames448, after448 bitmapPrefix, 1348) := by rfl
def step447 (bitmapPrefix : AppList (BitVec 64)) := (function447 bitmapPrefix).2.2.1
def programs447 := (447, StackAnalysis.optimized447.2.1, StackAnalysis.optimized447.2.2) :: programs448
def bodies447 := (447, stackBody447_194) :: bodies448
def frames447 := 3 :: frames448
def after447 (bitmapPrefix : AppList (BitVec 64)) := after448 (step447 bitmapPrefix)
theorem compiled447_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs447 (bitmapPrefix, 1345) = (bodies447, frames447, after447 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 447 StackAnalysis.optimized447.2.1 StackAnalysis.optimized447.2.2 programs448 (bitmapPrefix, 1345) (step447 bitmapPrefix, 1348) (after448 (step447 bitmapPrefix), 1348) stackBody447_194 3 bodies448 frames448 (function447_eq bitmapPrefix) (compiled448_eq (step447 bitmapPrefix))
def step446 (bitmapPrefix : AppList (BitVec 64)) := (function446 bitmapPrefix).2.2.1
def programs446 := (446, StackAnalysis.optimized446.2.1, StackAnalysis.optimized446.2.2) :: programs447
def bodies446 := (446, stackBody446_56) :: bodies447
def frames446 := 2 :: frames447
def after446 (bitmapPrefix : AppList (BitVec 64)) := after447 (step446 bitmapPrefix)
theorem compiled446_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs446 (bitmapPrefix, 1344) = (bodies446, frames446, after446 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 446 StackAnalysis.optimized446.2.1 StackAnalysis.optimized446.2.2 programs447 (bitmapPrefix, 1344) (step446 bitmapPrefix, 1345) (after447 (step446 bitmapPrefix), 1348) stackBody446_56 2 bodies447 frames447 (function446_eq bitmapPrefix) (compiled447_eq (step446 bitmapPrefix))
def step445 (bitmapPrefix : AppList (BitVec 64)) := (function445 bitmapPrefix).2.2.1
def programs445 := (445, StackAnalysis.optimized445.2.1, StackAnalysis.optimized445.2.2) :: programs446
def bodies445 := (445, stackBody445_154) :: bodies446
def frames445 := 5 :: frames446
def after445 (bitmapPrefix : AppList (BitVec 64)) := after446 (step445 bitmapPrefix)
theorem compiled445_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs445 (bitmapPrefix, 1342) = (bodies445, frames445, after445 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 445 StackAnalysis.optimized445.2.1 StackAnalysis.optimized445.2.2 programs446 (bitmapPrefix, 1342) (step445 bitmapPrefix, 1344) (after446 (step445 bitmapPrefix), 1348) stackBody445_154 5 bodies446 frames446 (function445_eq bitmapPrefix) (compiled446_eq (step445 bitmapPrefix))
def step444 (bitmapPrefix : AppList (BitVec 64)) := (function444 bitmapPrefix).2.2.1
def programs444 := (444, StackAnalysis.optimized444.2.1, StackAnalysis.optimized444.2.2) :: programs445
def bodies444 := (444, stackBody444_255) :: bodies445
def frames444 := 5 :: frames445
def after444 (bitmapPrefix : AppList (BitVec 64)) := after445 (step444 bitmapPrefix)
theorem compiled444_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs444 (bitmapPrefix, 1340) = (bodies444, frames444, after444 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 444 StackAnalysis.optimized444.2.1 StackAnalysis.optimized444.2.2 programs445 (bitmapPrefix, 1340) (step444 bitmapPrefix, 1342) (after445 (step444 bitmapPrefix), 1348) stackBody444_255 5 bodies445 frames445 (function444_eq bitmapPrefix) (compiled445_eq (step444 bitmapPrefix))
def step443 (bitmapPrefix : AppList (BitVec 64)) := (function443 bitmapPrefix).2.2.1
def programs443 := (443, StackAnalysis.optimized443.2.1, StackAnalysis.optimized443.2.2) :: programs444
def bodies443 := (443, stackBody443_186) :: bodies444
def frames443 := 7 :: frames444
def after443 (bitmapPrefix : AppList (BitVec 64)) := after444 (step443 bitmapPrefix)
theorem compiled443_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs443 (bitmapPrefix, 1338) = (bodies443, frames443, after443 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 443 StackAnalysis.optimized443.2.1 StackAnalysis.optimized443.2.2 programs444 (bitmapPrefix, 1338) (step443 bitmapPrefix, 1340) (after444 (step443 bitmapPrefix), 1348) stackBody443_186 7 bodies444 frames444 (function443_eq bitmapPrefix) (compiled444_eq (step443 bitmapPrefix))
def step442 (bitmapPrefix : AppList (BitVec 64)) := (function442 bitmapPrefix).2.2.1
def programs442 := (442, StackAnalysis.optimized442.2.1, StackAnalysis.optimized442.2.2) :: programs443
def bodies442 := (442, stackBody442_116) :: bodies443
def frames442 := 3 :: frames443
def after442 (bitmapPrefix : AppList (BitVec 64)) := after443 (step442 bitmapPrefix)
theorem compiled442_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs442 (bitmapPrefix, 1336) = (bodies442, frames442, after442 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 442 StackAnalysis.optimized442.2.1 StackAnalysis.optimized442.2.2 programs443 (bitmapPrefix, 1336) (step442 bitmapPrefix, 1338) (after443 (step442 bitmapPrefix), 1348) stackBody442_116 3 bodies443 frames443 (function442_eq bitmapPrefix) (compiled443_eq (step442 bitmapPrefix))
def step441 (bitmapPrefix : AppList (BitVec 64)) := (function441 bitmapPrefix).2.2.1
def programs441 := (441, StackAnalysis.optimized441.2.1, StackAnalysis.optimized441.2.2) :: programs442
def bodies441 := (441, stackBody441_376) :: bodies442
def frames441 := 9 :: frames442
def after441 (bitmapPrefix : AppList (BitVec 64)) := after442 (step441 bitmapPrefix)
theorem compiled441_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs441 (bitmapPrefix, 1331) = (bodies441, frames441, after441 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 441 StackAnalysis.optimized441.2.1 StackAnalysis.optimized441.2.2 programs442 (bitmapPrefix, 1331) (step441 bitmapPrefix, 1336) (after442 (step441 bitmapPrefix), 1348) stackBody441_376 9 bodies442 frames442 (function441_eq bitmapPrefix) (compiled442_eq (step441 bitmapPrefix))
def step440 (bitmapPrefix : AppList (BitVec 64)) := (function440 bitmapPrefix).2.2.1
def programs440 := (440, StackAnalysis.optimized440.2.1, StackAnalysis.optimized440.2.2) :: programs441
def bodies440 := (440, stackBody440_151) :: bodies441
def frames440 := 3 :: frames441
def after440 (bitmapPrefix : AppList (BitVec 64)) := after441 (step440 bitmapPrefix)
theorem compiled440_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs440 (bitmapPrefix, 1330) = (bodies440, frames440, after440 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 440 StackAnalysis.optimized440.2.1 StackAnalysis.optimized440.2.2 programs441 (bitmapPrefix, 1330) (step440 bitmapPrefix, 1331) (after441 (step440 bitmapPrefix), 1348) stackBody440_151 3 bodies441 frames441 (function440_eq bitmapPrefix) (compiled441_eq (step440 bitmapPrefix))
def step439 (bitmapPrefix : AppList (BitVec 64)) := (function439 bitmapPrefix).2.2.1
def programs439 := (439, StackAnalysis.optimized439.2.1, StackAnalysis.optimized439.2.2) :: programs440
def bodies439 := (439, stackBody439_506) :: bodies440
def frames439 := 4 :: frames440
def after439 (bitmapPrefix : AppList (BitVec 64)) := after440 (step439 bitmapPrefix)
theorem compiled439_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs439 (bitmapPrefix, 1322) = (bodies439, frames439, after439 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 439 StackAnalysis.optimized439.2.1 StackAnalysis.optimized439.2.2 programs440 (bitmapPrefix, 1322) (step439 bitmapPrefix, 1330) (after440 (step439 bitmapPrefix), 1348) stackBody439_506 4 bodies440 frames440 (function439_eq bitmapPrefix) (compiled440_eq (step439 bitmapPrefix))
def step438 (bitmapPrefix : AppList (BitVec 64)) := (function438 bitmapPrefix).2.2.1
def programs438 := (438, StackAnalysis.optimized438.2.1, StackAnalysis.optimized438.2.2) :: programs439
def bodies438 := (438, stackBody438_276) :: bodies439
def frames438 := 2 :: frames439
def after438 (bitmapPrefix : AppList (BitVec 64)) := after439 (step438 bitmapPrefix)
theorem compiled438_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs438 (bitmapPrefix, 1318) = (bodies438, frames438, after438 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 438 StackAnalysis.optimized438.2.1 StackAnalysis.optimized438.2.2 programs439 (bitmapPrefix, 1318) (step438 bitmapPrefix, 1322) (after439 (step438 bitmapPrefix), 1348) stackBody438_276 2 bodies439 frames439 (function438_eq bitmapPrefix) (compiled439_eq (step438 bitmapPrefix))
def step437 (bitmapPrefix : AppList (BitVec 64)) := (function437 bitmapPrefix).2.2.1
def programs437 := (437, StackAnalysis.optimized437.2.1, StackAnalysis.optimized437.2.2) :: programs438
def bodies437 := (437, stackBody437_224) :: bodies438
def frames437 := 7 :: frames438
def after437 (bitmapPrefix : AppList (BitVec 64)) := after438 (step437 bitmapPrefix)
theorem compiled437_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs437 (bitmapPrefix, 1316) = (bodies437, frames437, after437 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 437 StackAnalysis.optimized437.2.1 StackAnalysis.optimized437.2.2 programs438 (bitmapPrefix, 1316) (step437 bitmapPrefix, 1318) (after438 (step437 bitmapPrefix), 1348) stackBody437_224 7 bodies438 frames438 (function437_eq bitmapPrefix) (compiled438_eq (step437 bitmapPrefix))
def step436 (bitmapPrefix : AppList (BitVec 64)) := (function436 bitmapPrefix).2.2.1
def programs436 := (436, StackAnalysis.optimized436.2.1, StackAnalysis.optimized436.2.2) :: programs437
def bodies436 := (436, stackBody436_154) :: bodies437
def frames436 := 4 :: frames437
def after436 (bitmapPrefix : AppList (BitVec 64)) := after437 (step436 bitmapPrefix)
theorem compiled436_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs436 (bitmapPrefix, 1314) = (bodies436, frames436, after436 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 436 StackAnalysis.optimized436.2.1 StackAnalysis.optimized436.2.2 programs437 (bitmapPrefix, 1314) (step436 bitmapPrefix, 1316) (after437 (step436 bitmapPrefix), 1348) stackBody436_154 4 bodies437 frames437 (function436_eq bitmapPrefix) (compiled437_eq (step436 bitmapPrefix))
def step435 (bitmapPrefix : AppList (BitVec 64)) := (function435 bitmapPrefix).2.2.1
def programs435 := (435, StackAnalysis.optimized435.2.1, StackAnalysis.optimized435.2.2) :: programs436
def bodies435 := (435, stackBody435_154) :: bodies436
def frames435 := 4 :: frames436
def after435 (bitmapPrefix : AppList (BitVec 64)) := after436 (step435 bitmapPrefix)
theorem compiled435_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs435 (bitmapPrefix, 1312) = (bodies435, frames435, after435 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 435 StackAnalysis.optimized435.2.1 StackAnalysis.optimized435.2.2 programs436 (bitmapPrefix, 1312) (step435 bitmapPrefix, 1314) (after436 (step435 bitmapPrefix), 1348) stackBody435_154 4 bodies436 frames436 (function435_eq bitmapPrefix) (compiled436_eq (step435 bitmapPrefix))
def step434 (bitmapPrefix : AppList (BitVec 64)) := (function434 bitmapPrefix).2.2.1
def programs434 := (434, StackAnalysis.optimized434.2.1, StackAnalysis.optimized434.2.2) :: programs435
def bodies434 := (434, stackBody434_66) :: bodies435
def frames434 := 0 :: frames435
def after434 (bitmapPrefix : AppList (BitVec 64)) := after435 (step434 bitmapPrefix)
theorem compiled434_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs434 (bitmapPrefix, 1312) = (bodies434, frames434, after434 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 434 StackAnalysis.optimized434.2.1 StackAnalysis.optimized434.2.2 programs435 (bitmapPrefix, 1312) (step434 bitmapPrefix, 1312) (after435 (step434 bitmapPrefix), 1348) stackBody434_66 0 bodies435 frames435 (function434_eq bitmapPrefix) (compiled435_eq (step434 bitmapPrefix))
def step433 (bitmapPrefix : AppList (BitVec 64)) := (function433 bitmapPrefix).2.2.1
def programs433 := (433, StackAnalysis.optimized433.2.1, StackAnalysis.optimized433.2.2) :: programs434
def bodies433 := (433, stackBody433_751) :: bodies434
def frames433 := 8 :: frames434
def after433 (bitmapPrefix : AppList (BitVec 64)) := after434 (step433 bitmapPrefix)
theorem compiled433_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs433 (bitmapPrefix, 1302) = (bodies433, frames433, after433 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 433 StackAnalysis.optimized433.2.1 StackAnalysis.optimized433.2.2 programs434 (bitmapPrefix, 1302) (step433 bitmapPrefix, 1312) (after434 (step433 bitmapPrefix), 1348) stackBody433_751 8 bodies434 frames434 (function433_eq bitmapPrefix) (compiled434_eq (step433 bitmapPrefix))
def step432 (bitmapPrefix : AppList (BitVec 64)) := (function432 bitmapPrefix).2.2.1
def programs432 := (432, StackAnalysis.optimized432.2.1, StackAnalysis.optimized432.2.2) :: programs433
def bodies432 := (432, stackBody432_199) :: bodies433
def frames432 := 6 :: frames433
def after432 (bitmapPrefix : AppList (BitVec 64)) := after433 (step432 bitmapPrefix)
theorem compiled432_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs432 (bitmapPrefix, 1300) = (bodies432, frames432, after432 bitmapPrefix, 1348) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 432 StackAnalysis.optimized432.2.1 StackAnalysis.optimized432.2.2 programs433 (bitmapPrefix, 1300) (step432 bitmapPrefix, 1302) (after433 (step432 bitmapPrefix), 1348) stackBody432_199 6 bodies433 frames433 (function432_eq bitmapPrefix) (compiled433_eq (step432 bitmapPrefix))
def programs := programs432
def bodies := bodies432
def frames := frames432
def after := after432
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1348)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1300) = result bitmapPrefix := compiled432_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk432_447
