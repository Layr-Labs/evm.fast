import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function144
import InitECandidate.Proofs.BackendStages.Function145
import InitECandidate.Proofs.BackendStages.Function146
import InitECandidate.Proofs.BackendStages.Function147
import InitECandidate.Proofs.BackendStages.Function148
import InitECandidate.Proofs.BackendStages.Function149
import InitECandidate.Proofs.BackendStages.Function150
import InitECandidate.Proofs.BackendStages.Function151
import InitECandidate.Proofs.BackendStages.Function152
import InitECandidate.Proofs.BackendStages.Function153
import InitECandidate.Proofs.BackendStages.Function154
import InitECandidate.Proofs.BackendStages.Function155
import InitECandidate.Proofs.BackendStages.Function156
import InitECandidate.Proofs.BackendStages.Function157
import InitECandidate.Proofs.BackendStages.Function158
import InitECandidate.Proofs.BackendStages.Function159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk144_159
def programs160 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies160 : List (Nat × StackLang.HolProg 64) := []
def frames160 : List Nat := []
def after160 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled160_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs160 (bitmapPrefix, 146) = (bodies160, frames160, after160 bitmapPrefix, 146) := by rfl
def step159 (bitmapPrefix : AppList (BitVec 64)) := (function159 bitmapPrefix).2.2.1
def programs159 := (159, StackAnalysis.optimized159.2.1, StackAnalysis.optimized159.2.2) :: programs160
def bodies159 := (159, stackBody159_10) :: bodies160
def frames159 := 0 :: frames160
def after159 (bitmapPrefix : AppList (BitVec 64)) := after160 (step159 bitmapPrefix)
theorem compiled159_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs159 (bitmapPrefix, 146) = (bodies159, frames159, after159 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 159 StackAnalysis.optimized159.2.1 StackAnalysis.optimized159.2.2 programs160 (bitmapPrefix, 146) (step159 bitmapPrefix, 146) (after160 (step159 bitmapPrefix), 146) stackBody159_10 0 bodies160 frames160 (function159_eq bitmapPrefix) (compiled160_eq (step159 bitmapPrefix))
def step158 (bitmapPrefix : AppList (BitVec 64)) := (function158 bitmapPrefix).2.2.1
def programs158 := (158, StackAnalysis.optimized158.2.1, StackAnalysis.optimized158.2.2) :: programs159
def bodies158 := (158, stackBody158_573) :: bodies159
def frames158 := 7 :: frames159
def after158 (bitmapPrefix : AppList (BitVec 64)) := after159 (step158 bitmapPrefix)
theorem compiled158_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs158 (bitmapPrefix, 140) = (bodies158, frames158, after158 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 158 StackAnalysis.optimized158.2.1 StackAnalysis.optimized158.2.2 programs159 (bitmapPrefix, 140) (step158 bitmapPrefix, 146) (after159 (step158 bitmapPrefix), 146) stackBody158_573 7 bodies159 frames159 (function158_eq bitmapPrefix) (compiled159_eq (step158 bitmapPrefix))
def step157 (bitmapPrefix : AppList (BitVec 64)) := (function157 bitmapPrefix).2.2.1
def programs157 := (157, StackAnalysis.optimized157.2.1, StackAnalysis.optimized157.2.2) :: programs158
def bodies157 := (157, stackBody157_260) :: bodies158
def frames157 := 2 :: frames158
def after157 (bitmapPrefix : AppList (BitVec 64)) := after158 (step157 bitmapPrefix)
theorem compiled157_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs157 (bitmapPrefix, 139) = (bodies157, frames157, after157 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 157 StackAnalysis.optimized157.2.1 StackAnalysis.optimized157.2.2 programs158 (bitmapPrefix, 139) (step157 bitmapPrefix, 140) (after158 (step157 bitmapPrefix), 146) stackBody157_260 2 bodies158 frames158 (function157_eq bitmapPrefix) (compiled158_eq (step157 bitmapPrefix))
def step156 (bitmapPrefix : AppList (BitVec 64)) := (function156 bitmapPrefix).2.2.1
def programs156 := (156, StackAnalysis.optimized156.2.1, StackAnalysis.optimized156.2.2) :: programs157
def bodies156 := (156, stackBody156_1153) :: bodies157
def frames156 := 18 :: frames157
def after156 (bitmapPrefix : AppList (BitVec 64)) := after157 (step156 bitmapPrefix)
theorem compiled156_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs156 (bitmapPrefix, 139) = (bodies156, frames156, after156 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 156 StackAnalysis.optimized156.2.1 StackAnalysis.optimized156.2.2 programs157 (bitmapPrefix, 139) (step156 bitmapPrefix, 139) (after157 (step156 bitmapPrefix), 146) stackBody156_1153 18 bodies157 frames157 (function156_eq bitmapPrefix) (compiled157_eq (step156 bitmapPrefix))
def step155 (bitmapPrefix : AppList (BitVec 64)) := (function155 bitmapPrefix).2.2.1
def programs155 := (155, StackAnalysis.optimized155.2.1, StackAnalysis.optimized155.2.2) :: programs156
def bodies155 := (155, stackBody155_484) :: bodies156
def frames155 := 2 :: frames156
def after155 (bitmapPrefix : AppList (BitVec 64)) := after156 (step155 bitmapPrefix)
theorem compiled155_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs155 (bitmapPrefix, 136) = (bodies155, frames155, after155 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 155 StackAnalysis.optimized155.2.1 StackAnalysis.optimized155.2.2 programs156 (bitmapPrefix, 136) (step155 bitmapPrefix, 139) (after156 (step155 bitmapPrefix), 146) stackBody155_484 2 bodies156 frames156 (function155_eq bitmapPrefix) (compiled156_eq (step155 bitmapPrefix))
def step154 (bitmapPrefix : AppList (BitVec 64)) := (function154 bitmapPrefix).2.2.1
def programs154 := (154, StackAnalysis.optimized154.2.1, StackAnalysis.optimized154.2.2) :: programs155
def bodies154 := (154, stackBody154_20332) :: bodies155
def frames154 := 13 :: frames155
def after154 (bitmapPrefix : AppList (BitVec 64)) := after155 (step154 bitmapPrefix)
theorem compiled154_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs154 (bitmapPrefix, 136) = (bodies154, frames154, after154 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 154 StackAnalysis.optimized154.2.1 StackAnalysis.optimized154.2.2 programs155 (bitmapPrefix, 136) (step154 bitmapPrefix, 136) (after155 (step154 bitmapPrefix), 146) stackBody154_20332 13 bodies155 frames155 (function154_eq bitmapPrefix) (compiled155_eq (step154 bitmapPrefix))
def step153 (bitmapPrefix : AppList (BitVec 64)) := (function153 bitmapPrefix).2.2.1
def programs153 := (153, StackAnalysis.optimized153.2.1, StackAnalysis.optimized153.2.2) :: programs154
def bodies153 := (153, stackBody153_621) :: bodies154
def frames153 := 7 :: frames154
def after153 (bitmapPrefix : AppList (BitVec 64)) := after154 (step153 bitmapPrefix)
theorem compiled153_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs153 (bitmapPrefix, 128) = (bodies153, frames153, after153 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 153 StackAnalysis.optimized153.2.1 StackAnalysis.optimized153.2.2 programs154 (bitmapPrefix, 128) (step153 bitmapPrefix, 136) (after154 (step153 bitmapPrefix), 146) stackBody153_621 7 bodies154 frames154 (function153_eq bitmapPrefix) (compiled154_eq (step153 bitmapPrefix))
def step152 (bitmapPrefix : AppList (BitVec 64)) := (function152 bitmapPrefix).2.2.1
def programs152 := (152, StackAnalysis.optimized152.2.1, StackAnalysis.optimized152.2.2) :: programs153
def bodies152 := (152, stackBody152_129) :: bodies153
def frames152 := 5 :: frames153
def after152 (bitmapPrefix : AppList (BitVec 64)) := after153 (step152 bitmapPrefix)
theorem compiled152_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs152 (bitmapPrefix, 127) = (bodies152, frames152, after152 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 152 StackAnalysis.optimized152.2.1 StackAnalysis.optimized152.2.2 programs153 (bitmapPrefix, 127) (step152 bitmapPrefix, 128) (after153 (step152 bitmapPrefix), 146) stackBody152_129 5 bodies153 frames153 (function152_eq bitmapPrefix) (compiled153_eq (step152 bitmapPrefix))
def step151 (bitmapPrefix : AppList (BitVec 64)) := (function151 bitmapPrefix).2.2.1
def programs151 := (151, StackAnalysis.optimized151.2.1, StackAnalysis.optimized151.2.2) :: programs152
def bodies151 := (151, stackBody151_12364) :: bodies152
def frames151 := 15 :: frames152
def after151 (bitmapPrefix : AppList (BitVec 64)) := after152 (step151 bitmapPrefix)
theorem compiled151_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs151 (bitmapPrefix, 127) = (bodies151, frames151, after151 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 151 StackAnalysis.optimized151.2.1 StackAnalysis.optimized151.2.2 programs152 (bitmapPrefix, 127) (step151 bitmapPrefix, 127) (after152 (step151 bitmapPrefix), 146) stackBody151_12364 15 bodies152 frames152 (function151_eq bitmapPrefix) (compiled152_eq (step151 bitmapPrefix))
def step150 (bitmapPrefix : AppList (BitVec 64)) := (function150 bitmapPrefix).2.2.1
def programs150 := (150, StackAnalysis.optimized150.2.1, StackAnalysis.optimized150.2.2) :: programs151
def bodies150 := (150, stackBody150_84) :: bodies151
def frames150 := 0 :: frames151
def after150 (bitmapPrefix : AppList (BitVec 64)) := after151 (step150 bitmapPrefix)
theorem compiled150_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs150 (bitmapPrefix, 127) = (bodies150, frames150, after150 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 150 StackAnalysis.optimized150.2.1 StackAnalysis.optimized150.2.2 programs151 (bitmapPrefix, 127) (step150 bitmapPrefix, 127) (after151 (step150 bitmapPrefix), 146) stackBody150_84 0 bodies151 frames151 (function150_eq bitmapPrefix) (compiled151_eq (step150 bitmapPrefix))
def step149 (bitmapPrefix : AppList (BitVec 64)) := (function149 bitmapPrefix).2.2.1
def programs149 := (149, StackAnalysis.optimized149.2.1, StackAnalysis.optimized149.2.2) :: programs150
def bodies149 := (149, stackBody149_136) :: bodies150
def frames149 := 2 :: frames150
def after149 (bitmapPrefix : AppList (BitVec 64)) := after150 (step149 bitmapPrefix)
theorem compiled149_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs149 (bitmapPrefix, 125) = (bodies149, frames149, after149 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 149 StackAnalysis.optimized149.2.1 StackAnalysis.optimized149.2.2 programs150 (bitmapPrefix, 125) (step149 bitmapPrefix, 127) (after150 (step149 bitmapPrefix), 146) stackBody149_136 2 bodies150 frames150 (function149_eq bitmapPrefix) (compiled150_eq (step149 bitmapPrefix))
def step148 (bitmapPrefix : AppList (BitVec 64)) := (function148 bitmapPrefix).2.2.1
def programs148 := (148, StackAnalysis.optimized148.2.1, StackAnalysis.optimized148.2.2) :: programs149
def bodies148 := (148, stackBody148_253) :: bodies149
def frames148 := 10 :: frames149
def after148 (bitmapPrefix : AppList (BitVec 64)) := after149 (step148 bitmapPrefix)
theorem compiled148_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs148 (bitmapPrefix, 123) = (bodies148, frames148, after148 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 148 StackAnalysis.optimized148.2.1 StackAnalysis.optimized148.2.2 programs149 (bitmapPrefix, 123) (step148 bitmapPrefix, 125) (after149 (step148 bitmapPrefix), 146) stackBody148_253 10 bodies149 frames149 (function148_eq bitmapPrefix) (compiled149_eq (step148 bitmapPrefix))
def step147 (bitmapPrefix : AppList (BitVec 64)) := (function147 bitmapPrefix).2.2.1
def programs147 := (147, StackAnalysis.optimized147.2.1, StackAnalysis.optimized147.2.2) :: programs148
def bodies147 := (147, stackBody147_532) :: bodies148
def frames147 := 7 :: frames148
def after147 (bitmapPrefix : AppList (BitVec 64)) := after148 (step147 bitmapPrefix)
theorem compiled147_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs147 (bitmapPrefix, 115) = (bodies147, frames147, after147 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 147 StackAnalysis.optimized147.2.1 StackAnalysis.optimized147.2.2 programs148 (bitmapPrefix, 115) (step147 bitmapPrefix, 123) (after148 (step147 bitmapPrefix), 146) stackBody147_532 7 bodies148 frames148 (function147_eq bitmapPrefix) (compiled148_eq (step147 bitmapPrefix))
def step146 (bitmapPrefix : AppList (BitVec 64)) := (function146 bitmapPrefix).2.2.1
def programs146 := (146, StackAnalysis.optimized146.2.1, StackAnalysis.optimized146.2.2) :: programs147
def bodies146 := (146, stackBody146_429) :: bodies147
def frames146 := 5 :: frames147
def after146 (bitmapPrefix : AppList (BitVec 64)) := after147 (step146 bitmapPrefix)
theorem compiled146_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs146 (bitmapPrefix, 111) = (bodies146, frames146, after146 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 146 StackAnalysis.optimized146.2.1 StackAnalysis.optimized146.2.2 programs147 (bitmapPrefix, 111) (step146 bitmapPrefix, 115) (after147 (step146 bitmapPrefix), 146) stackBody146_429 5 bodies147 frames147 (function146_eq bitmapPrefix) (compiled147_eq (step146 bitmapPrefix))
def step145 (bitmapPrefix : AppList (BitVec 64)) := (function145 bitmapPrefix).2.2.1
def programs145 := (145, StackAnalysis.optimized145.2.1, StackAnalysis.optimized145.2.2) :: programs146
def bodies145 := (145, stackBody145_110) :: bodies146
def frames145 := 3 :: frames146
def after145 (bitmapPrefix : AppList (BitVec 64)) := after146 (step145 bitmapPrefix)
theorem compiled145_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs145 (bitmapPrefix, 110) = (bodies145, frames145, after145 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 145 StackAnalysis.optimized145.2.1 StackAnalysis.optimized145.2.2 programs146 (bitmapPrefix, 110) (step145 bitmapPrefix, 111) (after146 (step145 bitmapPrefix), 146) stackBody145_110 3 bodies146 frames146 (function145_eq bitmapPrefix) (compiled146_eq (step145 bitmapPrefix))
def step144 (bitmapPrefix : AppList (BitVec 64)) := (function144 bitmapPrefix).2.2.1
def programs144 := (144, StackAnalysis.optimized144.2.1, StackAnalysis.optimized144.2.2) :: programs145
def bodies144 := (144, stackBody144_314) :: bodies145
def frames144 := 7 :: frames145
def after144 (bitmapPrefix : AppList (BitVec 64)) := after145 (step144 bitmapPrefix)
theorem compiled144_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs144 (bitmapPrefix, 107) = (bodies144, frames144, after144 bitmapPrefix, 146) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 144 StackAnalysis.optimized144.2.1 StackAnalysis.optimized144.2.2 programs145 (bitmapPrefix, 107) (step144 bitmapPrefix, 110) (after145 (step144 bitmapPrefix), 146) stackBody144_314 7 bodies145 frames145 (function144_eq bitmapPrefix) (compiled145_eq (step144 bitmapPrefix))
def programs := programs144
def bodies := bodies144
def frames := frames144
def after := after144
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 146)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 107) = result bitmapPrefix := compiled144_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk144_159
