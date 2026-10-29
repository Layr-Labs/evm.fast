import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function192
import InitECandidate.Proofs.BackendStages.Function193
import InitECandidate.Proofs.BackendStages.Function194
import InitECandidate.Proofs.BackendStages.Function195
import InitECandidate.Proofs.BackendStages.Function196
import InitECandidate.Proofs.BackendStages.Function197
import InitECandidate.Proofs.BackendStages.Function198
import InitECandidate.Proofs.BackendStages.Function199
import InitECandidate.Proofs.BackendStages.Function200
import InitECandidate.Proofs.BackendStages.Function201
import InitECandidate.Proofs.BackendStages.Function202
import InitECandidate.Proofs.BackendStages.Function203
import InitECandidate.Proofs.BackendStages.Function204
import InitECandidate.Proofs.BackendStages.Function205
import InitECandidate.Proofs.BackendStages.Function206
import InitECandidate.Proofs.BackendStages.Function207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk192_207
def programs208 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies208 : List (Nat × StackLang.HolProg 64) := []
def frames208 : List Nat := []
def after208 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled208_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs208 (bitmapPrefix, 258) = (bodies208, frames208, after208 bitmapPrefix, 258) := by rfl
def step207 (bitmapPrefix : AppList (BitVec 64)) := (function207 bitmapPrefix).2.2.1
def programs207 := (207, StackAnalysis.optimized207.2.1, StackAnalysis.optimized207.2.2) :: programs208
def bodies207 := (207, stackBody207_1610) :: bodies208
def frames207 := 0 :: frames208
def after207 (bitmapPrefix : AppList (BitVec 64)) := after208 (step207 bitmapPrefix)
theorem compiled207_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs207 (bitmapPrefix, 258) = (bodies207, frames207, after207 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 207 StackAnalysis.optimized207.2.1 StackAnalysis.optimized207.2.2 programs208 (bitmapPrefix, 258) (step207 bitmapPrefix, 258) (after208 (step207 bitmapPrefix), 258) stackBody207_1610 0 bodies208 frames208 (function207_eq bitmapPrefix) (compiled208_eq (step207 bitmapPrefix))
def step206 (bitmapPrefix : AppList (BitVec 64)) := (function206 bitmapPrefix).2.2.1
def programs206 := (206, StackAnalysis.optimized206.2.1, StackAnalysis.optimized206.2.2) :: programs207
def bodies206 := (206, stackBody206_2240) :: bodies207
def frames206 := 9 :: frames207
def after206 (bitmapPrefix : AppList (BitVec 64)) := after207 (step206 bitmapPrefix)
theorem compiled206_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs206 (bitmapPrefix, 258) = (bodies206, frames206, after206 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 206 StackAnalysis.optimized206.2.1 StackAnalysis.optimized206.2.2 programs207 (bitmapPrefix, 258) (step206 bitmapPrefix, 258) (after207 (step206 bitmapPrefix), 258) stackBody206_2240 9 bodies207 frames207 (function206_eq bitmapPrefix) (compiled207_eq (step206 bitmapPrefix))
def step205 (bitmapPrefix : AppList (BitVec 64)) := (function205 bitmapPrefix).2.2.1
def programs205 := (205, StackAnalysis.optimized205.2.1, StackAnalysis.optimized205.2.2) :: programs206
def bodies205 := (205, stackBody205_120) :: bodies206
def frames205 := 6 :: frames206
def after205 (bitmapPrefix : AppList (BitVec 64)) := after206 (step205 bitmapPrefix)
theorem compiled205_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs205 (bitmapPrefix, 257) = (bodies205, frames205, after205 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 205 StackAnalysis.optimized205.2.1 StackAnalysis.optimized205.2.2 programs206 (bitmapPrefix, 257) (step205 bitmapPrefix, 258) (after206 (step205 bitmapPrefix), 258) stackBody205_120 6 bodies206 frames206 (function205_eq bitmapPrefix) (compiled206_eq (step205 bitmapPrefix))
def step204 (bitmapPrefix : AppList (BitVec 64)) := (function204 bitmapPrefix).2.2.1
def programs204 := (204, StackAnalysis.optimized204.2.1, StackAnalysis.optimized204.2.2) :: programs205
def bodies204 := (204, stackBody204_118) :: bodies205
def frames204 := 6 :: frames205
def after204 (bitmapPrefix : AppList (BitVec 64)) := after205 (step204 bitmapPrefix)
theorem compiled204_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs204 (bitmapPrefix, 256) = (bodies204, frames204, after204 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 204 StackAnalysis.optimized204.2.1 StackAnalysis.optimized204.2.2 programs205 (bitmapPrefix, 256) (step204 bitmapPrefix, 257) (after205 (step204 bitmapPrefix), 258) stackBody204_118 6 bodies205 frames205 (function204_eq bitmapPrefix) (compiled205_eq (step204 bitmapPrefix))
def step203 (bitmapPrefix : AppList (BitVec 64)) := (function203 bitmapPrefix).2.2.1
def programs203 := (203, StackAnalysis.optimized203.2.1, StackAnalysis.optimized203.2.2) :: programs204
def bodies203 := (203, stackBody203_226) :: bodies204
def frames203 := 10 :: frames204
def after203 (bitmapPrefix : AppList (BitVec 64)) := after204 (step203 bitmapPrefix)
theorem compiled203_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs203 (bitmapPrefix, 253) = (bodies203, frames203, after203 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 203 StackAnalysis.optimized203.2.1 StackAnalysis.optimized203.2.2 programs204 (bitmapPrefix, 253) (step203 bitmapPrefix, 256) (after204 (step203 bitmapPrefix), 258) stackBody203_226 10 bodies204 frames204 (function203_eq bitmapPrefix) (compiled204_eq (step203 bitmapPrefix))
def step202 (bitmapPrefix : AppList (BitVec 64)) := (function202 bitmapPrefix).2.2.1
def programs202 := (202, StackAnalysis.optimized202.2.1, StackAnalysis.optimized202.2.2) :: programs203
def bodies202 := (202, stackBody202_200) :: bodies203
def frames202 := 6 :: frames203
def after202 (bitmapPrefix : AppList (BitVec 64)) := after203 (step202 bitmapPrefix)
theorem compiled202_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs202 (bitmapPrefix, 251) = (bodies202, frames202, after202 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 202 StackAnalysis.optimized202.2.1 StackAnalysis.optimized202.2.2 programs203 (bitmapPrefix, 251) (step202 bitmapPrefix, 253) (after203 (step202 bitmapPrefix), 258) stackBody202_200 6 bodies203 frames203 (function202_eq bitmapPrefix) (compiled203_eq (step202 bitmapPrefix))
def step201 (bitmapPrefix : AppList (BitVec 64)) := (function201 bitmapPrefix).2.2.1
def programs201 := (201, StackAnalysis.optimized201.2.1, StackAnalysis.optimized201.2.2) :: programs202
def bodies201 := (201, stackBody201_8) :: bodies202
def frames201 := 0 :: frames202
def after201 (bitmapPrefix : AppList (BitVec 64)) := after202 (step201 bitmapPrefix)
theorem compiled201_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs201 (bitmapPrefix, 251) = (bodies201, frames201, after201 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 201 StackAnalysis.optimized201.2.1 StackAnalysis.optimized201.2.2 programs202 (bitmapPrefix, 251) (step201 bitmapPrefix, 251) (after202 (step201 bitmapPrefix), 258) stackBody201_8 0 bodies202 frames202 (function201_eq bitmapPrefix) (compiled202_eq (step201 bitmapPrefix))
def step200 (bitmapPrefix : AppList (BitVec 64)) := (function200 bitmapPrefix).2.2.1
def programs200 := (200, StackAnalysis.optimized200.2.1, StackAnalysis.optimized200.2.2) :: programs201
def bodies200 := (200, stackBody200_564) :: bodies201
def frames200 := 6 :: frames201
def after200 (bitmapPrefix : AppList (BitVec 64)) := after201 (step200 bitmapPrefix)
theorem compiled200_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs200 (bitmapPrefix, 243) = (bodies200, frames200, after200 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 200 StackAnalysis.optimized200.2.1 StackAnalysis.optimized200.2.2 programs201 (bitmapPrefix, 243) (step200 bitmapPrefix, 251) (after201 (step200 bitmapPrefix), 258) stackBody200_564 6 bodies201 frames201 (function200_eq bitmapPrefix) (compiled201_eq (step200 bitmapPrefix))
def step199 (bitmapPrefix : AppList (BitVec 64)) := (function199 bitmapPrefix).2.2.1
def programs199 := (199, StackAnalysis.optimized199.2.1, StackAnalysis.optimized199.2.2) :: programs200
def bodies199 := (199, stackBody199_564) :: bodies200
def frames199 := 6 :: frames200
def after199 (bitmapPrefix : AppList (BitVec 64)) := after200 (step199 bitmapPrefix)
theorem compiled199_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs199 (bitmapPrefix, 235) = (bodies199, frames199, after199 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 199 StackAnalysis.optimized199.2.1 StackAnalysis.optimized199.2.2 programs200 (bitmapPrefix, 235) (step199 bitmapPrefix, 243) (after200 (step199 bitmapPrefix), 258) stackBody199_564 6 bodies200 frames200 (function199_eq bitmapPrefix) (compiled200_eq (step199 bitmapPrefix))
def step198 (bitmapPrefix : AppList (BitVec 64)) := (function198 bitmapPrefix).2.2.1
def programs198 := (198, StackAnalysis.optimized198.2.1, StackAnalysis.optimized198.2.2) :: programs199
def bodies198 := (198, stackBody198_255) :: bodies199
def frames198 := 9 :: frames199
def after198 (bitmapPrefix : AppList (BitVec 64)) := after199 (step198 bitmapPrefix)
theorem compiled198_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs198 (bitmapPrefix, 233) = (bodies198, frames198, after198 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 198 StackAnalysis.optimized198.2.1 StackAnalysis.optimized198.2.2 programs199 (bitmapPrefix, 233) (step198 bitmapPrefix, 235) (after199 (step198 bitmapPrefix), 258) stackBody198_255 9 bodies199 frames199 (function198_eq bitmapPrefix) (compiled199_eq (step198 bitmapPrefix))
def step197 (bitmapPrefix : AppList (BitVec 64)) := (function197 bitmapPrefix).2.2.1
def programs197 := (197, StackAnalysis.optimized197.2.1, StackAnalysis.optimized197.2.2) :: programs198
def bodies197 := (197, stackBody197_70) :: bodies198
def frames197 := 0 :: frames198
def after197 (bitmapPrefix : AppList (BitVec 64)) := after198 (step197 bitmapPrefix)
theorem compiled197_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs197 (bitmapPrefix, 233) = (bodies197, frames197, after197 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 197 StackAnalysis.optimized197.2.1 StackAnalysis.optimized197.2.2 programs198 (bitmapPrefix, 233) (step197 bitmapPrefix, 233) (after198 (step197 bitmapPrefix), 258) stackBody197_70 0 bodies198 frames198 (function197_eq bitmapPrefix) (compiled198_eq (step197 bitmapPrefix))
def step196 (bitmapPrefix : AppList (BitVec 64)) := (function196 bitmapPrefix).2.2.1
def programs196 := (196, StackAnalysis.optimized196.2.1, StackAnalysis.optimized196.2.2) :: programs197
def bodies196 := (196, stackBody196_8) :: bodies197
def frames196 := 0 :: frames197
def after196 (bitmapPrefix : AppList (BitVec 64)) := after197 (step196 bitmapPrefix)
theorem compiled196_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs196 (bitmapPrefix, 233) = (bodies196, frames196, after196 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 196 StackAnalysis.optimized196.2.1 StackAnalysis.optimized196.2.2 programs197 (bitmapPrefix, 233) (step196 bitmapPrefix, 233) (after197 (step196 bitmapPrefix), 258) stackBody196_8 0 bodies197 frames197 (function196_eq bitmapPrefix) (compiled197_eq (step196 bitmapPrefix))
def step195 (bitmapPrefix : AppList (BitVec 64)) := (function195 bitmapPrefix).2.2.1
def programs195 := (195, StackAnalysis.optimized195.2.1, StackAnalysis.optimized195.2.2) :: programs196
def bodies195 := (195, stackBody195_8) :: bodies196
def frames195 := 0 :: frames196
def after195 (bitmapPrefix : AppList (BitVec 64)) := after196 (step195 bitmapPrefix)
theorem compiled195_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs195 (bitmapPrefix, 233) = (bodies195, frames195, after195 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 195 StackAnalysis.optimized195.2.1 StackAnalysis.optimized195.2.2 programs196 (bitmapPrefix, 233) (step195 bitmapPrefix, 233) (after196 (step195 bitmapPrefix), 258) stackBody195_8 0 bodies196 frames196 (function195_eq bitmapPrefix) (compiled196_eq (step195 bitmapPrefix))
def step194 (bitmapPrefix : AppList (BitVec 64)) := (function194 bitmapPrefix).2.2.1
def programs194 := (194, StackAnalysis.optimized194.2.1, StackAnalysis.optimized194.2.2) :: programs195
def bodies194 := (194, stackBody194_133) :: bodies195
def frames194 := 5 :: frames195
def after194 (bitmapPrefix : AppList (BitVec 64)) := after195 (step194 bitmapPrefix)
theorem compiled194_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs194 (bitmapPrefix, 232) = (bodies194, frames194, after194 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 194 StackAnalysis.optimized194.2.1 StackAnalysis.optimized194.2.2 programs195 (bitmapPrefix, 232) (step194 bitmapPrefix, 233) (after195 (step194 bitmapPrefix), 258) stackBody194_133 5 bodies195 frames195 (function194_eq bitmapPrefix) (compiled195_eq (step194 bitmapPrefix))
def step193 (bitmapPrefix : AppList (BitVec 64)) := (function193 bitmapPrefix).2.2.1
def programs193 := (193, StackAnalysis.optimized193.2.1, StackAnalysis.optimized193.2.2) :: programs194
def bodies193 := (193, stackBody193_444) :: bodies194
def frames193 := 6 :: frames194
def after193 (bitmapPrefix : AppList (BitVec 64)) := after194 (step193 bitmapPrefix)
theorem compiled193_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs193 (bitmapPrefix, 230) = (bodies193, frames193, after193 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 193 StackAnalysis.optimized193.2.1 StackAnalysis.optimized193.2.2 programs194 (bitmapPrefix, 230) (step193 bitmapPrefix, 232) (after194 (step193 bitmapPrefix), 258) stackBody193_444 6 bodies194 frames194 (function193_eq bitmapPrefix) (compiled194_eq (step193 bitmapPrefix))
def step192 (bitmapPrefix : AppList (BitVec 64)) := (function192 bitmapPrefix).2.2.1
def programs192 := (192, StackAnalysis.optimized192.2.1, StackAnalysis.optimized192.2.2) :: programs193
def bodies192 := (192, stackBody192_857) :: bodies193
def frames192 := 11 :: frames193
def after192 (bitmapPrefix : AppList (BitVec 64)) := after193 (step192 bitmapPrefix)
theorem compiled192_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs192 (bitmapPrefix, 224) = (bodies192, frames192, after192 bitmapPrefix, 258) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 192 StackAnalysis.optimized192.2.1 StackAnalysis.optimized192.2.2 programs193 (bitmapPrefix, 224) (step192 bitmapPrefix, 230) (after193 (step192 bitmapPrefix), 258) stackBody192_857 11 bodies193 frames193 (function192_eq bitmapPrefix) (compiled193_eq (step192 bitmapPrefix))
def programs := programs192
def bodies := bodies192
def frames := frames192
def after := after192
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 258)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 224) = result bitmapPrefix := compiled192_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk192_207
