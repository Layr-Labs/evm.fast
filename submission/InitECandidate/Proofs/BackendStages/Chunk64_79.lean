import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function64
import InitECandidate.Proofs.BackendStages.Function65
import InitECandidate.Proofs.BackendStages.Function66
import InitECandidate.Proofs.BackendStages.Function67
import InitECandidate.Proofs.BackendStages.Function68
import InitECandidate.Proofs.BackendStages.Function69
import InitECandidate.Proofs.BackendStages.Function70
import InitECandidate.Proofs.BackendStages.Function71
import InitECandidate.Proofs.BackendStages.Function72
import InitECandidate.Proofs.BackendStages.Function73
import InitECandidate.Proofs.BackendStages.Function74
import InitECandidate.Proofs.BackendStages.Function75
import InitECandidate.Proofs.BackendStages.Function76
import InitECandidate.Proofs.BackendStages.Function77
import InitECandidate.Proofs.BackendStages.Function78
import InitECandidate.Proofs.BackendStages.Function79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk64_79
def programs80 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies80 : List (Nat × StackLang.HolProg 64) := []
def frames80 : List Nat := []
def after80 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled80_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs80 (bitmapPrefix, 32) = (bodies80, frames80, after80 bitmapPrefix, 32) := by rfl
def step79 (bitmapPrefix : AppList (BitVec 64)) := (function79 bitmapPrefix).2.2.1
def programs79 := (79, StackAnalysis.optimized79.2.1, StackAnalysis.optimized79.2.2) :: programs80
def bodies79 := (79, stackBody79_1056) :: bodies80
def frames79 := 0 :: frames80
def after79 (bitmapPrefix : AppList (BitVec 64)) := after80 (step79 bitmapPrefix)
theorem compiled79_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs79 (bitmapPrefix, 32) = (bodies79, frames79, after79 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 79 StackAnalysis.optimized79.2.1 StackAnalysis.optimized79.2.2 programs80 (bitmapPrefix, 32) (step79 bitmapPrefix, 32) (after80 (step79 bitmapPrefix), 32) stackBody79_1056 0 bodies80 frames80 (function79_eq bitmapPrefix) (compiled80_eq (step79 bitmapPrefix))
def step78 (bitmapPrefix : AppList (BitVec 64)) := (function78 bitmapPrefix).2.2.1
def programs78 := (78, StackAnalysis.optimized78.2.1, StackAnalysis.optimized78.2.2) :: programs79
def bodies78 := (78, stackBody78_256) :: bodies79
def frames78 := 0 :: frames79
def after78 (bitmapPrefix : AppList (BitVec 64)) := after79 (step78 bitmapPrefix)
theorem compiled78_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs78 (bitmapPrefix, 32) = (bodies78, frames78, after78 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 78 StackAnalysis.optimized78.2.1 StackAnalysis.optimized78.2.2 programs79 (bitmapPrefix, 32) (step78 bitmapPrefix, 32) (after79 (step78 bitmapPrefix), 32) stackBody78_256 0 bodies79 frames79 (function78_eq bitmapPrefix) (compiled79_eq (step78 bitmapPrefix))
def step77 (bitmapPrefix : AppList (BitVec 64)) := (function77 bitmapPrefix).2.2.1
def programs77 := (77, StackAnalysis.optimized77.2.1, StackAnalysis.optimized77.2.2) :: programs78
def bodies77 := (77, stackBody77_326) :: bodies78
def frames77 := 0 :: frames78
def after77 (bitmapPrefix : AppList (BitVec 64)) := after78 (step77 bitmapPrefix)
theorem compiled77_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs77 (bitmapPrefix, 32) = (bodies77, frames77, after77 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 77 StackAnalysis.optimized77.2.1 StackAnalysis.optimized77.2.2 programs78 (bitmapPrefix, 32) (step77 bitmapPrefix, 32) (after78 (step77 bitmapPrefix), 32) stackBody77_326 0 bodies78 frames78 (function77_eq bitmapPrefix) (compiled78_eq (step77 bitmapPrefix))
def step76 (bitmapPrefix : AppList (BitVec 64)) := (function76 bitmapPrefix).2.2.1
def programs76 := (76, StackAnalysis.optimized76.2.1, StackAnalysis.optimized76.2.2) :: programs77
def bodies76 := (76, stackBody76_20) :: bodies77
def frames76 := 0 :: frames77
def after76 (bitmapPrefix : AppList (BitVec 64)) := after77 (step76 bitmapPrefix)
theorem compiled76_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs76 (bitmapPrefix, 32) = (bodies76, frames76, after76 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 76 StackAnalysis.optimized76.2.1 StackAnalysis.optimized76.2.2 programs77 (bitmapPrefix, 32) (step76 bitmapPrefix, 32) (after77 (step76 bitmapPrefix), 32) stackBody76_20 0 bodies77 frames77 (function76_eq bitmapPrefix) (compiled77_eq (step76 bitmapPrefix))
def step75 (bitmapPrefix : AppList (BitVec 64)) := (function75 bitmapPrefix).2.2.1
def programs75 := (75, StackAnalysis.optimized75.2.1, StackAnalysis.optimized75.2.2) :: programs76
def bodies75 := (75, stackBody75_14) :: bodies76
def frames75 := 0 :: frames76
def after75 (bitmapPrefix : AppList (BitVec 64)) := after76 (step75 bitmapPrefix)
theorem compiled75_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs75 (bitmapPrefix, 32) = (bodies75, frames75, after75 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 75 StackAnalysis.optimized75.2.1 StackAnalysis.optimized75.2.2 programs76 (bitmapPrefix, 32) (step75 bitmapPrefix, 32) (after76 (step75 bitmapPrefix), 32) stackBody75_14 0 bodies76 frames76 (function75_eq bitmapPrefix) (compiled76_eq (step75 bitmapPrefix))
def step74 (bitmapPrefix : AppList (BitVec 64)) := (function74 bitmapPrefix).2.2.1
def programs74 := (74, StackAnalysis.optimized74.2.1, StackAnalysis.optimized74.2.2) :: programs75
def bodies74 := (74, stackBody74_184) :: bodies75
def frames74 := 4 :: frames75
def after74 (bitmapPrefix : AppList (BitVec 64)) := after75 (step74 bitmapPrefix)
theorem compiled74_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs74 (bitmapPrefix, 30) = (bodies74, frames74, after74 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 74 StackAnalysis.optimized74.2.1 StackAnalysis.optimized74.2.2 programs75 (bitmapPrefix, 30) (step74 bitmapPrefix, 32) (after75 (step74 bitmapPrefix), 32) stackBody74_184 4 bodies75 frames75 (function74_eq bitmapPrefix) (compiled75_eq (step74 bitmapPrefix))
def step73 (bitmapPrefix : AppList (BitVec 64)) := (function73 bitmapPrefix).2.2.1
def programs73 := (73, StackAnalysis.optimized73.2.1, StackAnalysis.optimized73.2.2) :: programs74
def bodies73 := (73, stackBody73_20) :: bodies74
def frames73 := 0 :: frames74
def after73 (bitmapPrefix : AppList (BitVec 64)) := after74 (step73 bitmapPrefix)
theorem compiled73_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs73 (bitmapPrefix, 30) = (bodies73, frames73, after73 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 73 StackAnalysis.optimized73.2.1 StackAnalysis.optimized73.2.2 programs74 (bitmapPrefix, 30) (step73 bitmapPrefix, 30) (after74 (step73 bitmapPrefix), 32) stackBody73_20 0 bodies74 frames74 (function73_eq bitmapPrefix) (compiled74_eq (step73 bitmapPrefix))
def step72 (bitmapPrefix : AppList (BitVec 64)) := (function72 bitmapPrefix).2.2.1
def programs72 := (72, StackAnalysis.optimized72.2.1, StackAnalysis.optimized72.2.2) :: programs73
def bodies72 := (72, stackBody72_14) :: bodies73
def frames72 := 0 :: frames73
def after72 (bitmapPrefix : AppList (BitVec 64)) := after73 (step72 bitmapPrefix)
theorem compiled72_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs72 (bitmapPrefix, 30) = (bodies72, frames72, after72 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 72 StackAnalysis.optimized72.2.1 StackAnalysis.optimized72.2.2 programs73 (bitmapPrefix, 30) (step72 bitmapPrefix, 30) (after73 (step72 bitmapPrefix), 32) stackBody72_14 0 bodies73 frames73 (function72_eq bitmapPrefix) (compiled73_eq (step72 bitmapPrefix))
def step71 (bitmapPrefix : AppList (BitVec 64)) := (function71 bitmapPrefix).2.2.1
def programs71 := (71, StackAnalysis.optimized71.2.1, StackAnalysis.optimized71.2.2) :: programs72
def bodies71 := (71, stackBody71_194) :: bodies72
def frames71 := 4 :: frames72
def after71 (bitmapPrefix : AppList (BitVec 64)) := after72 (step71 bitmapPrefix)
theorem compiled71_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs71 (bitmapPrefix, 28) = (bodies71, frames71, after71 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 71 StackAnalysis.optimized71.2.1 StackAnalysis.optimized71.2.2 programs72 (bitmapPrefix, 28) (step71 bitmapPrefix, 30) (after72 (step71 bitmapPrefix), 32) stackBody71_194 4 bodies72 frames72 (function71_eq bitmapPrefix) (compiled72_eq (step71 bitmapPrefix))
def step70 (bitmapPrefix : AppList (BitVec 64)) := (function70 bitmapPrefix).2.2.1
def programs70 := (70, StackAnalysis.optimized70.2.1, StackAnalysis.optimized70.2.2) :: programs71
def bodies70 := (70, stackBody70_20) :: bodies71
def frames70 := 0 :: frames71
def after70 (bitmapPrefix : AppList (BitVec 64)) := after71 (step70 bitmapPrefix)
theorem compiled70_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs70 (bitmapPrefix, 28) = (bodies70, frames70, after70 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 70 StackAnalysis.optimized70.2.1 StackAnalysis.optimized70.2.2 programs71 (bitmapPrefix, 28) (step70 bitmapPrefix, 28) (after71 (step70 bitmapPrefix), 32) stackBody70_20 0 bodies71 frames71 (function70_eq bitmapPrefix) (compiled71_eq (step70 bitmapPrefix))
def step69 (bitmapPrefix : AppList (BitVec 64)) := (function69 bitmapPrefix).2.2.1
def programs69 := (69, StackAnalysis.optimized69.2.1, StackAnalysis.optimized69.2.2) :: programs70
def bodies69 := (69, stackBody69_14) :: bodies70
def frames69 := 0 :: frames70
def after69 (bitmapPrefix : AppList (BitVec 64)) := after70 (step69 bitmapPrefix)
theorem compiled69_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs69 (bitmapPrefix, 28) = (bodies69, frames69, after69 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 69 StackAnalysis.optimized69.2.1 StackAnalysis.optimized69.2.2 programs70 (bitmapPrefix, 28) (step69 bitmapPrefix, 28) (after70 (step69 bitmapPrefix), 32) stackBody69_14 0 bodies70 frames70 (function69_eq bitmapPrefix) (compiled70_eq (step69 bitmapPrefix))
def step68 (bitmapPrefix : AppList (BitVec 64)) := (function68 bitmapPrefix).2.2.1
def programs68 := (68, StackAnalysis.optimized68.2.1, StackAnalysis.optimized68.2.2) :: programs69
def bodies68 := (68, stackBody68_186) :: bodies69
def frames68 := 4 :: frames69
def after68 (bitmapPrefix : AppList (BitVec 64)) := after69 (step68 bitmapPrefix)
theorem compiled68_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs68 (bitmapPrefix, 26) = (bodies68, frames68, after68 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 68 StackAnalysis.optimized68.2.1 StackAnalysis.optimized68.2.2 programs69 (bitmapPrefix, 26) (step68 bitmapPrefix, 28) (after69 (step68 bitmapPrefix), 32) stackBody68_186 4 bodies69 frames69 (function68_eq bitmapPrefix) (compiled69_eq (step68 bitmapPrefix))
def step67 (bitmapPrefix : AppList (BitVec 64)) := (function67 bitmapPrefix).2.2.1
def programs67 := (67, StackAnalysis.optimized67.2.1, StackAnalysis.optimized67.2.2) :: programs68
def bodies67 := (67, stackBody67_42) :: bodies68
def frames67 := 0 :: frames68
def after67 (bitmapPrefix : AppList (BitVec 64)) := after68 (step67 bitmapPrefix)
theorem compiled67_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs67 (bitmapPrefix, 26) = (bodies67, frames67, after67 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 67 StackAnalysis.optimized67.2.1 StackAnalysis.optimized67.2.2 programs68 (bitmapPrefix, 26) (step67 bitmapPrefix, 26) (after68 (step67 bitmapPrefix), 32) stackBody67_42 0 bodies68 frames68 (function67_eq bitmapPrefix) (compiled68_eq (step67 bitmapPrefix))
def step66 (bitmapPrefix : AppList (BitVec 64)) := (function66 bitmapPrefix).2.2.1
def programs66 := (66, StackAnalysis.optimized66.2.1, StackAnalysis.optimized66.2.2) :: programs67
def bodies66 := (66, stackBody66_50) :: bodies67
def frames66 := 3 :: frames67
def after66 (bitmapPrefix : AppList (BitVec 64)) := after67 (step66 bitmapPrefix)
theorem compiled66_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs66 (bitmapPrefix, 26) = (bodies66, frames66, after66 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 66 StackAnalysis.optimized66.2.1 StackAnalysis.optimized66.2.2 programs67 (bitmapPrefix, 26) (step66 bitmapPrefix, 26) (after67 (step66 bitmapPrefix), 32) stackBody66_50 3 bodies67 frames67 (function66_eq bitmapPrefix) (compiled67_eq (step66 bitmapPrefix))
def step65 (bitmapPrefix : AppList (BitVec 64)) := (function65 bitmapPrefix).2.2.1
def programs65 := (65, StackAnalysis.optimized65.2.1, StackAnalysis.optimized65.2.2) :: programs66
def bodies65 := (65, stackBody65_1342) :: bodies66
def frames65 := 5 :: frames66
def after65 (bitmapPrefix : AppList (BitVec 64)) := after66 (step65 bitmapPrefix)
theorem compiled65_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs65 (bitmapPrefix, 1) = (bodies65, frames65, after65 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 65 StackAnalysis.optimized65.2.1 StackAnalysis.optimized65.2.2 programs66 (bitmapPrefix, 1) (step65 bitmapPrefix, 26) (after66 (step65 bitmapPrefix), 32) stackBody65_1342 5 bodies66 frames66 (function65_eq bitmapPrefix) (compiled66_eq (step65 bitmapPrefix))
def step64 (bitmapPrefix : AppList (BitVec 64)) := (function64 bitmapPrefix).2.2.1
def programs64 := (64, StackAnalysis.optimized64.2.1, StackAnalysis.optimized64.2.2) :: programs65
def bodies64 := (64, stackBody64_682) :: bodies65
def frames64 := 0 :: frames65
def after64 (bitmapPrefix : AppList (BitVec 64)) := after65 (step64 bitmapPrefix)
theorem compiled64_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs64 (bitmapPrefix, 1) = (bodies64, frames64, after64 bitmapPrefix, 32) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 64 StackAnalysis.optimized64.2.1 StackAnalysis.optimized64.2.2 programs65 (bitmapPrefix, 1) (step64 bitmapPrefix, 1) (after65 (step64 bitmapPrefix), 32) stackBody64_682 0 bodies65 frames65 (function64_eq bitmapPrefix) (compiled65_eq (step64 bitmapPrefix))
def programs := programs64
def bodies := bodies64
def frames := frames64
def after := after64
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 32)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1) = result bitmapPrefix := compiled64_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk64_79
