import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function272
import InitECandidate.Proofs.BackendStages.Function273
import InitECandidate.Proofs.BackendStages.Function274
import InitECandidate.Proofs.BackendStages.Function275
import InitECandidate.Proofs.BackendStages.Function276
import InitECandidate.Proofs.BackendStages.Function277
import InitECandidate.Proofs.BackendStages.Function278
import InitECandidate.Proofs.BackendStages.Function279
import InitECandidate.Proofs.BackendStages.Function280
import InitECandidate.Proofs.BackendStages.Function281
import InitECandidate.Proofs.BackendStages.Function282
import InitECandidate.Proofs.BackendStages.Function283
import InitECandidate.Proofs.BackendStages.Function284
import InitECandidate.Proofs.BackendStages.Function285
import InitECandidate.Proofs.BackendStages.Function286
import InitECandidate.Proofs.BackendStages.Function287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk272_287
def programs288 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies288 : List (Nat × StackLang.HolProg 64) := []
def frames288 : List Nat := []
def after288 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled288_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs288 (bitmapPrefix, 789) = (bodies288, frames288, after288 bitmapPrefix, 789) := by rfl
def step287 (bitmapPrefix : AppList (BitVec 64)) := (function287 bitmapPrefix).2.2.1
def programs287 := (287, StackAnalysis.optimized287.2.1, StackAnalysis.optimized287.2.2) :: programs288
def bodies287 := (287, stackBody287_448) :: bodies288
def frames287 := 2 :: frames288
def after287 (bitmapPrefix : AppList (BitVec 64)) := after288 (step287 bitmapPrefix)
theorem compiled287_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs287 (bitmapPrefix, 782) = (bodies287, frames287, after287 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 287 StackAnalysis.optimized287.2.1 StackAnalysis.optimized287.2.2 programs288 (bitmapPrefix, 782) (step287 bitmapPrefix, 789) (after288 (step287 bitmapPrefix), 789) stackBody287_448 2 bodies288 frames288 (function287_eq bitmapPrefix) (compiled288_eq (step287 bitmapPrefix))
def step286 (bitmapPrefix : AppList (BitVec 64)) := (function286 bitmapPrefix).2.2.1
def programs286 := (286, StackAnalysis.optimized286.2.1, StackAnalysis.optimized286.2.2) :: programs287
def bodies286 := (286, stackBody286_10) :: bodies287
def frames286 := 0 :: frames287
def after286 (bitmapPrefix : AppList (BitVec 64)) := after287 (step286 bitmapPrefix)
theorem compiled286_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs286 (bitmapPrefix, 782) = (bodies286, frames286, after286 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 286 StackAnalysis.optimized286.2.1 StackAnalysis.optimized286.2.2 programs287 (bitmapPrefix, 782) (step286 bitmapPrefix, 782) (after287 (step286 bitmapPrefix), 789) stackBody286_10 0 bodies287 frames287 (function286_eq bitmapPrefix) (compiled287_eq (step286 bitmapPrefix))
def step285 (bitmapPrefix : AppList (BitVec 64)) := (function285 bitmapPrefix).2.2.1
def programs285 := (285, StackAnalysis.optimized285.2.1, StackAnalysis.optimized285.2.2) :: programs286
def bodies285 := (285, stackBody285_1086) :: bodies286
def frames285 := 6 :: frames286
def after285 (bitmapPrefix : AppList (BitVec 64)) := after286 (step285 bitmapPrefix)
theorem compiled285_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs285 (bitmapPrefix, 769) = (bodies285, frames285, after285 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 285 StackAnalysis.optimized285.2.1 StackAnalysis.optimized285.2.2 programs286 (bitmapPrefix, 769) (step285 bitmapPrefix, 782) (after286 (step285 bitmapPrefix), 789) stackBody285_1086 6 bodies286 frames286 (function285_eq bitmapPrefix) (compiled286_eq (step285 bitmapPrefix))
def step284 (bitmapPrefix : AppList (BitVec 64)) := (function284 bitmapPrefix).2.2.1
def programs284 := (284, StackAnalysis.optimized284.2.1, StackAnalysis.optimized284.2.2) :: programs285
def bodies284 := (284, stackBody284_152) :: bodies285
def frames284 := 2 :: frames285
def after284 (bitmapPrefix : AppList (BitVec 64)) := after285 (step284 bitmapPrefix)
theorem compiled284_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs284 (bitmapPrefix, 767) = (bodies284, frames284, after284 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 284 StackAnalysis.optimized284.2.1 StackAnalysis.optimized284.2.2 programs285 (bitmapPrefix, 767) (step284 bitmapPrefix, 769) (after285 (step284 bitmapPrefix), 789) stackBody284_152 2 bodies285 frames285 (function284_eq bitmapPrefix) (compiled285_eq (step284 bitmapPrefix))
def step283 (bitmapPrefix : AppList (BitVec 64)) := (function283 bitmapPrefix).2.2.1
def programs283 := (283, StackAnalysis.optimized283.2.1, StackAnalysis.optimized283.2.2) :: programs284
def bodies283 := (283, stackBody283_1304) :: bodies284
def frames283 := 15 :: frames284
def after283 (bitmapPrefix : AppList (BitVec 64)) := after284 (step283 bitmapPrefix)
theorem compiled283_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs283 (bitmapPrefix, 752) = (bodies283, frames283, after283 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 283 StackAnalysis.optimized283.2.1 StackAnalysis.optimized283.2.2 programs284 (bitmapPrefix, 752) (step283 bitmapPrefix, 767) (after284 (step283 bitmapPrefix), 789) stackBody283_1304 15 bodies284 frames284 (function283_eq bitmapPrefix) (compiled284_eq (step283 bitmapPrefix))
def step282 (bitmapPrefix : AppList (BitVec 64)) := (function282 bitmapPrefix).2.2.1
def programs282 := (282, StackAnalysis.optimized282.2.1, StackAnalysis.optimized282.2.2) :: programs283
def bodies282 := (282, stackBody282_136) :: bodies283
def frames282 := 4 :: frames283
def after282 (bitmapPrefix : AppList (BitVec 64)) := after283 (step282 bitmapPrefix)
theorem compiled282_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs282 (bitmapPrefix, 751) = (bodies282, frames282, after282 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 282 StackAnalysis.optimized282.2.1 StackAnalysis.optimized282.2.2 programs283 (bitmapPrefix, 751) (step282 bitmapPrefix, 752) (after283 (step282 bitmapPrefix), 789) stackBody282_136 4 bodies283 frames283 (function282_eq bitmapPrefix) (compiled283_eq (step282 bitmapPrefix))
def step281 (bitmapPrefix : AppList (BitVec 64)) := (function281 bitmapPrefix).2.2.1
def programs281 := (281, StackAnalysis.optimized281.2.1, StackAnalysis.optimized281.2.2) :: programs282
def bodies281 := (281, stackBody281_628) :: bodies282
def frames281 := 13 :: frames282
def after281 (bitmapPrefix : AppList (BitVec 64)) := after282 (step281 bitmapPrefix)
theorem compiled281_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs281 (bitmapPrefix, 744) = (bodies281, frames281, after281 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 281 StackAnalysis.optimized281.2.1 StackAnalysis.optimized281.2.2 programs282 (bitmapPrefix, 744) (step281 bitmapPrefix, 751) (after282 (step281 bitmapPrefix), 789) stackBody281_628 13 bodies282 frames282 (function281_eq bitmapPrefix) (compiled282_eq (step281 bitmapPrefix))
def step280 (bitmapPrefix : AppList (BitVec 64)) := (function280 bitmapPrefix).2.2.1
def programs280 := (280, StackAnalysis.optimized280.2.1, StackAnalysis.optimized280.2.2) :: programs281
def bodies280 := (280, stackBody280_62) :: bodies281
def frames280 := 2 :: frames281
def after280 (bitmapPrefix : AppList (BitVec 64)) := after281 (step280 bitmapPrefix)
theorem compiled280_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs280 (bitmapPrefix, 743) = (bodies280, frames280, after280 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 280 StackAnalysis.optimized280.2.1 StackAnalysis.optimized280.2.2 programs281 (bitmapPrefix, 743) (step280 bitmapPrefix, 744) (after281 (step280 bitmapPrefix), 789) stackBody280_62 2 bodies281 frames281 (function280_eq bitmapPrefix) (compiled281_eq (step280 bitmapPrefix))
def step279 (bitmapPrefix : AppList (BitVec 64)) := (function279 bitmapPrefix).2.2.1
def programs279 := (279, StackAnalysis.optimized279.2.1, StackAnalysis.optimized279.2.2) :: programs280
def bodies279 := (279, stackBody279_1327) :: bodies280
def frames279 := 26 :: frames280
def after279 (bitmapPrefix : AppList (BitVec 64)) := after280 (step279 bitmapPrefix)
theorem compiled279_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs279 (bitmapPrefix, 730) = (bodies279, frames279, after279 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 279 StackAnalysis.optimized279.2.1 StackAnalysis.optimized279.2.2 programs280 (bitmapPrefix, 730) (step279 bitmapPrefix, 743) (after280 (step279 bitmapPrefix), 789) stackBody279_1327 26 bodies280 frames280 (function279_eq bitmapPrefix) (compiled280_eq (step279 bitmapPrefix))
def step278 (bitmapPrefix : AppList (BitVec 64)) := (function278 bitmapPrefix).2.2.1
def programs278 := (278, StackAnalysis.optimized278.2.1, StackAnalysis.optimized278.2.2) :: programs279
def bodies278 := (278, stackBody278_562) :: bodies279
def frames278 := 7 :: frames279
def after278 (bitmapPrefix : AppList (BitVec 64)) := after279 (step278 bitmapPrefix)
theorem compiled278_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs278 (bitmapPrefix, 725) = (bodies278, frames278, after278 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 278 StackAnalysis.optimized278.2.1 StackAnalysis.optimized278.2.2 programs279 (bitmapPrefix, 725) (step278 bitmapPrefix, 730) (after279 (step278 bitmapPrefix), 789) stackBody278_562 7 bodies279 frames279 (function278_eq bitmapPrefix) (compiled279_eq (step278 bitmapPrefix))
def step277 (bitmapPrefix : AppList (BitVec 64)) := (function277 bitmapPrefix).2.2.1
def programs277 := (277, StackAnalysis.optimized277.2.1, StackAnalysis.optimized277.2.2) :: programs278
def bodies277 := (277, stackBody277_210) :: bodies278
def frames277 := 4 :: frames278
def after277 (bitmapPrefix : AppList (BitVec 64)) := after278 (step277 bitmapPrefix)
theorem compiled277_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs277 (bitmapPrefix, 721) = (bodies277, frames277, after277 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 277 StackAnalysis.optimized277.2.1 StackAnalysis.optimized277.2.2 programs278 (bitmapPrefix, 721) (step277 bitmapPrefix, 725) (after278 (step277 bitmapPrefix), 789) stackBody277_210 4 bodies278 frames278 (function277_eq bitmapPrefix) (compiled278_eq (step277 bitmapPrefix))
def step276 (bitmapPrefix : AppList (BitVec 64)) := (function276 bitmapPrefix).2.2.1
def programs276 := (276, StackAnalysis.optimized276.2.1, StackAnalysis.optimized276.2.2) :: programs277
def bodies276 := (276, stackBody276_1746) :: bodies277
def frames276 := 5 :: frames277
def after276 (bitmapPrefix : AppList (BitVec 64)) := after277 (step276 bitmapPrefix)
theorem compiled276_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs276 (bitmapPrefix, 695) = (bodies276, frames276, after276 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 276 StackAnalysis.optimized276.2.1 StackAnalysis.optimized276.2.2 programs277 (bitmapPrefix, 695) (step276 bitmapPrefix, 721) (after277 (step276 bitmapPrefix), 789) stackBody276_1746 5 bodies277 frames277 (function276_eq bitmapPrefix) (compiled277_eq (step276 bitmapPrefix))
def step275 (bitmapPrefix : AppList (BitVec 64)) := (function275 bitmapPrefix).2.2.1
def programs275 := (275, StackAnalysis.optimized275.2.1, StackAnalysis.optimized275.2.2) :: programs276
def bodies275 := (275, stackBody275_312) :: bodies276
def frames275 := 8 :: frames276
def after275 (bitmapPrefix : AppList (BitVec 64)) := after276 (step275 bitmapPrefix)
theorem compiled275_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs275 (bitmapPrefix, 690) = (bodies275, frames275, after275 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 275 StackAnalysis.optimized275.2.1 StackAnalysis.optimized275.2.2 programs276 (bitmapPrefix, 690) (step275 bitmapPrefix, 695) (after276 (step275 bitmapPrefix), 789) stackBody275_312 8 bodies276 frames276 (function275_eq bitmapPrefix) (compiled276_eq (step275 bitmapPrefix))
def step274 (bitmapPrefix : AppList (BitVec 64)) := (function274 bitmapPrefix).2.2.1
def programs274 := (274, StackAnalysis.optimized274.2.1, StackAnalysis.optimized274.2.2) :: programs275
def bodies274 := (274, stackBody274_2138) :: bodies275
def frames274 := 5 :: frames275
def after274 (bitmapPrefix : AppList (BitVec 64)) := after275 (step274 bitmapPrefix)
theorem compiled274_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs274 (bitmapPrefix, 660) = (bodies274, frames274, after274 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 274 StackAnalysis.optimized274.2.1 StackAnalysis.optimized274.2.2 programs275 (bitmapPrefix, 660) (step274 bitmapPrefix, 690) (after275 (step274 bitmapPrefix), 789) stackBody274_2138 5 bodies275 frames275 (function274_eq bitmapPrefix) (compiled275_eq (step274 bitmapPrefix))
def step273 (bitmapPrefix : AppList (BitVec 64)) := (function273 bitmapPrefix).2.2.1
def programs273 := (273, StackAnalysis.optimized273.2.1, StackAnalysis.optimized273.2.2) :: programs274
def bodies273 := (273, stackBody273_96) :: bodies274
def frames273 := 2 :: frames274
def after273 (bitmapPrefix : AppList (BitVec 64)) := after274 (step273 bitmapPrefix)
theorem compiled273_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs273 (bitmapPrefix, 659) = (bodies273, frames273, after273 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 273 StackAnalysis.optimized273.2.1 StackAnalysis.optimized273.2.2 programs274 (bitmapPrefix, 659) (step273 bitmapPrefix, 660) (after274 (step273 bitmapPrefix), 789) stackBody273_96 2 bodies274 frames274 (function273_eq bitmapPrefix) (compiled274_eq (step273 bitmapPrefix))
def step272 (bitmapPrefix : AppList (BitVec 64)) := (function272 bitmapPrefix).2.2.1
def programs272 := (272, StackAnalysis.optimized272.2.1, StackAnalysis.optimized272.2.2) :: programs273
def bodies272 := (272, stackBody272_122) :: bodies273
def frames272 := 3 :: frames273
def after272 (bitmapPrefix : AppList (BitVec 64)) := after273 (step272 bitmapPrefix)
theorem compiled272_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs272 (bitmapPrefix, 658) = (bodies272, frames272, after272 bitmapPrefix, 789) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 272 StackAnalysis.optimized272.2.1 StackAnalysis.optimized272.2.2 programs273 (bitmapPrefix, 658) (step272 bitmapPrefix, 659) (after273 (step272 bitmapPrefix), 789) stackBody272_122 3 bodies273 frames273 (function272_eq bitmapPrefix) (compiled273_eq (step272 bitmapPrefix))
def programs := programs272
def bodies := bodies272
def frames := frames272
def after := after272
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 789)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 658) = result bitmapPrefix := compiled272_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk272_287
