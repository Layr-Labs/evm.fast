import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function448
import InitECandidate.Proofs.BackendStages.Function449
import InitECandidate.Proofs.BackendStages.Function450
import InitECandidate.Proofs.BackendStages.Function451
import InitECandidate.Proofs.BackendStages.Function452
import InitECandidate.Proofs.BackendStages.Function453
import InitECandidate.Proofs.BackendStages.Function454
import InitECandidate.Proofs.BackendStages.Function455
import InitECandidate.Proofs.BackendStages.Function456
import InitECandidate.Proofs.BackendStages.Function457
import InitECandidate.Proofs.BackendStages.Function458
import InitECandidate.Proofs.BackendStages.Function459
import InitECandidate.Proofs.BackendStages.Function460
import InitECandidate.Proofs.BackendStages.Function461
import InitECandidate.Proofs.BackendStages.Function462
import InitECandidate.Proofs.BackendStages.Function463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk448_463
def programs464 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies464 : List (Nat × StackLang.HolProg 64) := []
def frames464 : List Nat := []
def after464 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled464_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs464 (bitmapPrefix, 1487) = (bodies464, frames464, after464 bitmapPrefix, 1487) := by rfl
def step463 (bitmapPrefix : AppList (BitVec 64)) := (function463 bitmapPrefix).2.2.1
def programs463 := (463, StackAnalysis.optimized463.2.1, StackAnalysis.optimized463.2.2) :: programs464
def bodies463 := (463, stackBody463_24) :: bodies464
def frames463 := 0 :: frames464
def after463 (bitmapPrefix : AppList (BitVec 64)) := after464 (step463 bitmapPrefix)
theorem compiled463_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs463 (bitmapPrefix, 1487) = (bodies463, frames463, after463 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 463 StackAnalysis.optimized463.2.1 StackAnalysis.optimized463.2.2 programs464 (bitmapPrefix, 1487) (step463 bitmapPrefix, 1487) (after464 (step463 bitmapPrefix), 1487) stackBody463_24 0 bodies464 frames464 (function463_eq bitmapPrefix) (compiled464_eq (step463 bitmapPrefix))
def step462 (bitmapPrefix : AppList (BitVec 64)) := (function462 bitmapPrefix).2.2.1
def programs462 := (462, StackAnalysis.optimized462.2.1, StackAnalysis.optimized462.2.2) :: programs463
def bodies462 := (462, stackBody462_28) :: bodies463
def frames462 := 0 :: frames463
def after462 (bitmapPrefix : AppList (BitVec 64)) := after463 (step462 bitmapPrefix)
theorem compiled462_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs462 (bitmapPrefix, 1487) = (bodies462, frames462, after462 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 462 StackAnalysis.optimized462.2.1 StackAnalysis.optimized462.2.2 programs463 (bitmapPrefix, 1487) (step462 bitmapPrefix, 1487) (after463 (step462 bitmapPrefix), 1487) stackBody462_28 0 bodies463 frames463 (function462_eq bitmapPrefix) (compiled463_eq (step462 bitmapPrefix))
def step461 (bitmapPrefix : AppList (BitVec 64)) := (function461 bitmapPrefix).2.2.1
def programs461 := (461, StackAnalysis.optimized461.2.1, StackAnalysis.optimized461.2.2) :: programs462
def bodies461 := (461, stackBody461_566) :: bodies462
def frames461 := 14 :: frames462
def after461 (bitmapPrefix : AppList (BitVec 64)) := after462 (step461 bitmapPrefix)
theorem compiled461_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs461 (bitmapPrefix, 1483) = (bodies461, frames461, after461 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 461 StackAnalysis.optimized461.2.1 StackAnalysis.optimized461.2.2 programs462 (bitmapPrefix, 1483) (step461 bitmapPrefix, 1487) (after462 (step461 bitmapPrefix), 1487) stackBody461_566 14 bodies462 frames462 (function461_eq bitmapPrefix) (compiled462_eq (step461 bitmapPrefix))
def step460 (bitmapPrefix : AppList (BitVec 64)) := (function460 bitmapPrefix).2.2.1
def programs460 := (460, StackAnalysis.optimized460.2.1, StackAnalysis.optimized460.2.2) :: programs461
def bodies460 := (460, stackBody460_1514) :: bodies461
def frames460 := 16 :: frames461
def after460 (bitmapPrefix : AppList (BitVec 64)) := after461 (step460 bitmapPrefix)
theorem compiled460_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs460 (bitmapPrefix, 1469) = (bodies460, frames460, after460 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 460 StackAnalysis.optimized460.2.1 StackAnalysis.optimized460.2.2 programs461 (bitmapPrefix, 1469) (step460 bitmapPrefix, 1483) (after461 (step460 bitmapPrefix), 1487) stackBody460_1514 16 bodies461 frames461 (function460_eq bitmapPrefix) (compiled461_eq (step460 bitmapPrefix))
def step459 (bitmapPrefix : AppList (BitVec 64)) := (function459 bitmapPrefix).2.2.1
def programs459 := (459, StackAnalysis.optimized459.2.1, StackAnalysis.optimized459.2.2) :: programs460
def bodies459 := (459, stackBody459_5593) :: bodies460
def frames459 := 33 :: frames460
def after459 (bitmapPrefix : AppList (BitVec 64)) := after460 (step459 bitmapPrefix)
theorem compiled459_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs459 (bitmapPrefix, 1409) = (bodies459, frames459, after459 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 459 StackAnalysis.optimized459.2.1 StackAnalysis.optimized459.2.2 programs460 (bitmapPrefix, 1409) (step459 bitmapPrefix, 1469) (after460 (step459 bitmapPrefix), 1487) stackBody459_5593 33 bodies460 frames460 (function459_eq bitmapPrefix) (compiled460_eq (step459 bitmapPrefix))
def step458 (bitmapPrefix : AppList (BitVec 64)) := (function458 bitmapPrefix).2.2.1
def programs458 := (458, StackAnalysis.optimized458.2.1, StackAnalysis.optimized458.2.2) :: programs459
def bodies458 := (458, stackBody458_122) :: bodies459
def frames458 := 4 :: frames459
def after458 (bitmapPrefix : AppList (BitVec 64)) := after459 (step458 bitmapPrefix)
theorem compiled458_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs458 (bitmapPrefix, 1407) = (bodies458, frames458, after458 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 458 StackAnalysis.optimized458.2.1 StackAnalysis.optimized458.2.2 programs459 (bitmapPrefix, 1407) (step458 bitmapPrefix, 1409) (after459 (step458 bitmapPrefix), 1487) stackBody458_122 4 bodies459 frames459 (function458_eq bitmapPrefix) (compiled459_eq (step458 bitmapPrefix))
def step457 (bitmapPrefix : AppList (BitVec 64)) := (function457 bitmapPrefix).2.2.1
def programs457 := (457, StackAnalysis.optimized457.2.1, StackAnalysis.optimized457.2.2) :: programs458
def bodies457 := (457, stackBody457_1625) :: bodies458
def frames457 := 20 :: frames458
def after457 (bitmapPrefix : AppList (BitVec 64)) := after458 (step457 bitmapPrefix)
theorem compiled457_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs457 (bitmapPrefix, 1398) = (bodies457, frames457, after457 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 457 StackAnalysis.optimized457.2.1 StackAnalysis.optimized457.2.2 programs458 (bitmapPrefix, 1398) (step457 bitmapPrefix, 1407) (after458 (step457 bitmapPrefix), 1487) stackBody457_1625 20 bodies458 frames458 (function457_eq bitmapPrefix) (compiled458_eq (step457 bitmapPrefix))
def step456 (bitmapPrefix : AppList (BitVec 64)) := (function456 bitmapPrefix).2.2.1
def programs456 := (456, StackAnalysis.optimized456.2.1, StackAnalysis.optimized456.2.2) :: programs457
def bodies456 := (456, stackBody456_139) :: bodies457
def frames456 := 0 :: frames457
def after456 (bitmapPrefix : AppList (BitVec 64)) := after457 (step456 bitmapPrefix)
theorem compiled456_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs456 (bitmapPrefix, 1398) = (bodies456, frames456, after456 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 456 StackAnalysis.optimized456.2.1 StackAnalysis.optimized456.2.2 programs457 (bitmapPrefix, 1398) (step456 bitmapPrefix, 1398) (after457 (step456 bitmapPrefix), 1487) stackBody456_139 0 bodies457 frames457 (function456_eq bitmapPrefix) (compiled457_eq (step456 bitmapPrefix))
def step455 (bitmapPrefix : AppList (BitVec 64)) := (function455 bitmapPrefix).2.2.1
def programs455 := (455, StackAnalysis.optimized455.2.1, StackAnalysis.optimized455.2.2) :: programs456
def bodies455 := (455, stackBody455_104) :: bodies456
def frames455 := 2 :: frames456
def after455 (bitmapPrefix : AppList (BitVec 64)) := after456 (step455 bitmapPrefix)
theorem compiled455_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs455 (bitmapPrefix, 1396) = (bodies455, frames455, after455 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 455 StackAnalysis.optimized455.2.1 StackAnalysis.optimized455.2.2 programs456 (bitmapPrefix, 1396) (step455 bitmapPrefix, 1398) (after456 (step455 bitmapPrefix), 1487) stackBody455_104 2 bodies456 frames456 (function455_eq bitmapPrefix) (compiled456_eq (step455 bitmapPrefix))
def step454 (bitmapPrefix : AppList (BitVec 64)) := (function454 bitmapPrefix).2.2.1
def programs454 := (454, StackAnalysis.optimized454.2.1, StackAnalysis.optimized454.2.2) :: programs455
def bodies454 := (454, stackBody454_1741) :: bodies455
def frames454 := 18 :: frames455
def after454 (bitmapPrefix : AppList (BitVec 64)) := after455 (step454 bitmapPrefix)
theorem compiled454_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs454 (bitmapPrefix, 1379) = (bodies454, frames454, after454 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 454 StackAnalysis.optimized454.2.1 StackAnalysis.optimized454.2.2 programs455 (bitmapPrefix, 1379) (step454 bitmapPrefix, 1396) (after455 (step454 bitmapPrefix), 1487) stackBody454_1741 18 bodies455 frames455 (function454_eq bitmapPrefix) (compiled455_eq (step454 bitmapPrefix))
def step453 (bitmapPrefix : AppList (BitVec 64)) := (function453 bitmapPrefix).2.2.1
def programs453 := (453, StackAnalysis.optimized453.2.1, StackAnalysis.optimized453.2.2) :: programs454
def bodies453 := (453, stackBody453_308) :: bodies454
def frames453 := 5 :: frames454
def after453 (bitmapPrefix : AppList (BitVec 64)) := after454 (step453 bitmapPrefix)
theorem compiled453_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs453 (bitmapPrefix, 1375) = (bodies453, frames453, after453 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 453 StackAnalysis.optimized453.2.1 StackAnalysis.optimized453.2.2 programs454 (bitmapPrefix, 1375) (step453 bitmapPrefix, 1379) (after454 (step453 bitmapPrefix), 1487) stackBody453_308 5 bodies454 frames454 (function453_eq bitmapPrefix) (compiled454_eq (step453 bitmapPrefix))
def step452 (bitmapPrefix : AppList (BitVec 64)) := (function452 bitmapPrefix).2.2.1
def programs452 := (452, StackAnalysis.optimized452.2.1, StackAnalysis.optimized452.2.2) :: programs453
def bodies452 := (452, stackBody452_164) :: bodies453
def frames452 := 5 :: frames453
def after452 (bitmapPrefix : AppList (BitVec 64)) := after453 (step452 bitmapPrefix)
theorem compiled452_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs452 (bitmapPrefix, 1373) = (bodies452, frames452, after452 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 452 StackAnalysis.optimized452.2.1 StackAnalysis.optimized452.2.2 programs453 (bitmapPrefix, 1373) (step452 bitmapPrefix, 1375) (after453 (step452 bitmapPrefix), 1487) stackBody452_164 5 bodies453 frames453 (function452_eq bitmapPrefix) (compiled453_eq (step452 bitmapPrefix))
def step451 (bitmapPrefix : AppList (BitVec 64)) := (function451 bitmapPrefix).2.2.1
def programs451 := (451, StackAnalysis.optimized451.2.1, StackAnalysis.optimized451.2.2) :: programs452
def bodies451 := (451, stackBody451_223) :: bodies452
def frames451 := 4 :: frames452
def after451 (bitmapPrefix : AppList (BitVec 64)) := after452 (step451 bitmapPrefix)
theorem compiled451_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs451 (bitmapPrefix, 1372) = (bodies451, frames451, after451 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 451 StackAnalysis.optimized451.2.1 StackAnalysis.optimized451.2.2 programs452 (bitmapPrefix, 1372) (step451 bitmapPrefix, 1373) (after452 (step451 bitmapPrefix), 1487) stackBody451_223 4 bodies452 frames452 (function451_eq bitmapPrefix) (compiled452_eq (step451 bitmapPrefix))
def step450 (bitmapPrefix : AppList (BitVec 64)) := (function450 bitmapPrefix).2.2.1
def programs450 := (450, StackAnalysis.optimized450.2.1, StackAnalysis.optimized450.2.2) :: programs451
def bodies450 := (450, stackBody450_758) :: bodies451
def frames450 := 10 :: frames451
def after450 (bitmapPrefix : AppList (BitVec 64)) := after451 (step450 bitmapPrefix)
theorem compiled450_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs450 (bitmapPrefix, 1362) = (bodies450, frames450, after450 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 450 StackAnalysis.optimized450.2.1 StackAnalysis.optimized450.2.2 programs451 (bitmapPrefix, 1362) (step450 bitmapPrefix, 1372) (after451 (step450 bitmapPrefix), 1487) stackBody450_758 10 bodies451 frames451 (function450_eq bitmapPrefix) (compiled451_eq (step450 bitmapPrefix))
def step449 (bitmapPrefix : AppList (BitVec 64)) := (function449 bitmapPrefix).2.2.1
def programs449 := (449, StackAnalysis.optimized449.2.1, StackAnalysis.optimized449.2.2) :: programs450
def bodies449 := (449, stackBody449_764) :: bodies450
def frames449 := 6 :: frames450
def after449 (bitmapPrefix : AppList (BitVec 64)) := after450 (step449 bitmapPrefix)
theorem compiled449_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs449 (bitmapPrefix, 1351) = (bodies449, frames449, after449 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 449 StackAnalysis.optimized449.2.1 StackAnalysis.optimized449.2.2 programs450 (bitmapPrefix, 1351) (step449 bitmapPrefix, 1362) (after450 (step449 bitmapPrefix), 1487) stackBody449_764 6 bodies450 frames450 (function449_eq bitmapPrefix) (compiled450_eq (step449 bitmapPrefix))
def step448 (bitmapPrefix : AppList (BitVec 64)) := (function448 bitmapPrefix).2.2.1
def programs448 := (448, StackAnalysis.optimized448.2.1, StackAnalysis.optimized448.2.2) :: programs449
def bodies448 := (448, stackBody448_218) :: bodies449
def frames448 := 4 :: frames449
def after448 (bitmapPrefix : AppList (BitVec 64)) := after449 (step448 bitmapPrefix)
theorem compiled448_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs448 (bitmapPrefix, 1348) = (bodies448, frames448, after448 bitmapPrefix, 1487) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 448 StackAnalysis.optimized448.2.1 StackAnalysis.optimized448.2.2 programs449 (bitmapPrefix, 1348) (step448 bitmapPrefix, 1351) (after449 (step448 bitmapPrefix), 1487) stackBody448_218 4 bodies449 frames449 (function448_eq bitmapPrefix) (compiled449_eq (step448 bitmapPrefix))
def programs := programs448
def bodies := bodies448
def frames := frames448
def after := after448
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1487)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1348) = result bitmapPrefix := compiled448_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk448_463
