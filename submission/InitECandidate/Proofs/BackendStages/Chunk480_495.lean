import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function480
import InitECandidate.Proofs.BackendStages.Function481
import InitECandidate.Proofs.BackendStages.Function482
import InitECandidate.Proofs.BackendStages.Function483
import InitECandidate.Proofs.BackendStages.Function484
import InitECandidate.Proofs.BackendStages.Function485
import InitECandidate.Proofs.BackendStages.Function486
import InitECandidate.Proofs.BackendStages.Function487
import InitECandidate.Proofs.BackendStages.Function488
import InitECandidate.Proofs.BackendStages.Function489
import InitECandidate.Proofs.BackendStages.Function490
import InitECandidate.Proofs.BackendStages.Function491
import InitECandidate.Proofs.BackendStages.Function492
import InitECandidate.Proofs.BackendStages.Function493
import InitECandidate.Proofs.BackendStages.Function494
import InitECandidate.Proofs.BackendStages.Function495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk480_495
def programs496 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies496 : List (Nat × StackLang.HolProg 64) := []
def frames496 : List Nat := []
def after496 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled496_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs496 (bitmapPrefix, 1542) = (bodies496, frames496, after496 bitmapPrefix, 1542) := by rfl
def step495 (bitmapPrefix : AppList (BitVec 64)) := (function495 bitmapPrefix).2.2.1
def programs495 := (495, StackAnalysis.optimized495.2.1, StackAnalysis.optimized495.2.2) :: programs496
def bodies495 := (495, stackBody495_78) :: bodies496
def frames495 := 2 :: frames496
def after495 (bitmapPrefix : AppList (BitVec 64)) := after496 (step495 bitmapPrefix)
theorem compiled495_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs495 (bitmapPrefix, 1541) = (bodies495, frames495, after495 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 495 StackAnalysis.optimized495.2.1 StackAnalysis.optimized495.2.2 programs496 (bitmapPrefix, 1541) (step495 bitmapPrefix, 1542) (after496 (step495 bitmapPrefix), 1542) stackBody495_78 2 bodies496 frames496 (function495_eq bitmapPrefix) (compiled496_eq (step495 bitmapPrefix))
def step494 (bitmapPrefix : AppList (BitVec 64)) := (function494 bitmapPrefix).2.2.1
def programs494 := (494, StackAnalysis.optimized494.2.1, StackAnalysis.optimized494.2.2) :: programs495
def bodies494 := (494, stackBody494_72) :: bodies495
def frames494 := 2 :: frames495
def after494 (bitmapPrefix : AppList (BitVec 64)) := after495 (step494 bitmapPrefix)
theorem compiled494_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs494 (bitmapPrefix, 1540) = (bodies494, frames494, after494 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 494 StackAnalysis.optimized494.2.1 StackAnalysis.optimized494.2.2 programs495 (bitmapPrefix, 1540) (step494 bitmapPrefix, 1541) (after495 (step494 bitmapPrefix), 1542) stackBody494_72 2 bodies495 frames495 (function494_eq bitmapPrefix) (compiled495_eq (step494 bitmapPrefix))
def step493 (bitmapPrefix : AppList (BitVec 64)) := (function493 bitmapPrefix).2.2.1
def programs493 := (493, StackAnalysis.optimized493.2.1, StackAnalysis.optimized493.2.2) :: programs494
def bodies493 := (493, stackBody493_68) :: bodies494
def frames493 := 2 :: frames494
def after493 (bitmapPrefix : AppList (BitVec 64)) := after494 (step493 bitmapPrefix)
theorem compiled493_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs493 (bitmapPrefix, 1539) = (bodies493, frames493, after493 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 493 StackAnalysis.optimized493.2.1 StackAnalysis.optimized493.2.2 programs494 (bitmapPrefix, 1539) (step493 bitmapPrefix, 1540) (after494 (step493 bitmapPrefix), 1542) stackBody493_68 2 bodies494 frames494 (function493_eq bitmapPrefix) (compiled494_eq (step493 bitmapPrefix))
def step492 (bitmapPrefix : AppList (BitVec 64)) := (function492 bitmapPrefix).2.2.1
def programs492 := (492, StackAnalysis.optimized492.2.1, StackAnalysis.optimized492.2.2) :: programs493
def bodies492 := (492, stackBody492_42) :: bodies493
def frames492 := 0 :: frames493
def after492 (bitmapPrefix : AppList (BitVec 64)) := after493 (step492 bitmapPrefix)
theorem compiled492_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs492 (bitmapPrefix, 1539) = (bodies492, frames492, after492 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 492 StackAnalysis.optimized492.2.1 StackAnalysis.optimized492.2.2 programs493 (bitmapPrefix, 1539) (step492 bitmapPrefix, 1539) (after493 (step492 bitmapPrefix), 1542) stackBody492_42 0 bodies493 frames493 (function492_eq bitmapPrefix) (compiled493_eq (step492 bitmapPrefix))
def step491 (bitmapPrefix : AppList (BitVec 64)) := (function491 bitmapPrefix).2.2.1
def programs491 := (491, StackAnalysis.optimized491.2.1, StackAnalysis.optimized491.2.2) :: programs492
def bodies491 := (491, stackBody491_16) :: bodies492
def frames491 := 0 :: frames492
def after491 (bitmapPrefix : AppList (BitVec 64)) := after492 (step491 bitmapPrefix)
theorem compiled491_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs491 (bitmapPrefix, 1539) = (bodies491, frames491, after491 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 491 StackAnalysis.optimized491.2.1 StackAnalysis.optimized491.2.2 programs492 (bitmapPrefix, 1539) (step491 bitmapPrefix, 1539) (after492 (step491 bitmapPrefix), 1542) stackBody491_16 0 bodies492 frames492 (function491_eq bitmapPrefix) (compiled492_eq (step491 bitmapPrefix))
def step490 (bitmapPrefix : AppList (BitVec 64)) := (function490 bitmapPrefix).2.2.1
def programs490 := (490, StackAnalysis.optimized490.2.1, StackAnalysis.optimized490.2.2) :: programs491
def bodies490 := (490, stackBody490_26) :: bodies491
def frames490 := 0 :: frames491
def after490 (bitmapPrefix : AppList (BitVec 64)) := after491 (step490 bitmapPrefix)
theorem compiled490_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs490 (bitmapPrefix, 1539) = (bodies490, frames490, after490 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 490 StackAnalysis.optimized490.2.1 StackAnalysis.optimized490.2.2 programs491 (bitmapPrefix, 1539) (step490 bitmapPrefix, 1539) (after491 (step490 bitmapPrefix), 1542) stackBody490_26 0 bodies491 frames491 (function490_eq bitmapPrefix) (compiled491_eq (step490 bitmapPrefix))
def step489 (bitmapPrefix : AppList (BitVec 64)) := (function489 bitmapPrefix).2.2.1
def programs489 := (489, StackAnalysis.optimized489.2.1, StackAnalysis.optimized489.2.2) :: programs490
def bodies489 := (489, stackBody489_846) :: bodies490
def frames489 := 6 :: frames490
def after489 (bitmapPrefix : AppList (BitVec 64)) := after490 (step489 bitmapPrefix)
theorem compiled489_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs489 (bitmapPrefix, 1528) = (bodies489, frames489, after489 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 489 StackAnalysis.optimized489.2.1 StackAnalysis.optimized489.2.2 programs490 (bitmapPrefix, 1528) (step489 bitmapPrefix, 1539) (after490 (step489 bitmapPrefix), 1542) stackBody489_846 6 bodies490 frames490 (function489_eq bitmapPrefix) (compiled490_eq (step489 bitmapPrefix))
def step488 (bitmapPrefix : AppList (BitVec 64)) := (function488 bitmapPrefix).2.2.1
def programs488 := (488, StackAnalysis.optimized488.2.1, StackAnalysis.optimized488.2.2) :: programs489
def bodies488 := (488, stackBody488_114) :: bodies489
def frames488 := 3 :: frames489
def after488 (bitmapPrefix : AppList (BitVec 64)) := after489 (step488 bitmapPrefix)
theorem compiled488_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs488 (bitmapPrefix, 1526) = (bodies488, frames488, after488 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 488 StackAnalysis.optimized488.2.1 StackAnalysis.optimized488.2.2 programs489 (bitmapPrefix, 1526) (step488 bitmapPrefix, 1528) (after489 (step488 bitmapPrefix), 1542) stackBody488_114 3 bodies489 frames489 (function488_eq bitmapPrefix) (compiled489_eq (step488 bitmapPrefix))
def step487 (bitmapPrefix : AppList (BitVec 64)) := (function487 bitmapPrefix).2.2.1
def programs487 := (487, StackAnalysis.optimized487.2.1, StackAnalysis.optimized487.2.2) :: programs488
def bodies487 := (487, stackBody487_114) :: bodies488
def frames487 := 3 :: frames488
def after487 (bitmapPrefix : AppList (BitVec 64)) := after488 (step487 bitmapPrefix)
theorem compiled487_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs487 (bitmapPrefix, 1524) = (bodies487, frames487, after487 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 487 StackAnalysis.optimized487.2.1 StackAnalysis.optimized487.2.2 programs488 (bitmapPrefix, 1524) (step487 bitmapPrefix, 1526) (after488 (step487 bitmapPrefix), 1542) stackBody487_114 3 bodies488 frames488 (function487_eq bitmapPrefix) (compiled488_eq (step487 bitmapPrefix))
def step486 (bitmapPrefix : AppList (BitVec 64)) := (function486 bitmapPrefix).2.2.1
def programs486 := (486, StackAnalysis.optimized486.2.1, StackAnalysis.optimized486.2.2) :: programs487
def bodies486 := (486, stackBody486_80) :: bodies487
def frames486 := 0 :: frames487
def after486 (bitmapPrefix : AppList (BitVec 64)) := after487 (step486 bitmapPrefix)
theorem compiled486_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs486 (bitmapPrefix, 1524) = (bodies486, frames486, after486 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 486 StackAnalysis.optimized486.2.1 StackAnalysis.optimized486.2.2 programs487 (bitmapPrefix, 1524) (step486 bitmapPrefix, 1524) (after487 (step486 bitmapPrefix), 1542) stackBody486_80 0 bodies487 frames487 (function486_eq bitmapPrefix) (compiled487_eq (step486 bitmapPrefix))
def step485 (bitmapPrefix : AppList (BitVec 64)) := (function485 bitmapPrefix).2.2.1
def programs485 := (485, StackAnalysis.optimized485.2.1, StackAnalysis.optimized485.2.2) :: programs486
def bodies485 := (485, stackBody485_477) :: bodies486
def frames485 := 5 :: frames486
def after485 (bitmapPrefix : AppList (BitVec 64)) := after486 (step485 bitmapPrefix)
theorem compiled485_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs485 (bitmapPrefix, 1522) = (bodies485, frames485, after485 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 485 StackAnalysis.optimized485.2.1 StackAnalysis.optimized485.2.2 programs486 (bitmapPrefix, 1522) (step485 bitmapPrefix, 1524) (after486 (step485 bitmapPrefix), 1542) stackBody485_477 5 bodies486 frames486 (function485_eq bitmapPrefix) (compiled486_eq (step485 bitmapPrefix))
def step484 (bitmapPrefix : AppList (BitVec 64)) := (function484 bitmapPrefix).2.2.1
def programs484 := (484, StackAnalysis.optimized484.2.1, StackAnalysis.optimized484.2.2) :: programs485
def bodies484 := (484, stackBody484_164) :: bodies485
def frames484 := 5 :: frames485
def after484 (bitmapPrefix : AppList (BitVec 64)) := after485 (step484 bitmapPrefix)
theorem compiled484_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs484 (bitmapPrefix, 1520) = (bodies484, frames484, after484 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 484 StackAnalysis.optimized484.2.1 StackAnalysis.optimized484.2.2 programs485 (bitmapPrefix, 1520) (step484 bitmapPrefix, 1522) (after485 (step484 bitmapPrefix), 1542) stackBody484_164 5 bodies485 frames485 (function484_eq bitmapPrefix) (compiled485_eq (step484 bitmapPrefix))
def step483 (bitmapPrefix : AppList (BitVec 64)) := (function483 bitmapPrefix).2.2.1
def programs483 := (483, StackAnalysis.optimized483.2.1, StackAnalysis.optimized483.2.2) :: programs484
def bodies483 := (483, stackBody483_224) :: bodies484
def frames483 := 3 :: frames484
def after483 (bitmapPrefix : AppList (BitVec 64)) := after484 (step483 bitmapPrefix)
theorem compiled483_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs483 (bitmapPrefix, 1516) = (bodies483, frames483, after483 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 483 StackAnalysis.optimized483.2.1 StackAnalysis.optimized483.2.2 programs484 (bitmapPrefix, 1516) (step483 bitmapPrefix, 1520) (after484 (step483 bitmapPrefix), 1542) stackBody483_224 3 bodies484 frames484 (function483_eq bitmapPrefix) (compiled484_eq (step483 bitmapPrefix))
def step482 (bitmapPrefix : AppList (BitVec 64)) := (function482 bitmapPrefix).2.2.1
def programs482 := (482, StackAnalysis.optimized482.2.1, StackAnalysis.optimized482.2.2) :: programs483
def bodies482 := (482, stackBody482_344) :: bodies483
def frames482 := 7 :: frames483
def after482 (bitmapPrefix : AppList (BitVec 64)) := after483 (step482 bitmapPrefix)
theorem compiled482_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs482 (bitmapPrefix, 1513) = (bodies482, frames482, after482 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 482 StackAnalysis.optimized482.2.1 StackAnalysis.optimized482.2.2 programs483 (bitmapPrefix, 1513) (step482 bitmapPrefix, 1516) (after483 (step482 bitmapPrefix), 1542) stackBody482_344 7 bodies483 frames483 (function482_eq bitmapPrefix) (compiled483_eq (step482 bitmapPrefix))
def step481 (bitmapPrefix : AppList (BitVec 64)) := (function481 bitmapPrefix).2.2.1
def programs481 := (481, StackAnalysis.optimized481.2.1, StackAnalysis.optimized481.2.2) :: programs482
def bodies481 := (481, stackBody481_258) :: bodies482
def frames481 := 11 :: frames482
def after481 (bitmapPrefix : AppList (BitVec 64)) := after482 (step481 bitmapPrefix)
theorem compiled481_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs481 (bitmapPrefix, 1511) = (bodies481, frames481, after481 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 481 StackAnalysis.optimized481.2.1 StackAnalysis.optimized481.2.2 programs482 (bitmapPrefix, 1511) (step481 bitmapPrefix, 1513) (after482 (step481 bitmapPrefix), 1542) stackBody481_258 11 bodies482 frames482 (function481_eq bitmapPrefix) (compiled482_eq (step481 bitmapPrefix))
def step480 (bitmapPrefix : AppList (BitVec 64)) := (function480 bitmapPrefix).2.2.1
def programs480 := (480, StackAnalysis.optimized480.2.1, StackAnalysis.optimized480.2.2) :: programs481
def bodies480 := (480, stackBody480_622) :: bodies481
def frames480 := 10 :: frames481
def after480 (bitmapPrefix : AppList (BitVec 64)) := after481 (step480 bitmapPrefix)
theorem compiled480_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs480 (bitmapPrefix, 1503) = (bodies480, frames480, after480 bitmapPrefix, 1542) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 480 StackAnalysis.optimized480.2.1 StackAnalysis.optimized480.2.2 programs481 (bitmapPrefix, 1503) (step480 bitmapPrefix, 1511) (after481 (step480 bitmapPrefix), 1542) stackBody480_622 10 bodies481 frames481 (function480_eq bitmapPrefix) (compiled481_eq (step480 bitmapPrefix))
def programs := programs480
def bodies := bodies480
def frames := frames480
def after := after480
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1542)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1503) = result bitmapPrefix := compiled480_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk480_495
