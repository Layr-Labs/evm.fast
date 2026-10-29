import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function80
import InitECandidate.Proofs.BackendStages.Function81
import InitECandidate.Proofs.BackendStages.Function82
import InitECandidate.Proofs.BackendStages.Function83
import InitECandidate.Proofs.BackendStages.Function84
import InitECandidate.Proofs.BackendStages.Function85
import InitECandidate.Proofs.BackendStages.Function86
import InitECandidate.Proofs.BackendStages.Function87
import InitECandidate.Proofs.BackendStages.Function88
import InitECandidate.Proofs.BackendStages.Function89
import InitECandidate.Proofs.BackendStages.Function90
import InitECandidate.Proofs.BackendStages.Function91
import InitECandidate.Proofs.BackendStages.Function92
import InitECandidate.Proofs.BackendStages.Function93
import InitECandidate.Proofs.BackendStages.Function94
import InitECandidate.Proofs.BackendStages.Function95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk80_95
def programs96 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies96 : List (Nat × StackLang.HolProg 64) := []
def frames96 : List Nat := []
def after96 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled96_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs96 (bitmapPrefix, 41) = (bodies96, frames96, after96 bitmapPrefix, 41) := by rfl
def step95 (bitmapPrefix : AppList (BitVec 64)) := (function95 bitmapPrefix).2.2.1
def programs95 := (95, StackAnalysis.optimized95.2.1, StackAnalysis.optimized95.2.2) :: programs96
def bodies95 := (95, stackBody95_56) :: bodies96
def frames95 := 2 :: frames96
def after95 (bitmapPrefix : AppList (BitVec 64)) := after96 (step95 bitmapPrefix)
theorem compiled95_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs95 (bitmapPrefix, 40) = (bodies95, frames95, after95 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 95 StackAnalysis.optimized95.2.1 StackAnalysis.optimized95.2.2 programs96 (bitmapPrefix, 40) (step95 bitmapPrefix, 41) (after96 (step95 bitmapPrefix), 41) stackBody95_56 2 bodies96 frames96 (function95_eq bitmapPrefix) (compiled96_eq (step95 bitmapPrefix))
def step94 (bitmapPrefix : AppList (BitVec 64)) := (function94 bitmapPrefix).2.2.1
def programs94 := (94, StackAnalysis.optimized94.2.1, StackAnalysis.optimized94.2.2) :: programs95
def bodies94 := (94, stackBody94_175) :: bodies95
def frames94 := 4 :: frames95
def after94 (bitmapPrefix : AppList (BitVec 64)) := after95 (step94 bitmapPrefix)
theorem compiled94_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs94 (bitmapPrefix, 39) = (bodies94, frames94, after94 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 94 StackAnalysis.optimized94.2.1 StackAnalysis.optimized94.2.2 programs95 (bitmapPrefix, 39) (step94 bitmapPrefix, 40) (after95 (step94 bitmapPrefix), 41) stackBody94_175 4 bodies95 frames95 (function94_eq bitmapPrefix) (compiled95_eq (step94 bitmapPrefix))
def step93 (bitmapPrefix : AppList (BitVec 64)) := (function93 bitmapPrefix).2.2.1
def programs93 := (93, StackAnalysis.optimized93.2.1, StackAnalysis.optimized93.2.2) :: programs94
def bodies93 := (93, stackBody93_18) :: bodies94
def frames93 := 0 :: frames94
def after93 (bitmapPrefix : AppList (BitVec 64)) := after94 (step93 bitmapPrefix)
theorem compiled93_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs93 (bitmapPrefix, 39) = (bodies93, frames93, after93 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 93 StackAnalysis.optimized93.2.1 StackAnalysis.optimized93.2.2 programs94 (bitmapPrefix, 39) (step93 bitmapPrefix, 39) (after94 (step93 bitmapPrefix), 41) stackBody93_18 0 bodies94 frames94 (function93_eq bitmapPrefix) (compiled94_eq (step93 bitmapPrefix))
def step92 (bitmapPrefix : AppList (BitVec 64)) := (function92 bitmapPrefix).2.2.1
def programs92 := (92, StackAnalysis.optimized92.2.1, StackAnalysis.optimized92.2.2) :: programs93
def bodies92 := (92, stackBody92_18) :: bodies93
def frames92 := 0 :: frames93
def after92 (bitmapPrefix : AppList (BitVec 64)) := after93 (step92 bitmapPrefix)
theorem compiled92_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs92 (bitmapPrefix, 39) = (bodies92, frames92, after92 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 92 StackAnalysis.optimized92.2.1 StackAnalysis.optimized92.2.2 programs93 (bitmapPrefix, 39) (step92 bitmapPrefix, 39) (after93 (step92 bitmapPrefix), 41) stackBody92_18 0 bodies93 frames93 (function92_eq bitmapPrefix) (compiled93_eq (step92 bitmapPrefix))
def step91 (bitmapPrefix : AppList (BitVec 64)) := (function91 bitmapPrefix).2.2.1
def programs91 := (91, StackAnalysis.optimized91.2.1, StackAnalysis.optimized91.2.2) :: programs92
def bodies91 := (91, stackBody91_51) :: bodies92
def frames91 := 0 :: frames92
def after91 (bitmapPrefix : AppList (BitVec 64)) := after92 (step91 bitmapPrefix)
theorem compiled91_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs91 (bitmapPrefix, 39) = (bodies91, frames91, after91 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 91 StackAnalysis.optimized91.2.1 StackAnalysis.optimized91.2.2 programs92 (bitmapPrefix, 39) (step91 bitmapPrefix, 39) (after92 (step91 bitmapPrefix), 41) stackBody91_51 0 bodies92 frames92 (function91_eq bitmapPrefix) (compiled92_eq (step91 bitmapPrefix))
def step90 (bitmapPrefix : AppList (BitVec 64)) := (function90 bitmapPrefix).2.2.1
def programs90 := (90, StackAnalysis.optimized90.2.1, StackAnalysis.optimized90.2.2) :: programs91
def bodies90 := (90, stackBody90_185) :: bodies91
def frames90 := 3 :: frames91
def after90 (bitmapPrefix : AppList (BitVec 64)) := after91 (step90 bitmapPrefix)
theorem compiled90_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs90 (bitmapPrefix, 37) = (bodies90, frames90, after90 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 90 StackAnalysis.optimized90.2.1 StackAnalysis.optimized90.2.2 programs91 (bitmapPrefix, 37) (step90 bitmapPrefix, 39) (after91 (step90 bitmapPrefix), 41) stackBody90_185 3 bodies91 frames91 (function90_eq bitmapPrefix) (compiled91_eq (step90 bitmapPrefix))
def step89 (bitmapPrefix : AppList (BitVec 64)) := (function89 bitmapPrefix).2.2.1
def programs89 := (89, StackAnalysis.optimized89.2.1, StackAnalysis.optimized89.2.2) :: programs90
def bodies89 := (89, stackBody89_204) :: bodies90
def frames89 := 4 :: frames90
def after89 (bitmapPrefix : AppList (BitVec 64)) := after90 (step89 bitmapPrefix)
theorem compiled89_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs89 (bitmapPrefix, 34) = (bodies89, frames89, after89 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 89 StackAnalysis.optimized89.2.1 StackAnalysis.optimized89.2.2 programs90 (bitmapPrefix, 34) (step89 bitmapPrefix, 37) (after90 (step89 bitmapPrefix), 41) stackBody89_204 4 bodies90 frames90 (function89_eq bitmapPrefix) (compiled90_eq (step89 bitmapPrefix))
def step88 (bitmapPrefix : AppList (BitVec 64)) := (function88 bitmapPrefix).2.2.1
def programs88 := (88, StackAnalysis.optimized88.2.1, StackAnalysis.optimized88.2.2) :: programs89
def bodies88 := (88, stackBody88_40) :: bodies89
def frames88 := 0 :: frames89
def after88 (bitmapPrefix : AppList (BitVec 64)) := after89 (step88 bitmapPrefix)
theorem compiled88_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs88 (bitmapPrefix, 34) = (bodies88, frames88, after88 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 88 StackAnalysis.optimized88.2.1 StackAnalysis.optimized88.2.2 programs89 (bitmapPrefix, 34) (step88 bitmapPrefix, 34) (after89 (step88 bitmapPrefix), 41) stackBody88_40 0 bodies89 frames89 (function88_eq bitmapPrefix) (compiled89_eq (step88 bitmapPrefix))
def step87 (bitmapPrefix : AppList (BitVec 64)) := (function87 bitmapPrefix).2.2.1
def programs87 := (87, StackAnalysis.optimized87.2.1, StackAnalysis.optimized87.2.2) :: programs88
def bodies87 := (87, stackBody87_120) :: bodies88
def frames87 := 4 :: frames88
def after87 (bitmapPrefix : AppList (BitVec 64)) := after88 (step87 bitmapPrefix)
theorem compiled87_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs87 (bitmapPrefix, 32) = (bodies87, frames87, after87 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 87 StackAnalysis.optimized87.2.1 StackAnalysis.optimized87.2.2 programs88 (bitmapPrefix, 32) (step87 bitmapPrefix, 34) (after88 (step87 bitmapPrefix), 41) stackBody87_120 4 bodies88 frames88 (function87_eq bitmapPrefix) (compiled88_eq (step87 bitmapPrefix))
def step86 (bitmapPrefix : AppList (BitVec 64)) := (function86 bitmapPrefix).2.2.1
def programs86 := (86, StackAnalysis.optimized86.2.1, StackAnalysis.optimized86.2.2) :: programs87
def bodies86 := (86, stackBody86_40) :: bodies87
def frames86 := 0 :: frames87
def after86 (bitmapPrefix : AppList (BitVec 64)) := after87 (step86 bitmapPrefix)
theorem compiled86_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs86 (bitmapPrefix, 32) = (bodies86, frames86, after86 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 86 StackAnalysis.optimized86.2.1 StackAnalysis.optimized86.2.2 programs87 (bitmapPrefix, 32) (step86 bitmapPrefix, 32) (after87 (step86 bitmapPrefix), 41) stackBody86_40 0 bodies87 frames87 (function86_eq bitmapPrefix) (compiled87_eq (step86 bitmapPrefix))
def step85 (bitmapPrefix : AppList (BitVec 64)) := (function85 bitmapPrefix).2.2.1
def programs85 := (85, StackAnalysis.optimized85.2.1, StackAnalysis.optimized85.2.2) :: programs86
def bodies85 := (85, stackBody85_116) :: bodies86
def frames85 := 0 :: frames86
def after85 (bitmapPrefix : AppList (BitVec 64)) := after86 (step85 bitmapPrefix)
theorem compiled85_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs85 (bitmapPrefix, 32) = (bodies85, frames85, after85 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 85 StackAnalysis.optimized85.2.1 StackAnalysis.optimized85.2.2 programs86 (bitmapPrefix, 32) (step85 bitmapPrefix, 32) (after86 (step85 bitmapPrefix), 41) stackBody85_116 0 bodies86 frames86 (function85_eq bitmapPrefix) (compiled86_eq (step85 bitmapPrefix))
def step84 (bitmapPrefix : AppList (BitVec 64)) := (function84 bitmapPrefix).2.2.1
def programs84 := (84, StackAnalysis.optimized84.2.1, StackAnalysis.optimized84.2.2) :: programs85
def bodies84 := (84, stackBody84_50) :: bodies85
def frames84 := 0 :: frames85
def after84 (bitmapPrefix : AppList (BitVec 64)) := after85 (step84 bitmapPrefix)
theorem compiled84_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs84 (bitmapPrefix, 32) = (bodies84, frames84, after84 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 84 StackAnalysis.optimized84.2.1 StackAnalysis.optimized84.2.2 programs85 (bitmapPrefix, 32) (step84 bitmapPrefix, 32) (after85 (step84 bitmapPrefix), 41) stackBody84_50 0 bodies85 frames85 (function84_eq bitmapPrefix) (compiled85_eq (step84 bitmapPrefix))
def step83 (bitmapPrefix : AppList (BitVec 64)) := (function83 bitmapPrefix).2.2.1
def programs83 := (83, StackAnalysis.optimized83.2.1, StackAnalysis.optimized83.2.2) :: programs84
def bodies83 := (83, stackBody83_44) :: bodies84
def frames83 := 0 :: frames84
def after83 (bitmapPrefix : AppList (BitVec 64)) := after84 (step83 bitmapPrefix)
theorem compiled83_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs83 (bitmapPrefix, 32) = (bodies83, frames83, after83 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 83 StackAnalysis.optimized83.2.1 StackAnalysis.optimized83.2.2 programs84 (bitmapPrefix, 32) (step83 bitmapPrefix, 32) (after84 (step83 bitmapPrefix), 41) stackBody83_44 0 bodies84 frames84 (function83_eq bitmapPrefix) (compiled84_eq (step83 bitmapPrefix))
def step82 (bitmapPrefix : AppList (BitVec 64)) := (function82 bitmapPrefix).2.2.1
def programs82 := (82, StackAnalysis.optimized82.2.1, StackAnalysis.optimized82.2.2) :: programs83
def bodies82 := (82, stackBody82_94) :: bodies83
def frames82 := 0 :: frames83
def after82 (bitmapPrefix : AppList (BitVec 64)) := after83 (step82 bitmapPrefix)
theorem compiled82_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs82 (bitmapPrefix, 32) = (bodies82, frames82, after82 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 82 StackAnalysis.optimized82.2.1 StackAnalysis.optimized82.2.2 programs83 (bitmapPrefix, 32) (step82 bitmapPrefix, 32) (after83 (step82 bitmapPrefix), 41) stackBody82_94 0 bodies83 frames83 (function82_eq bitmapPrefix) (compiled83_eq (step82 bitmapPrefix))
def step81 (bitmapPrefix : AppList (BitVec 64)) := (function81 bitmapPrefix).2.2.1
def programs81 := (81, StackAnalysis.optimized81.2.1, StackAnalysis.optimized81.2.2) :: programs82
def bodies81 := (81, stackBody81_46) :: bodies82
def frames81 := 0 :: frames82
def after81 (bitmapPrefix : AppList (BitVec 64)) := after82 (step81 bitmapPrefix)
theorem compiled81_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs81 (bitmapPrefix, 32) = (bodies81, frames81, after81 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 81 StackAnalysis.optimized81.2.1 StackAnalysis.optimized81.2.2 programs82 (bitmapPrefix, 32) (step81 bitmapPrefix, 32) (after82 (step81 bitmapPrefix), 41) stackBody81_46 0 bodies82 frames82 (function81_eq bitmapPrefix) (compiled82_eq (step81 bitmapPrefix))
def step80 (bitmapPrefix : AppList (BitVec 64)) := (function80 bitmapPrefix).2.2.1
def programs80 := (80, StackAnalysis.optimized80.2.1, StackAnalysis.optimized80.2.2) :: programs81
def bodies80 := (80, stackBody80_61) :: bodies81
def frames80 := 0 :: frames81
def after80 (bitmapPrefix : AppList (BitVec 64)) := after81 (step80 bitmapPrefix)
theorem compiled80_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs80 (bitmapPrefix, 32) = (bodies80, frames80, after80 bitmapPrefix, 41) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 80 StackAnalysis.optimized80.2.1 StackAnalysis.optimized80.2.2 programs81 (bitmapPrefix, 32) (step80 bitmapPrefix, 32) (after81 (step80 bitmapPrefix), 41) stackBody80_61 0 bodies81 frames81 (function80_eq bitmapPrefix) (compiled81_eq (step80 bitmapPrefix))
def programs := programs80
def bodies := bodies80
def frames := frames80
def after := after80
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 41)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 32) = result bitmapPrefix := compiled80_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk80_95
