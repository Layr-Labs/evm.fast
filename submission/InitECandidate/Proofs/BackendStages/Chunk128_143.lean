import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function128
import InitECandidate.Proofs.BackendStages.Function129
import InitECandidate.Proofs.BackendStages.Function130
import InitECandidate.Proofs.BackendStages.Function131
import InitECandidate.Proofs.BackendStages.Function132
import InitECandidate.Proofs.BackendStages.Function133
import InitECandidate.Proofs.BackendStages.Function134
import InitECandidate.Proofs.BackendStages.Function135
import InitECandidate.Proofs.BackendStages.Function136
import InitECandidate.Proofs.BackendStages.Function137
import InitECandidate.Proofs.BackendStages.Function138
import InitECandidate.Proofs.BackendStages.Function139
import InitECandidate.Proofs.BackendStages.Function140
import InitECandidate.Proofs.BackendStages.Function141
import InitECandidate.Proofs.BackendStages.Function142
import InitECandidate.Proofs.BackendStages.Function143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk128_143
def programs144 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies144 : List (Nat × StackLang.HolProg 64) := []
def frames144 : List Nat := []
def after144 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled144_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs144 (bitmapPrefix, 107) = (bodies144, frames144, after144 bitmapPrefix, 107) := by rfl
def step143 (bitmapPrefix : AppList (BitVec 64)) := (function143 bitmapPrefix).2.2.1
def programs143 := (143, StackAnalysis.optimized143.2.1, StackAnalysis.optimized143.2.2) :: programs144
def bodies143 := (143, stackBody143_304) :: bodies144
def frames143 := 6 :: frames144
def after143 (bitmapPrefix : AppList (BitVec 64)) := after144 (step143 bitmapPrefix)
theorem compiled143_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs143 (bitmapPrefix, 104) = (bodies143, frames143, after143 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 143 StackAnalysis.optimized143.2.1 StackAnalysis.optimized143.2.2 programs144 (bitmapPrefix, 104) (step143 bitmapPrefix, 107) (after144 (step143 bitmapPrefix), 107) stackBody143_304 6 bodies144 frames144 (function143_eq bitmapPrefix) (compiled144_eq (step143 bitmapPrefix))
def step142 (bitmapPrefix : AppList (BitVec 64)) := (function142 bitmapPrefix).2.2.1
def programs142 := (142, StackAnalysis.optimized142.2.1, StackAnalysis.optimized142.2.2) :: programs143
def bodies142 := (142, stackBody142_174) :: bodies143
def frames142 := 0 :: frames143
def after142 (bitmapPrefix : AppList (BitVec 64)) := after143 (step142 bitmapPrefix)
theorem compiled142_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs142 (bitmapPrefix, 104) = (bodies142, frames142, after142 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 142 StackAnalysis.optimized142.2.1 StackAnalysis.optimized142.2.2 programs143 (bitmapPrefix, 104) (step142 bitmapPrefix, 104) (after143 (step142 bitmapPrefix), 107) stackBody142_174 0 bodies143 frames143 (function142_eq bitmapPrefix) (compiled143_eq (step142 bitmapPrefix))
def step141 (bitmapPrefix : AppList (BitVec 64)) := (function141 bitmapPrefix).2.2.1
def programs141 := (141, StackAnalysis.optimized141.2.1, StackAnalysis.optimized141.2.2) :: programs142
def bodies141 := (141, stackBody141_174) :: bodies142
def frames141 := 0 :: frames142
def after141 (bitmapPrefix : AppList (BitVec 64)) := after142 (step141 bitmapPrefix)
theorem compiled141_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs141 (bitmapPrefix, 104) = (bodies141, frames141, after141 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 141 StackAnalysis.optimized141.2.1 StackAnalysis.optimized141.2.2 programs142 (bitmapPrefix, 104) (step141 bitmapPrefix, 104) (after142 (step141 bitmapPrefix), 107) stackBody141_174 0 bodies142 frames142 (function141_eq bitmapPrefix) (compiled142_eq (step141 bitmapPrefix))
def step140 (bitmapPrefix : AppList (BitVec 64)) := (function140 bitmapPrefix).2.2.1
def programs140 := (140, StackAnalysis.optimized140.2.1, StackAnalysis.optimized140.2.2) :: programs141
def bodies140 := (140, stackBody140_655) :: bodies141
def frames140 := 20 :: frames141
def after140 (bitmapPrefix : AppList (BitVec 64)) := after141 (step140 bitmapPrefix)
theorem compiled140_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs140 (bitmapPrefix, 100) = (bodies140, frames140, after140 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 140 StackAnalysis.optimized140.2.1 StackAnalysis.optimized140.2.2 programs141 (bitmapPrefix, 100) (step140 bitmapPrefix, 104) (after141 (step140 bitmapPrefix), 107) stackBody140_655 20 bodies141 frames141 (function140_eq bitmapPrefix) (compiled141_eq (step140 bitmapPrefix))
def step139 (bitmapPrefix : AppList (BitVec 64)) := (function139 bitmapPrefix).2.2.1
def programs139 := (139, StackAnalysis.optimized139.2.1, StackAnalysis.optimized139.2.2) :: programs140
def bodies139 := (139, stackBody139_62) :: bodies140
def frames139 := 2 :: frames140
def after139 (bitmapPrefix : AppList (BitVec 64)) := after140 (step139 bitmapPrefix)
theorem compiled139_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs139 (bitmapPrefix, 99) = (bodies139, frames139, after139 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 139 StackAnalysis.optimized139.2.1 StackAnalysis.optimized139.2.2 programs140 (bitmapPrefix, 99) (step139 bitmapPrefix, 100) (after140 (step139 bitmapPrefix), 107) stackBody139_62 2 bodies140 frames140 (function139_eq bitmapPrefix) (compiled140_eq (step139 bitmapPrefix))
def step138 (bitmapPrefix : AppList (BitVec 64)) := (function138 bitmapPrefix).2.2.1
def programs138 := (138, StackAnalysis.optimized138.2.1, StackAnalysis.optimized138.2.2) :: programs139
def bodies138 := (138, stackBody138_228) :: bodies139
def frames138 := 3 :: frames139
def after138 (bitmapPrefix : AppList (BitVec 64)) := after139 (step138 bitmapPrefix)
theorem compiled138_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs138 (bitmapPrefix, 96) = (bodies138, frames138, after138 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 138 StackAnalysis.optimized138.2.1 StackAnalysis.optimized138.2.2 programs139 (bitmapPrefix, 96) (step138 bitmapPrefix, 99) (after139 (step138 bitmapPrefix), 107) stackBody138_228 3 bodies139 frames139 (function138_eq bitmapPrefix) (compiled139_eq (step138 bitmapPrefix))
def step137 (bitmapPrefix : AppList (BitVec 64)) := (function137 bitmapPrefix).2.2.1
def programs137 := (137, StackAnalysis.optimized137.2.1, StackAnalysis.optimized137.2.2) :: programs138
def bodies137 := (137, stackBody137_130) :: bodies138
def frames137 := 0 :: frames138
def after137 (bitmapPrefix : AppList (BitVec 64)) := after138 (step137 bitmapPrefix)
theorem compiled137_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs137 (bitmapPrefix, 96) = (bodies137, frames137, after137 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 137 StackAnalysis.optimized137.2.1 StackAnalysis.optimized137.2.2 programs138 (bitmapPrefix, 96) (step137 bitmapPrefix, 96) (after138 (step137 bitmapPrefix), 107) stackBody137_130 0 bodies138 frames138 (function137_eq bitmapPrefix) (compiled138_eq (step137 bitmapPrefix))
def step136 (bitmapPrefix : AppList (BitVec 64)) := (function136 bitmapPrefix).2.2.1
def programs136 := (136, StackAnalysis.optimized136.2.1, StackAnalysis.optimized136.2.2) :: programs137
def bodies136 := (136, stackBody136_534) :: bodies137
def frames136 := 15 :: frames137
def after136 (bitmapPrefix : AppList (BitVec 64)) := after137 (step136 bitmapPrefix)
theorem compiled136_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs136 (bitmapPrefix, 91) = (bodies136, frames136, after136 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 136 StackAnalysis.optimized136.2.1 StackAnalysis.optimized136.2.2 programs137 (bitmapPrefix, 91) (step136 bitmapPrefix, 96) (after137 (step136 bitmapPrefix), 107) stackBody136_534 15 bodies137 frames137 (function136_eq bitmapPrefix) (compiled137_eq (step136 bitmapPrefix))
def step135 (bitmapPrefix : AppList (BitVec 64)) := (function135 bitmapPrefix).2.2.1
def programs135 := (135, StackAnalysis.optimized135.2.1, StackAnalysis.optimized135.2.2) :: programs136
def bodies135 := (135, stackBody135_262) :: bodies136
def frames135 := 7 :: frames136
def after135 (bitmapPrefix : AppList (BitVec 64)) := after136 (step135 bitmapPrefix)
theorem compiled135_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs135 (bitmapPrefix, 89) = (bodies135, frames135, after135 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 135 StackAnalysis.optimized135.2.1 StackAnalysis.optimized135.2.2 programs136 (bitmapPrefix, 89) (step135 bitmapPrefix, 91) (after136 (step135 bitmapPrefix), 107) stackBody135_262 7 bodies136 frames136 (function135_eq bitmapPrefix) (compiled136_eq (step135 bitmapPrefix))
def step134 (bitmapPrefix : AppList (BitVec 64)) := (function134 bitmapPrefix).2.2.1
def programs134 := (134, StackAnalysis.optimized134.2.1, StackAnalysis.optimized134.2.2) :: programs135
def bodies134 := (134, stackBody134_294) :: bodies135
def frames134 := 7 :: frames135
def after134 (bitmapPrefix : AppList (BitVec 64)) := after135 (step134 bitmapPrefix)
theorem compiled134_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs134 (bitmapPrefix, 86) = (bodies134, frames134, after134 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 134 StackAnalysis.optimized134.2.1 StackAnalysis.optimized134.2.2 programs135 (bitmapPrefix, 86) (step134 bitmapPrefix, 89) (after135 (step134 bitmapPrefix), 107) stackBody134_294 7 bodies135 frames135 (function134_eq bitmapPrefix) (compiled135_eq (step134 bitmapPrefix))
def step133 (bitmapPrefix : AppList (BitVec 64)) := (function133 bitmapPrefix).2.2.1
def programs133 := (133, StackAnalysis.optimized133.2.1, StackAnalysis.optimized133.2.2) :: programs134
def bodies133 := (133, stackBody133_294) :: bodies134
def frames133 := 8 :: frames134
def after133 (bitmapPrefix : AppList (BitVec 64)) := after134 (step133 bitmapPrefix)
theorem compiled133_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs133 (bitmapPrefix, 83) = (bodies133, frames133, after133 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 133 StackAnalysis.optimized133.2.1 StackAnalysis.optimized133.2.2 programs134 (bitmapPrefix, 83) (step133 bitmapPrefix, 86) (after134 (step133 bitmapPrefix), 107) stackBody133_294 8 bodies134 frames134 (function133_eq bitmapPrefix) (compiled134_eq (step133 bitmapPrefix))
def step132 (bitmapPrefix : AppList (BitVec 64)) := (function132 bitmapPrefix).2.2.1
def programs132 := (132, StackAnalysis.optimized132.2.1, StackAnalysis.optimized132.2.2) :: programs133
def bodies132 := (132, stackBody132_24) :: bodies133
def frames132 := 0 :: frames133
def after132 (bitmapPrefix : AppList (BitVec 64)) := after133 (step132 bitmapPrefix)
theorem compiled132_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs132 (bitmapPrefix, 83) = (bodies132, frames132, after132 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 132 StackAnalysis.optimized132.2.1 StackAnalysis.optimized132.2.2 programs133 (bitmapPrefix, 83) (step132 bitmapPrefix, 83) (after133 (step132 bitmapPrefix), 107) stackBody132_24 0 bodies133 frames133 (function132_eq bitmapPrefix) (compiled133_eq (step132 bitmapPrefix))
def step131 (bitmapPrefix : AppList (BitVec 64)) := (function131 bitmapPrefix).2.2.1
def programs131 := (131, StackAnalysis.optimized131.2.1, StackAnalysis.optimized131.2.2) :: programs132
def bodies131 := (131, stackBody131_60) :: bodies132
def frames131 := 2 :: frames132
def after131 (bitmapPrefix : AppList (BitVec 64)) := after132 (step131 bitmapPrefix)
theorem compiled131_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs131 (bitmapPrefix, 82) = (bodies131, frames131, after131 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 131 StackAnalysis.optimized131.2.1 StackAnalysis.optimized131.2.2 programs132 (bitmapPrefix, 82) (step131 bitmapPrefix, 83) (after132 (step131 bitmapPrefix), 107) stackBody131_60 2 bodies132 frames132 (function131_eq bitmapPrefix) (compiled132_eq (step131 bitmapPrefix))
def step130 (bitmapPrefix : AppList (BitVec 64)) := (function130 bitmapPrefix).2.2.1
def programs130 := (130, StackAnalysis.optimized130.2.1, StackAnalysis.optimized130.2.2) :: programs131
def bodies130 := (130, stackBody130_56) :: bodies131
def frames130 := 2 :: frames131
def after130 (bitmapPrefix : AppList (BitVec 64)) := after131 (step130 bitmapPrefix)
theorem compiled130_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs130 (bitmapPrefix, 81) = (bodies130, frames130, after130 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 130 StackAnalysis.optimized130.2.1 StackAnalysis.optimized130.2.2 programs131 (bitmapPrefix, 81) (step130 bitmapPrefix, 82) (after131 (step130 bitmapPrefix), 107) stackBody130_56 2 bodies131 frames131 (function130_eq bitmapPrefix) (compiled131_eq (step130 bitmapPrefix))
def step129 (bitmapPrefix : AppList (BitVec 64)) := (function129 bitmapPrefix).2.2.1
def programs129 := (129, StackAnalysis.optimized129.2.1, StackAnalysis.optimized129.2.2) :: programs130
def bodies129 := (129, stackBody129_544) :: bodies130
def frames129 := 10 :: frames130
def after129 (bitmapPrefix : AppList (BitVec 64)) := after130 (step129 bitmapPrefix)
theorem compiled129_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs129 (bitmapPrefix, 76) = (bodies129, frames129, after129 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 129 StackAnalysis.optimized129.2.1 StackAnalysis.optimized129.2.2 programs130 (bitmapPrefix, 76) (step129 bitmapPrefix, 81) (after130 (step129 bitmapPrefix), 107) stackBody129_544 10 bodies130 frames130 (function129_eq bitmapPrefix) (compiled130_eq (step129 bitmapPrefix))
def step128 (bitmapPrefix : AppList (BitVec 64)) := (function128 bitmapPrefix).2.2.1
def programs128 := (128, StackAnalysis.optimized128.2.1, StackAnalysis.optimized128.2.2) :: programs129
def bodies128 := (128, stackBody128_422) :: bodies129
def frames128 := 12 :: frames129
def after128 (bitmapPrefix : AppList (BitVec 64)) := after129 (step128 bitmapPrefix)
theorem compiled128_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs128 (bitmapPrefix, 72) = (bodies128, frames128, after128 bitmapPrefix, 107) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 128 StackAnalysis.optimized128.2.1 StackAnalysis.optimized128.2.2 programs129 (bitmapPrefix, 72) (step128 bitmapPrefix, 76) (after129 (step128 bitmapPrefix), 107) stackBody128_422 12 bodies129 frames129 (function128_eq bitmapPrefix) (compiled129_eq (step128 bitmapPrefix))
def programs := programs128
def bodies := bodies128
def frames := frames128
def after := after128
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 107)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 72) = result bitmapPrefix := compiled128_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk128_143
