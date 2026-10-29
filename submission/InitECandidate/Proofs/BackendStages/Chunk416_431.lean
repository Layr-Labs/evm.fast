import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function416
import InitECandidate.Proofs.BackendStages.Function417
import InitECandidate.Proofs.BackendStages.Function418
import InitECandidate.Proofs.BackendStages.Function419
import InitECandidate.Proofs.BackendStages.Function420
import InitECandidate.Proofs.BackendStages.Function421
import InitECandidate.Proofs.BackendStages.Function422
import InitECandidate.Proofs.BackendStages.Function423
import InitECandidate.Proofs.BackendStages.Function424
import InitECandidate.Proofs.BackendStages.Function425
import InitECandidate.Proofs.BackendStages.Function426
import InitECandidate.Proofs.BackendStages.Function427
import InitECandidate.Proofs.BackendStages.Function428
import InitECandidate.Proofs.BackendStages.Function429
import InitECandidate.Proofs.BackendStages.Function430
import InitECandidate.Proofs.BackendStages.Function431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk416_431
def programs432 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies432 : List (Nat × StackLang.HolProg 64) := []
def frames432 : List Nat := []
def after432 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled432_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs432 (bitmapPrefix, 1300) = (bodies432, frames432, after432 bitmapPrefix, 1300) := by rfl
def step431 (bitmapPrefix : AppList (BitVec 64)) := (function431 bitmapPrefix).2.2.1
def programs431 := (431, StackAnalysis.optimized431.2.1, StackAnalysis.optimized431.2.2) :: programs432
def bodies431 := (431, stackBody431_502) :: bodies432
def frames431 := 6 :: frames432
def after431 (bitmapPrefix : AppList (BitVec 64)) := after432 (step431 bitmapPrefix)
theorem compiled431_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs431 (bitmapPrefix, 1292) = (bodies431, frames431, after431 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 431 StackAnalysis.optimized431.2.1 StackAnalysis.optimized431.2.2 programs432 (bitmapPrefix, 1292) (step431 bitmapPrefix, 1300) (after432 (step431 bitmapPrefix), 1300) stackBody431_502 6 bodies432 frames432 (function431_eq bitmapPrefix) (compiled432_eq (step431 bitmapPrefix))
def step430 (bitmapPrefix : AppList (BitVec 64)) := (function430 bitmapPrefix).2.2.1
def programs430 := (430, StackAnalysis.optimized430.2.1, StackAnalysis.optimized430.2.2) :: programs431
def bodies430 := (430, stackBody430_166) :: bodies431
def frames430 := 3 :: frames431
def after430 (bitmapPrefix : AppList (BitVec 64)) := after431 (step430 bitmapPrefix)
theorem compiled430_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs430 (bitmapPrefix, 1289) = (bodies430, frames430, after430 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 430 StackAnalysis.optimized430.2.1 StackAnalysis.optimized430.2.2 programs431 (bitmapPrefix, 1289) (step430 bitmapPrefix, 1292) (after431 (step430 bitmapPrefix), 1300) stackBody430_166 3 bodies431 frames431 (function430_eq bitmapPrefix) (compiled431_eq (step430 bitmapPrefix))
def step429 (bitmapPrefix : AppList (BitVec 64)) := (function429 bitmapPrefix).2.2.1
def programs429 := (429, StackAnalysis.optimized429.2.1, StackAnalysis.optimized429.2.2) :: programs430
def bodies429 := (429, stackBody429_200) :: bodies430
def frames429 := 7 :: frames430
def after429 (bitmapPrefix : AppList (BitVec 64)) := after430 (step429 bitmapPrefix)
theorem compiled429_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs429 (bitmapPrefix, 1286) = (bodies429, frames429, after429 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 429 StackAnalysis.optimized429.2.1 StackAnalysis.optimized429.2.2 programs430 (bitmapPrefix, 1286) (step429 bitmapPrefix, 1289) (after430 (step429 bitmapPrefix), 1300) stackBody429_200 7 bodies430 frames430 (function429_eq bitmapPrefix) (compiled430_eq (step429 bitmapPrefix))
def step428 (bitmapPrefix : AppList (BitVec 64)) := (function428 bitmapPrefix).2.2.1
def programs428 := (428, StackAnalysis.optimized428.2.1, StackAnalysis.optimized428.2.2) :: programs429
def bodies428 := (428, stackBody428_276) :: bodies429
def frames428 := 7 :: frames429
def after428 (bitmapPrefix : AppList (BitVec 64)) := after429 (step428 bitmapPrefix)
theorem compiled428_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs428 (bitmapPrefix, 1282) = (bodies428, frames428, after428 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 428 StackAnalysis.optimized428.2.1 StackAnalysis.optimized428.2.2 programs429 (bitmapPrefix, 1282) (step428 bitmapPrefix, 1286) (after429 (step428 bitmapPrefix), 1300) stackBody428_276 7 bodies429 frames429 (function428_eq bitmapPrefix) (compiled429_eq (step428 bitmapPrefix))
def step427 (bitmapPrefix : AppList (BitVec 64)) := (function427 bitmapPrefix).2.2.1
def programs427 := (427, StackAnalysis.optimized427.2.1, StackAnalysis.optimized427.2.2) :: programs428
def bodies427 := (427, stackBody427_706) :: bodies428
def frames427 := 9 :: frames428
def after427 (bitmapPrefix : AppList (BitVec 64)) := after428 (step427 bitmapPrefix)
theorem compiled427_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs427 (bitmapPrefix, 1273) = (bodies427, frames427, after427 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 427 StackAnalysis.optimized427.2.1 StackAnalysis.optimized427.2.2 programs428 (bitmapPrefix, 1273) (step427 bitmapPrefix, 1282) (after428 (step427 bitmapPrefix), 1300) stackBody427_706 9 bodies428 frames428 (function427_eq bitmapPrefix) (compiled428_eq (step427 bitmapPrefix))
def step426 (bitmapPrefix : AppList (BitVec 64)) := (function426 bitmapPrefix).2.2.1
def programs426 := (426, StackAnalysis.optimized426.2.1, StackAnalysis.optimized426.2.2) :: programs427
def bodies426 := (426, stackBody426_360) :: bodies427
def frames426 := 8 :: frames427
def after426 (bitmapPrefix : AppList (BitVec 64)) := after427 (step426 bitmapPrefix)
theorem compiled426_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs426 (bitmapPrefix, 1268) = (bodies426, frames426, after426 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 426 StackAnalysis.optimized426.2.1 StackAnalysis.optimized426.2.2 programs427 (bitmapPrefix, 1268) (step426 bitmapPrefix, 1273) (after427 (step426 bitmapPrefix), 1300) stackBody426_360 8 bodies427 frames427 (function426_eq bitmapPrefix) (compiled427_eq (step426 bitmapPrefix))
def step425 (bitmapPrefix : AppList (BitVec 64)) := (function425 bitmapPrefix).2.2.1
def programs425 := (425, StackAnalysis.optimized425.2.1, StackAnalysis.optimized425.2.2) :: programs426
def bodies425 := (425, stackBody425_72) :: bodies426
def frames425 := 2 :: frames426
def after425 (bitmapPrefix : AppList (BitVec 64)) := after426 (step425 bitmapPrefix)
theorem compiled425_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs425 (bitmapPrefix, 1267) = (bodies425, frames425, after425 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 425 StackAnalysis.optimized425.2.1 StackAnalysis.optimized425.2.2 programs426 (bitmapPrefix, 1267) (step425 bitmapPrefix, 1268) (after426 (step425 bitmapPrefix), 1300) stackBody425_72 2 bodies426 frames426 (function425_eq bitmapPrefix) (compiled426_eq (step425 bitmapPrefix))
def step424 (bitmapPrefix : AppList (BitVec 64)) := (function424 bitmapPrefix).2.2.1
def programs424 := (424, StackAnalysis.optimized424.2.1, StackAnalysis.optimized424.2.2) :: programs425
def bodies424 := (424, stackBody424_230) :: bodies425
def frames424 := 3 :: frames425
def after424 (bitmapPrefix : AppList (BitVec 64)) := after425 (step424 bitmapPrefix)
theorem compiled424_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs424 (bitmapPrefix, 1263) = (bodies424, frames424, after424 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 424 StackAnalysis.optimized424.2.1 StackAnalysis.optimized424.2.2 programs425 (bitmapPrefix, 1263) (step424 bitmapPrefix, 1267) (after425 (step424 bitmapPrefix), 1300) stackBody424_230 3 bodies425 frames425 (function424_eq bitmapPrefix) (compiled425_eq (step424 bitmapPrefix))
def step423 (bitmapPrefix : AppList (BitVec 64)) := (function423 bitmapPrefix).2.2.1
def programs423 := (423, StackAnalysis.optimized423.2.1, StackAnalysis.optimized423.2.2) :: programs424
def bodies423 := (423, stackBody423_180) :: bodies424
def frames423 := 4 :: frames424
def after423 (bitmapPrefix : AppList (BitVec 64)) := after424 (step423 bitmapPrefix)
theorem compiled423_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs423 (bitmapPrefix, 1260) = (bodies423, frames423, after423 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 423 StackAnalysis.optimized423.2.1 StackAnalysis.optimized423.2.2 programs424 (bitmapPrefix, 1260) (step423 bitmapPrefix, 1263) (after424 (step423 bitmapPrefix), 1300) stackBody423_180 4 bodies424 frames424 (function423_eq bitmapPrefix) (compiled424_eq (step423 bitmapPrefix))
def step422 (bitmapPrefix : AppList (BitVec 64)) := (function422 bitmapPrefix).2.2.1
def programs422 := (422, StackAnalysis.optimized422.2.1, StackAnalysis.optimized422.2.2) :: programs423
def bodies422 := (422, stackBody422_110) :: bodies423
def frames422 := 3 :: frames423
def after422 (bitmapPrefix : AppList (BitVec 64)) := after423 (step422 bitmapPrefix)
theorem compiled422_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs422 (bitmapPrefix, 1258) = (bodies422, frames422, after422 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 422 StackAnalysis.optimized422.2.1 StackAnalysis.optimized422.2.2 programs423 (bitmapPrefix, 1258) (step422 bitmapPrefix, 1260) (after423 (step422 bitmapPrefix), 1300) stackBody422_110 3 bodies423 frames423 (function422_eq bitmapPrefix) (compiled423_eq (step422 bitmapPrefix))
def step421 (bitmapPrefix : AppList (BitVec 64)) := (function421 bitmapPrefix).2.2.1
def programs421 := (421, StackAnalysis.optimized421.2.1, StackAnalysis.optimized421.2.2) :: programs422
def bodies421 := (421, stackBody421_439) :: bodies422
def frames421 := 9 :: frames422
def after421 (bitmapPrefix : AppList (BitVec 64)) := after422 (step421 bitmapPrefix)
theorem compiled421_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs421 (bitmapPrefix, 1253) = (bodies421, frames421, after421 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 421 StackAnalysis.optimized421.2.1 StackAnalysis.optimized421.2.2 programs422 (bitmapPrefix, 1253) (step421 bitmapPrefix, 1258) (after422 (step421 bitmapPrefix), 1300) stackBody421_439 9 bodies422 frames422 (function421_eq bitmapPrefix) (compiled422_eq (step421 bitmapPrefix))
def step420 (bitmapPrefix : AppList (BitVec 64)) := (function420 bitmapPrefix).2.2.1
def programs420 := (420, StackAnalysis.optimized420.2.1, StackAnalysis.optimized420.2.2) :: programs421
def bodies420 := (420, stackBody420_436) :: bodies421
def frames420 := 9 :: frames421
def after420 (bitmapPrefix : AppList (BitVec 64)) := after421 (step420 bitmapPrefix)
theorem compiled420_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs420 (bitmapPrefix, 1247) = (bodies420, frames420, after420 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 420 StackAnalysis.optimized420.2.1 StackAnalysis.optimized420.2.2 programs421 (bitmapPrefix, 1247) (step420 bitmapPrefix, 1253) (after421 (step420 bitmapPrefix), 1300) stackBody420_436 9 bodies421 frames421 (function420_eq bitmapPrefix) (compiled421_eq (step420 bitmapPrefix))
def step419 (bitmapPrefix : AppList (BitVec 64)) := (function419 bitmapPrefix).2.2.1
def programs419 := (419, StackAnalysis.optimized419.2.1, StackAnalysis.optimized419.2.2) :: programs420
def bodies419 := (419, stackBody419_70) :: bodies420
def frames419 := 2 :: frames420
def after419 (bitmapPrefix : AppList (BitVec 64)) := after420 (step419 bitmapPrefix)
theorem compiled419_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs419 (bitmapPrefix, 1246) = (bodies419, frames419, after419 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 419 StackAnalysis.optimized419.2.1 StackAnalysis.optimized419.2.2 programs420 (bitmapPrefix, 1246) (step419 bitmapPrefix, 1247) (after420 (step419 bitmapPrefix), 1300) stackBody419_70 2 bodies420 frames420 (function419_eq bitmapPrefix) (compiled420_eq (step419 bitmapPrefix))
def step418 (bitmapPrefix : AppList (BitVec 64)) := (function418 bitmapPrefix).2.2.1
def programs418 := (418, StackAnalysis.optimized418.2.1, StackAnalysis.optimized418.2.2) :: programs419
def bodies418 := (418, stackBody418_150) :: bodies419
def frames418 := 2 :: frames419
def after418 (bitmapPrefix : AppList (BitVec 64)) := after419 (step418 bitmapPrefix)
theorem compiled418_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs418 (bitmapPrefix, 1244) = (bodies418, frames418, after418 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 418 StackAnalysis.optimized418.2.1 StackAnalysis.optimized418.2.2 programs419 (bitmapPrefix, 1244) (step418 bitmapPrefix, 1246) (after419 (step418 bitmapPrefix), 1300) stackBody418_150 2 bodies419 frames419 (function418_eq bitmapPrefix) (compiled419_eq (step418 bitmapPrefix))
def step417 (bitmapPrefix : AppList (BitVec 64)) := (function417 bitmapPrefix).2.2.1
def programs417 := (417, StackAnalysis.optimized417.2.1, StackAnalysis.optimized417.2.2) :: programs418
def bodies417 := (417, stackBody417_128) :: bodies418
def frames417 := 2 :: frames418
def after417 (bitmapPrefix : AppList (BitVec 64)) := after418 (step417 bitmapPrefix)
theorem compiled417_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs417 (bitmapPrefix, 1242) = (bodies417, frames417, after417 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 417 StackAnalysis.optimized417.2.1 StackAnalysis.optimized417.2.2 programs418 (bitmapPrefix, 1242) (step417 bitmapPrefix, 1244) (after418 (step417 bitmapPrefix), 1300) stackBody417_128 2 bodies418 frames418 (function417_eq bitmapPrefix) (compiled418_eq (step417 bitmapPrefix))
def step416 (bitmapPrefix : AppList (BitVec 64)) := (function416 bitmapPrefix).2.2.1
def programs416 := (416, StackAnalysis.optimized416.2.1, StackAnalysis.optimized416.2.2) :: programs417
def bodies416 := (416, stackBody416_184) :: bodies417
def frames416 := 3 :: frames417
def after416 (bitmapPrefix : AppList (BitVec 64)) := after417 (step416 bitmapPrefix)
theorem compiled416_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs416 (bitmapPrefix, 1240) = (bodies416, frames416, after416 bitmapPrefix, 1300) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 416 StackAnalysis.optimized416.2.1 StackAnalysis.optimized416.2.2 programs417 (bitmapPrefix, 1240) (step416 bitmapPrefix, 1242) (after417 (step416 bitmapPrefix), 1300) stackBody416_184 3 bodies417 frames417 (function416_eq bitmapPrefix) (compiled417_eq (step416 bitmapPrefix))
def programs := programs416
def bodies := bodies416
def frames := frames416
def after := after416
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1300)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1240) = result bitmapPrefix := compiled416_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk416_431
