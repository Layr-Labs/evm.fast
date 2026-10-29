import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function96
import InitECandidate.Proofs.BackendStages.Function97
import InitECandidate.Proofs.BackendStages.Function98
import InitECandidate.Proofs.BackendStages.Function99
import InitECandidate.Proofs.BackendStages.Function100
import InitECandidate.Proofs.BackendStages.Function101
import InitECandidate.Proofs.BackendStages.Function102
import InitECandidate.Proofs.BackendStages.Function103
import InitECandidate.Proofs.BackendStages.Function104
import InitECandidate.Proofs.BackendStages.Function105
import InitECandidate.Proofs.BackendStages.Function106
import InitECandidate.Proofs.BackendStages.Function107
import InitECandidate.Proofs.BackendStages.Function108
import InitECandidate.Proofs.BackendStages.Function109
import InitECandidate.Proofs.BackendStages.Function110
import InitECandidate.Proofs.BackendStages.Function111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk96_111
def programs112 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies112 : List (Nat × StackLang.HolProg 64) := []
def frames112 : List Nat := []
def after112 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled112_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs112 (bitmapPrefix, 46) = (bodies112, frames112, after112 bitmapPrefix, 46) := by rfl
def step111 (bitmapPrefix : AppList (BitVec 64)) := (function111 bitmapPrefix).2.2.1
def programs111 := (111, StackAnalysis.optimized111.2.1, StackAnalysis.optimized111.2.2) :: programs112
def bodies111 := (111, stackBody111_20) :: bodies112
def frames111 := 0 :: frames112
def after111 (bitmapPrefix : AppList (BitVec 64)) := after112 (step111 bitmapPrefix)
theorem compiled111_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs111 (bitmapPrefix, 46) = (bodies111, frames111, after111 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 111 StackAnalysis.optimized111.2.1 StackAnalysis.optimized111.2.2 programs112 (bitmapPrefix, 46) (step111 bitmapPrefix, 46) (after112 (step111 bitmapPrefix), 46) stackBody111_20 0 bodies112 frames112 (function111_eq bitmapPrefix) (compiled112_eq (step111 bitmapPrefix))
def step110 (bitmapPrefix : AppList (BitVec 64)) := (function110 bitmapPrefix).2.2.1
def programs110 := (110, StackAnalysis.optimized110.2.1, StackAnalysis.optimized110.2.2) :: programs111
def bodies110 := (110, stackBody110_198) :: bodies111
def frames110 := 10 :: frames111
def after110 (bitmapPrefix : AppList (BitVec 64)) := after111 (step110 bitmapPrefix)
theorem compiled110_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs110 (bitmapPrefix, 44) = (bodies110, frames110, after110 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 110 StackAnalysis.optimized110.2.1 StackAnalysis.optimized110.2.2 programs111 (bitmapPrefix, 44) (step110 bitmapPrefix, 46) (after111 (step110 bitmapPrefix), 46) stackBody110_198 10 bodies111 frames111 (function110_eq bitmapPrefix) (compiled111_eq (step110 bitmapPrefix))
def step109 (bitmapPrefix : AppList (BitVec 64)) := (function109 bitmapPrefix).2.2.1
def programs109 := (109, StackAnalysis.optimized109.2.1, StackAnalysis.optimized109.2.2) :: programs110
def bodies109 := (109, stackBody109_28) :: bodies110
def frames109 := 0 :: frames110
def after109 (bitmapPrefix : AppList (BitVec 64)) := after110 (step109 bitmapPrefix)
theorem compiled109_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs109 (bitmapPrefix, 44) = (bodies109, frames109, after109 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 109 StackAnalysis.optimized109.2.1 StackAnalysis.optimized109.2.2 programs110 (bitmapPrefix, 44) (step109 bitmapPrefix, 44) (after110 (step109 bitmapPrefix), 46) stackBody109_28 0 bodies110 frames110 (function109_eq bitmapPrefix) (compiled110_eq (step109 bitmapPrefix))
def step108 (bitmapPrefix : AppList (BitVec 64)) := (function108 bitmapPrefix).2.2.1
def programs108 := (108, StackAnalysis.optimized108.2.1, StackAnalysis.optimized108.2.2) :: programs109
def bodies108 := (108, stackBody108_118) :: bodies109
def frames108 := 0 :: frames109
def after108 (bitmapPrefix : AppList (BitVec 64)) := after109 (step108 bitmapPrefix)
theorem compiled108_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs108 (bitmapPrefix, 44) = (bodies108, frames108, after108 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 108 StackAnalysis.optimized108.2.1 StackAnalysis.optimized108.2.2 programs109 (bitmapPrefix, 44) (step108 bitmapPrefix, 44) (after109 (step108 bitmapPrefix), 46) stackBody108_118 0 bodies109 frames109 (function108_eq bitmapPrefix) (compiled109_eq (step108 bitmapPrefix))
def step107 (bitmapPrefix : AppList (BitVec 64)) := (function107 bitmapPrefix).2.2.1
def programs107 := (107, StackAnalysis.optimized107.2.1, StackAnalysis.optimized107.2.2) :: programs108
def bodies107 := (107, stackBody107_28) :: bodies108
def frames107 := 0 :: frames108
def after107 (bitmapPrefix : AppList (BitVec 64)) := after108 (step107 bitmapPrefix)
theorem compiled107_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs107 (bitmapPrefix, 44) = (bodies107, frames107, after107 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 107 StackAnalysis.optimized107.2.1 StackAnalysis.optimized107.2.2 programs108 (bitmapPrefix, 44) (step107 bitmapPrefix, 44) (after108 (step107 bitmapPrefix), 46) stackBody107_28 0 bodies108 frames108 (function107_eq bitmapPrefix) (compiled108_eq (step107 bitmapPrefix))
def step106 (bitmapPrefix : AppList (BitVec 64)) := (function106 bitmapPrefix).2.2.1
def programs106 := (106, StackAnalysis.optimized106.2.1, StackAnalysis.optimized106.2.2) :: programs107
def bodies106 := (106, stackBody106_118) :: bodies107
def frames106 := 0 :: frames107
def after106 (bitmapPrefix : AppList (BitVec 64)) := after107 (step106 bitmapPrefix)
theorem compiled106_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs106 (bitmapPrefix, 44) = (bodies106, frames106, after106 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 106 StackAnalysis.optimized106.2.1 StackAnalysis.optimized106.2.2 programs107 (bitmapPrefix, 44) (step106 bitmapPrefix, 44) (after107 (step106 bitmapPrefix), 46) stackBody106_118 0 bodies107 frames107 (function106_eq bitmapPrefix) (compiled107_eq (step106 bitmapPrefix))
def step105 (bitmapPrefix : AppList (BitVec 64)) := (function105 bitmapPrefix).2.2.1
def programs105 := (105, StackAnalysis.optimized105.2.1, StackAnalysis.optimized105.2.2) :: programs106
def bodies105 := (105, stackBody105_44) :: bodies106
def frames105 := 0 :: frames106
def after105 (bitmapPrefix : AppList (BitVec 64)) := after106 (step105 bitmapPrefix)
theorem compiled105_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs105 (bitmapPrefix, 44) = (bodies105, frames105, after105 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 105 StackAnalysis.optimized105.2.1 StackAnalysis.optimized105.2.2 programs106 (bitmapPrefix, 44) (step105 bitmapPrefix, 44) (after106 (step105 bitmapPrefix), 46) stackBody105_44 0 bodies106 frames106 (function105_eq bitmapPrefix) (compiled106_eq (step105 bitmapPrefix))
def step104 (bitmapPrefix : AppList (BitVec 64)) := (function104 bitmapPrefix).2.2.1
def programs104 := (104, StackAnalysis.optimized104.2.1, StackAnalysis.optimized104.2.2) :: programs105
def bodies104 := (104, stackBody104_98) :: bodies105
def frames104 := 3 :: frames105
def after104 (bitmapPrefix : AppList (BitVec 64)) := after105 (step104 bitmapPrefix)
theorem compiled104_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs104 (bitmapPrefix, 43) = (bodies104, frames104, after104 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 104 StackAnalysis.optimized104.2.1 StackAnalysis.optimized104.2.2 programs105 (bitmapPrefix, 43) (step104 bitmapPrefix, 44) (after105 (step104 bitmapPrefix), 46) stackBody104_98 3 bodies105 frames105 (function104_eq bitmapPrefix) (compiled105_eq (step104 bitmapPrefix))
def step103 (bitmapPrefix : AppList (BitVec 64)) := (function103 bitmapPrefix).2.2.1
def programs103 := (103, StackAnalysis.optimized103.2.1, StackAnalysis.optimized103.2.2) :: programs104
def bodies103 := (103, stackBody103_70) :: bodies104
def frames103 := 0 :: frames104
def after103 (bitmapPrefix : AppList (BitVec 64)) := after104 (step103 bitmapPrefix)
theorem compiled103_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs103 (bitmapPrefix, 43) = (bodies103, frames103, after103 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 103 StackAnalysis.optimized103.2.1 StackAnalysis.optimized103.2.2 programs104 (bitmapPrefix, 43) (step103 bitmapPrefix, 43) (after104 (step103 bitmapPrefix), 46) stackBody103_70 0 bodies104 frames104 (function103_eq bitmapPrefix) (compiled104_eq (step103 bitmapPrefix))
def step102 (bitmapPrefix : AppList (BitVec 64)) := (function102 bitmapPrefix).2.2.1
def programs102 := (102, StackAnalysis.optimized102.2.1, StackAnalysis.optimized102.2.2) :: programs103
def bodies102 := (102, stackBody102_34) :: bodies103
def frames102 := 0 :: frames103
def after102 (bitmapPrefix : AppList (BitVec 64)) := after103 (step102 bitmapPrefix)
theorem compiled102_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs102 (bitmapPrefix, 43) = (bodies102, frames102, after102 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 102 StackAnalysis.optimized102.2.1 StackAnalysis.optimized102.2.2 programs103 (bitmapPrefix, 43) (step102 bitmapPrefix, 43) (after103 (step102 bitmapPrefix), 46) stackBody102_34 0 bodies103 frames103 (function102_eq bitmapPrefix) (compiled103_eq (step102 bitmapPrefix))
def step101 (bitmapPrefix : AppList (BitVec 64)) := (function101 bitmapPrefix).2.2.1
def programs101 := (101, StackAnalysis.optimized101.2.1, StackAnalysis.optimized101.2.2) :: programs102
def bodies101 := (101, stackBody101_30) :: bodies102
def frames101 := 0 :: frames102
def after101 (bitmapPrefix : AppList (BitVec 64)) := after102 (step101 bitmapPrefix)
theorem compiled101_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs101 (bitmapPrefix, 43) = (bodies101, frames101, after101 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 101 StackAnalysis.optimized101.2.1 StackAnalysis.optimized101.2.2 programs102 (bitmapPrefix, 43) (step101 bitmapPrefix, 43) (after102 (step101 bitmapPrefix), 46) stackBody101_30 0 bodies102 frames102 (function101_eq bitmapPrefix) (compiled102_eq (step101 bitmapPrefix))
def step100 (bitmapPrefix : AppList (BitVec 64)) := (function100 bitmapPrefix).2.2.1
def programs100 := (100, StackAnalysis.optimized100.2.1, StackAnalysis.optimized100.2.2) :: programs101
def bodies100 := (100, stackBody100_4) :: bodies101
def frames100 := 0 :: frames101
def after100 (bitmapPrefix : AppList (BitVec 64)) := after101 (step100 bitmapPrefix)
theorem compiled100_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs100 (bitmapPrefix, 43) = (bodies100, frames100, after100 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 100 StackAnalysis.optimized100.2.1 StackAnalysis.optimized100.2.2 programs101 (bitmapPrefix, 43) (step100 bitmapPrefix, 43) (after101 (step100 bitmapPrefix), 46) stackBody100_4 0 bodies101 frames101 (function100_eq bitmapPrefix) (compiled101_eq (step100 bitmapPrefix))
def step99 (bitmapPrefix : AppList (BitVec 64)) := (function99 bitmapPrefix).2.2.1
def programs99 := (99, StackAnalysis.optimized99.2.1, StackAnalysis.optimized99.2.2) :: programs100
def bodies99 := (99, stackBody99_12) :: bodies100
def frames99 := 0 :: frames100
def after99 (bitmapPrefix : AppList (BitVec 64)) := after100 (step99 bitmapPrefix)
theorem compiled99_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs99 (bitmapPrefix, 43) = (bodies99, frames99, after99 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 99 StackAnalysis.optimized99.2.1 StackAnalysis.optimized99.2.2 programs100 (bitmapPrefix, 43) (step99 bitmapPrefix, 43) (after100 (step99 bitmapPrefix), 46) stackBody99_12 0 bodies100 frames100 (function99_eq bitmapPrefix) (compiled100_eq (step99 bitmapPrefix))
def step98 (bitmapPrefix : AppList (BitVec 64)) := (function98 bitmapPrefix).2.2.1
def programs98 := (98, StackAnalysis.optimized98.2.1, StackAnalysis.optimized98.2.2) :: programs99
def bodies98 := (98, stackBody98_94) :: bodies99
def frames98 := 2 :: frames99
def after98 (bitmapPrefix : AppList (BitVec 64)) := after99 (step98 bitmapPrefix)
theorem compiled98_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs98 (bitmapPrefix, 42) = (bodies98, frames98, after98 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 98 StackAnalysis.optimized98.2.1 StackAnalysis.optimized98.2.2 programs99 (bitmapPrefix, 42) (step98 bitmapPrefix, 43) (after99 (step98 bitmapPrefix), 46) stackBody98_94 2 bodies99 frames99 (function98_eq bitmapPrefix) (compiled99_eq (step98 bitmapPrefix))
def step97 (bitmapPrefix : AppList (BitVec 64)) := (function97 bitmapPrefix).2.2.1
def programs97 := (97, StackAnalysis.optimized97.2.1, StackAnalysis.optimized97.2.2) :: programs98
def bodies97 := (97, stackBody97_43) :: bodies98
def frames97 := 0 :: frames98
def after97 (bitmapPrefix : AppList (BitVec 64)) := after98 (step97 bitmapPrefix)
theorem compiled97_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs97 (bitmapPrefix, 42) = (bodies97, frames97, after97 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 97 StackAnalysis.optimized97.2.1 StackAnalysis.optimized97.2.2 programs98 (bitmapPrefix, 42) (step97 bitmapPrefix, 42) (after98 (step97 bitmapPrefix), 46) stackBody97_43 0 bodies98 frames98 (function97_eq bitmapPrefix) (compiled98_eq (step97 bitmapPrefix))
def step96 (bitmapPrefix : AppList (BitVec 64)) := (function96 bitmapPrefix).2.2.1
def programs96 := (96, StackAnalysis.optimized96.2.1, StackAnalysis.optimized96.2.2) :: programs97
def bodies96 := (96, stackBody96_54) :: bodies97
def frames96 := 2 :: frames97
def after96 (bitmapPrefix : AppList (BitVec 64)) := after97 (step96 bitmapPrefix)
theorem compiled96_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs96 (bitmapPrefix, 41) = (bodies96, frames96, after96 bitmapPrefix, 46) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 96 StackAnalysis.optimized96.2.1 StackAnalysis.optimized96.2.2 programs97 (bitmapPrefix, 41) (step96 bitmapPrefix, 42) (after97 (step96 bitmapPrefix), 46) stackBody96_54 2 bodies97 frames97 (function96_eq bitmapPrefix) (compiled97_eq (step96 bitmapPrefix))
def programs := programs96
def bodies := bodies96
def frames := frames96
def after := after96
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 46)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 41) = result bitmapPrefix := compiled96_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk96_111
