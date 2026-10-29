import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function112
import InitECandidate.Proofs.BackendStages.Function113
import InitECandidate.Proofs.BackendStages.Function114
import InitECandidate.Proofs.BackendStages.Function115
import InitECandidate.Proofs.BackendStages.Function116
import InitECandidate.Proofs.BackendStages.Function117
import InitECandidate.Proofs.BackendStages.Function118
import InitECandidate.Proofs.BackendStages.Function119
import InitECandidate.Proofs.BackendStages.Function120
import InitECandidate.Proofs.BackendStages.Function121
import InitECandidate.Proofs.BackendStages.Function122
import InitECandidate.Proofs.BackendStages.Function123
import InitECandidate.Proofs.BackendStages.Function124
import InitECandidate.Proofs.BackendStages.Function125
import InitECandidate.Proofs.BackendStages.Function126
import InitECandidate.Proofs.BackendStages.Function127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk112_127
def programs128 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies128 : List (Nat × StackLang.HolProg 64) := []
def frames128 : List Nat := []
def after128 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled128_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs128 (bitmapPrefix, 72) = (bodies128, frames128, after128 bitmapPrefix, 72) := by rfl
def step127 (bitmapPrefix : AppList (BitVec 64)) := (function127 bitmapPrefix).2.2.1
def programs127 := (127, StackAnalysis.optimized127.2.1, StackAnalysis.optimized127.2.2) :: programs128
def bodies127 := (127, stackBody127_1467) :: bodies128
def frames127 := 18 :: frames128
def after127 (bitmapPrefix : AppList (BitVec 64)) := after128 (step127 bitmapPrefix)
theorem compiled127_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs127 (bitmapPrefix, 69) = (bodies127, frames127, after127 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 127 StackAnalysis.optimized127.2.1 StackAnalysis.optimized127.2.2 programs128 (bitmapPrefix, 69) (step127 bitmapPrefix, 72) (after128 (step127 bitmapPrefix), 72) stackBody127_1467 18 bodies128 frames128 (function127_eq bitmapPrefix) (compiled128_eq (step127 bitmapPrefix))
def step126 (bitmapPrefix : AppList (BitVec 64)) := (function126 bitmapPrefix).2.2.1
def programs126 := (126, StackAnalysis.optimized126.2.1, StackAnalysis.optimized126.2.2) :: programs127
def bodies126 := (126, stackBody126_59) :: bodies127
def frames126 := 0 :: frames127
def after126 (bitmapPrefix : AppList (BitVec 64)) := after127 (step126 bitmapPrefix)
theorem compiled126_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs126 (bitmapPrefix, 69) = (bodies126, frames126, after126 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 126 StackAnalysis.optimized126.2.1 StackAnalysis.optimized126.2.2 programs127 (bitmapPrefix, 69) (step126 bitmapPrefix, 69) (after127 (step126 bitmapPrefix), 72) stackBody126_59 0 bodies127 frames127 (function126_eq bitmapPrefix) (compiled127_eq (step126 bitmapPrefix))
def step125 (bitmapPrefix : AppList (BitVec 64)) := (function125 bitmapPrefix).2.2.1
def programs125 := (125, StackAnalysis.optimized125.2.1, StackAnalysis.optimized125.2.2) :: programs126
def bodies125 := (125, stackBody125_52) :: bodies126
def frames125 := 0 :: frames126
def after125 (bitmapPrefix : AppList (BitVec 64)) := after126 (step125 bitmapPrefix)
theorem compiled125_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs125 (bitmapPrefix, 69) = (bodies125, frames125, after125 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 125 StackAnalysis.optimized125.2.1 StackAnalysis.optimized125.2.2 programs126 (bitmapPrefix, 69) (step125 bitmapPrefix, 69) (after126 (step125 bitmapPrefix), 72) stackBody125_52 0 bodies126 frames126 (function125_eq bitmapPrefix) (compiled126_eq (step125 bitmapPrefix))
def step124 (bitmapPrefix : AppList (BitVec 64)) := (function124 bitmapPrefix).2.2.1
def programs124 := (124, StackAnalysis.optimized124.2.1, StackAnalysis.optimized124.2.2) :: programs125
def bodies124 := (124, stackBody124_106) :: bodies125
def frames124 := 0 :: frames125
def after124 (bitmapPrefix : AppList (BitVec 64)) := after125 (step124 bitmapPrefix)
theorem compiled124_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs124 (bitmapPrefix, 69) = (bodies124, frames124, after124 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 124 StackAnalysis.optimized124.2.1 StackAnalysis.optimized124.2.2 programs125 (bitmapPrefix, 69) (step124 bitmapPrefix, 69) (after125 (step124 bitmapPrefix), 72) stackBody124_106 0 bodies125 frames125 (function124_eq bitmapPrefix) (compiled125_eq (step124 bitmapPrefix))
def step123 (bitmapPrefix : AppList (BitVec 64)) := (function123 bitmapPrefix).2.2.1
def programs123 := (123, StackAnalysis.optimized123.2.1, StackAnalysis.optimized123.2.2) :: programs124
def bodies123 := (123, stackBody123_83) :: bodies124
def frames123 := 0 :: frames124
def after123 (bitmapPrefix : AppList (BitVec 64)) := after124 (step123 bitmapPrefix)
theorem compiled123_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs123 (bitmapPrefix, 69) = (bodies123, frames123, after123 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 123 StackAnalysis.optimized123.2.1 StackAnalysis.optimized123.2.2 programs124 (bitmapPrefix, 69) (step123 bitmapPrefix, 69) (after124 (step123 bitmapPrefix), 72) stackBody123_83 0 bodies124 frames124 (function123_eq bitmapPrefix) (compiled124_eq (step123 bitmapPrefix))
def step122 (bitmapPrefix : AppList (BitVec 64)) := (function122 bitmapPrefix).2.2.1
def programs122 := (122, StackAnalysis.optimized122.2.1, StackAnalysis.optimized122.2.2) :: programs123
def bodies122 := (122, stackBody122_132) :: bodies123
def frames122 := 0 :: frames123
def after122 (bitmapPrefix : AppList (BitVec 64)) := after123 (step122 bitmapPrefix)
theorem compiled122_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs122 (bitmapPrefix, 69) = (bodies122, frames122, after122 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 122 StackAnalysis.optimized122.2.1 StackAnalysis.optimized122.2.2 programs123 (bitmapPrefix, 69) (step122 bitmapPrefix, 69) (after123 (step122 bitmapPrefix), 72) stackBody122_132 0 bodies123 frames123 (function122_eq bitmapPrefix) (compiled123_eq (step122 bitmapPrefix))
def step121 (bitmapPrefix : AppList (BitVec 64)) := (function121 bitmapPrefix).2.2.1
def programs121 := (121, StackAnalysis.optimized121.2.1, StackAnalysis.optimized121.2.2) :: programs122
def bodies121 := (121, stackBody121_1614) :: bodies122
def frames121 := 34 :: frames122
def after121 (bitmapPrefix : AppList (BitVec 64)) := after122 (step121 bitmapPrefix)
theorem compiled121_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs121 (bitmapPrefix, 53) = (bodies121, frames121, after121 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 121 StackAnalysis.optimized121.2.1 StackAnalysis.optimized121.2.2 programs122 (bitmapPrefix, 53) (step121 bitmapPrefix, 69) (after122 (step121 bitmapPrefix), 72) stackBody121_1614 34 bodies122 frames122 (function121_eq bitmapPrefix) (compiled122_eq (step121 bitmapPrefix))
def step120 (bitmapPrefix : AppList (BitVec 64)) := (function120 bitmapPrefix).2.2.1
def programs120 := (120, StackAnalysis.optimized120.2.1, StackAnalysis.optimized120.2.2) :: programs121
def bodies120 := (120, stackBody120_712) :: bodies121
def frames120 := 20 :: frames121
def after120 (bitmapPrefix : AppList (BitVec 64)) := after121 (step120 bitmapPrefix)
theorem compiled120_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs120 (bitmapPrefix, 46) = (bodies120, frames120, after120 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 120 StackAnalysis.optimized120.2.1 StackAnalysis.optimized120.2.2 programs121 (bitmapPrefix, 46) (step120 bitmapPrefix, 53) (after121 (step120 bitmapPrefix), 72) stackBody120_712 20 bodies121 frames121 (function120_eq bitmapPrefix) (compiled121_eq (step120 bitmapPrefix))
def step119 (bitmapPrefix : AppList (BitVec 64)) := (function119 bitmapPrefix).2.2.1
def programs119 := (119, StackAnalysis.optimized119.2.1, StackAnalysis.optimized119.2.2) :: programs120
def bodies119 := (119, stackBody119_92) :: bodies120
def frames119 := 0 :: frames120
def after119 (bitmapPrefix : AppList (BitVec 64)) := after120 (step119 bitmapPrefix)
theorem compiled119_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs119 (bitmapPrefix, 46) = (bodies119, frames119, after119 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 119 StackAnalysis.optimized119.2.1 StackAnalysis.optimized119.2.2 programs120 (bitmapPrefix, 46) (step119 bitmapPrefix, 46) (after120 (step119 bitmapPrefix), 72) stackBody119_92 0 bodies120 frames120 (function119_eq bitmapPrefix) (compiled120_eq (step119 bitmapPrefix))
def step118 (bitmapPrefix : AppList (BitVec 64)) := (function118 bitmapPrefix).2.2.1
def programs118 := (118, StackAnalysis.optimized118.2.1, StackAnalysis.optimized118.2.2) :: programs119
def bodies118 := (118, stackBody118_54) :: bodies119
def frames118 := 0 :: frames119
def after118 (bitmapPrefix : AppList (BitVec 64)) := after119 (step118 bitmapPrefix)
theorem compiled118_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs118 (bitmapPrefix, 46) = (bodies118, frames118, after118 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 118 StackAnalysis.optimized118.2.1 StackAnalysis.optimized118.2.2 programs119 (bitmapPrefix, 46) (step118 bitmapPrefix, 46) (after119 (step118 bitmapPrefix), 72) stackBody118_54 0 bodies119 frames119 (function118_eq bitmapPrefix) (compiled119_eq (step118 bitmapPrefix))
def step117 (bitmapPrefix : AppList (BitVec 64)) := (function117 bitmapPrefix).2.2.1
def programs117 := (117, StackAnalysis.optimized117.2.1, StackAnalysis.optimized117.2.2) :: programs118
def bodies117 := (117, stackBody117_38) :: bodies118
def frames117 := 0 :: frames118
def after117 (bitmapPrefix : AppList (BitVec 64)) := after118 (step117 bitmapPrefix)
theorem compiled117_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs117 (bitmapPrefix, 46) = (bodies117, frames117, after117 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 117 StackAnalysis.optimized117.2.1 StackAnalysis.optimized117.2.2 programs118 (bitmapPrefix, 46) (step117 bitmapPrefix, 46) (after118 (step117 bitmapPrefix), 72) stackBody117_38 0 bodies118 frames118 (function117_eq bitmapPrefix) (compiled118_eq (step117 bitmapPrefix))
def step116 (bitmapPrefix : AppList (BitVec 64)) := (function116 bitmapPrefix).2.2.1
def programs116 := (116, StackAnalysis.optimized116.2.1, StackAnalysis.optimized116.2.2) :: programs117
def bodies116 := (116, stackBody116_24) :: bodies117
def frames116 := 0 :: frames117
def after116 (bitmapPrefix : AppList (BitVec 64)) := after117 (step116 bitmapPrefix)
theorem compiled116_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs116 (bitmapPrefix, 46) = (bodies116, frames116, after116 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 116 StackAnalysis.optimized116.2.1 StackAnalysis.optimized116.2.2 programs117 (bitmapPrefix, 46) (step116 bitmapPrefix, 46) (after117 (step116 bitmapPrefix), 72) stackBody116_24 0 bodies117 frames117 (function116_eq bitmapPrefix) (compiled117_eq (step116 bitmapPrefix))
def step115 (bitmapPrefix : AppList (BitVec 64)) := (function115 bitmapPrefix).2.2.1
def programs115 := (115, StackAnalysis.optimized115.2.1, StackAnalysis.optimized115.2.2) :: programs116
def bodies115 := (115, stackBody115_24) :: bodies116
def frames115 := 0 :: frames116
def after115 (bitmapPrefix : AppList (BitVec 64)) := after116 (step115 bitmapPrefix)
theorem compiled115_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs115 (bitmapPrefix, 46) = (bodies115, frames115, after115 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 115 StackAnalysis.optimized115.2.1 StackAnalysis.optimized115.2.2 programs116 (bitmapPrefix, 46) (step115 bitmapPrefix, 46) (after116 (step115 bitmapPrefix), 72) stackBody115_24 0 bodies116 frames116 (function115_eq bitmapPrefix) (compiled116_eq (step115 bitmapPrefix))
def step114 (bitmapPrefix : AppList (BitVec 64)) := (function114 bitmapPrefix).2.2.1
def programs114 := (114, StackAnalysis.optimized114.2.1, StackAnalysis.optimized114.2.2) :: programs115
def bodies114 := (114, stackBody114_20) :: bodies115
def frames114 := 0 :: frames115
def after114 (bitmapPrefix : AppList (BitVec 64)) := after115 (step114 bitmapPrefix)
theorem compiled114_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs114 (bitmapPrefix, 46) = (bodies114, frames114, after114 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 114 StackAnalysis.optimized114.2.1 StackAnalysis.optimized114.2.2 programs115 (bitmapPrefix, 46) (step114 bitmapPrefix, 46) (after115 (step114 bitmapPrefix), 72) stackBody114_20 0 bodies115 frames115 (function114_eq bitmapPrefix) (compiled115_eq (step114 bitmapPrefix))
def step113 (bitmapPrefix : AppList (BitVec 64)) := (function113 bitmapPrefix).2.2.1
def programs113 := (113, StackAnalysis.optimized113.2.1, StackAnalysis.optimized113.2.2) :: programs114
def bodies113 := (113, stackBody113_20) :: bodies114
def frames113 := 0 :: frames114
def after113 (bitmapPrefix : AppList (BitVec 64)) := after114 (step113 bitmapPrefix)
theorem compiled113_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs113 (bitmapPrefix, 46) = (bodies113, frames113, after113 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 113 StackAnalysis.optimized113.2.1 StackAnalysis.optimized113.2.2 programs114 (bitmapPrefix, 46) (step113 bitmapPrefix, 46) (after114 (step113 bitmapPrefix), 72) stackBody113_20 0 bodies114 frames114 (function113_eq bitmapPrefix) (compiled114_eq (step113 bitmapPrefix))
def step112 (bitmapPrefix : AppList (BitVec 64)) := (function112 bitmapPrefix).2.2.1
def programs112 := (112, StackAnalysis.optimized112.2.1, StackAnalysis.optimized112.2.2) :: programs113
def bodies112 := (112, stackBody112_20) :: bodies113
def frames112 := 0 :: frames113
def after112 (bitmapPrefix : AppList (BitVec 64)) := after113 (step112 bitmapPrefix)
theorem compiled112_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs112 (bitmapPrefix, 46) = (bodies112, frames112, after112 bitmapPrefix, 72) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 112 StackAnalysis.optimized112.2.1 StackAnalysis.optimized112.2.2 programs113 (bitmapPrefix, 46) (step112 bitmapPrefix, 46) (after113 (step112 bitmapPrefix), 72) stackBody112_20 0 bodies113 frames113 (function112_eq bitmapPrefix) (compiled113_eq (step112 bitmapPrefix))
def programs := programs112
def bodies := bodies112
def frames := frames112
def after := after112
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 72)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 46) = result bitmapPrefix := compiled112_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk112_127
