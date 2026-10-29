import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function256
import InitECandidate.Proofs.BackendStages.Function257
import InitECandidate.Proofs.BackendStages.Function258
import InitECandidate.Proofs.BackendStages.Function259
import InitECandidate.Proofs.BackendStages.Function260
import InitECandidate.Proofs.BackendStages.Function261
import InitECandidate.Proofs.BackendStages.Function262
import InitECandidate.Proofs.BackendStages.Function263
import InitECandidate.Proofs.BackendStages.Function264
import InitECandidate.Proofs.BackendStages.Function265
import InitECandidate.Proofs.BackendStages.Function266
import InitECandidate.Proofs.BackendStages.Function267
import InitECandidate.Proofs.BackendStages.Function268
import InitECandidate.Proofs.BackendStages.Function269
import InitECandidate.Proofs.BackendStages.Function270
import InitECandidate.Proofs.BackendStages.Function271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk256_271
def programs272 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies272 : List (Nat × StackLang.HolProg 64) := []
def frames272 : List Nat := []
def after272 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled272_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs272 (bitmapPrefix, 658) = (bodies272, frames272, after272 bitmapPrefix, 658) := by rfl
def step271 (bitmapPrefix : AppList (BitVec 64)) := (function271 bitmapPrefix).2.2.1
def programs271 := (271, StackAnalysis.optimized271.2.1, StackAnalysis.optimized271.2.2) :: programs272
def bodies271 := (271, stackBody271_128) :: bodies272
def frames271 := 2 :: frames272
def after271 (bitmapPrefix : AppList (BitVec 64)) := after272 (step271 bitmapPrefix)
theorem compiled271_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs271 (bitmapPrefix, 656) = (bodies271, frames271, after271 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 271 StackAnalysis.optimized271.2.1 StackAnalysis.optimized271.2.2 programs272 (bitmapPrefix, 656) (step271 bitmapPrefix, 658) (after272 (step271 bitmapPrefix), 658) stackBody271_128 2 bodies272 frames272 (function271_eq bitmapPrefix) (compiled272_eq (step271 bitmapPrefix))
def step270 (bitmapPrefix : AppList (BitVec 64)) := (function270 bitmapPrefix).2.2.1
def programs270 := (270, StackAnalysis.optimized270.2.1, StackAnalysis.optimized270.2.2) :: programs271
def bodies270 := (270, stackBody270_139) :: bodies271
def frames270 := 4 :: frames271
def after270 (bitmapPrefix : AppList (BitVec 64)) := after271 (step270 bitmapPrefix)
theorem compiled270_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs270 (bitmapPrefix, 655) = (bodies270, frames270, after270 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 270 StackAnalysis.optimized270.2.1 StackAnalysis.optimized270.2.2 programs271 (bitmapPrefix, 655) (step270 bitmapPrefix, 656) (after271 (step270 bitmapPrefix), 658) stackBody270_139 4 bodies271 frames271 (function270_eq bitmapPrefix) (compiled271_eq (step270 bitmapPrefix))
def step269 (bitmapPrefix : AppList (BitVec 64)) := (function269 bitmapPrefix).2.2.1
def programs269 := (269, StackAnalysis.optimized269.2.1, StackAnalysis.optimized269.2.2) :: programs270
def bodies269 := (269, stackBody269_180) :: bodies270
def frames269 := 3 :: frames270
def after269 (bitmapPrefix : AppList (BitVec 64)) := after270 (step269 bitmapPrefix)
theorem compiled269_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs269 (bitmapPrefix, 654) = (bodies269, frames269, after269 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 269 StackAnalysis.optimized269.2.1 StackAnalysis.optimized269.2.2 programs270 (bitmapPrefix, 654) (step269 bitmapPrefix, 655) (after270 (step269 bitmapPrefix), 658) stackBody269_180 3 bodies270 frames270 (function269_eq bitmapPrefix) (compiled270_eq (step269 bitmapPrefix))
def step268 (bitmapPrefix : AppList (BitVec 64)) := (function268 bitmapPrefix).2.2.1
def programs268 := (268, StackAnalysis.optimized268.2.1, StackAnalysis.optimized268.2.2) :: programs269
def bodies268 := (268, stackBody268_172) :: bodies269
def frames268 := 6 :: frames269
def after268 (bitmapPrefix : AppList (BitVec 64)) := after269 (step268 bitmapPrefix)
theorem compiled268_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs268 (bitmapPrefix, 652) = (bodies268, frames268, after268 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 268 StackAnalysis.optimized268.2.1 StackAnalysis.optimized268.2.2 programs269 (bitmapPrefix, 652) (step268 bitmapPrefix, 654) (after269 (step268 bitmapPrefix), 658) stackBody268_172 6 bodies269 frames269 (function268_eq bitmapPrefix) (compiled269_eq (step268 bitmapPrefix))
def step267 (bitmapPrefix : AppList (BitVec 64)) := (function267 bitmapPrefix).2.2.1
def programs267 := (267, StackAnalysis.optimized267.2.1, StackAnalysis.optimized267.2.2) :: programs268
def bodies267 := (267, stackBody267_462) :: bodies268
def frames267 := 6 :: frames268
def after267 (bitmapPrefix : AppList (BitVec 64)) := after268 (step267 bitmapPrefix)
theorem compiled267_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs267 (bitmapPrefix, 644) = (bodies267, frames267, after267 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 267 StackAnalysis.optimized267.2.1 StackAnalysis.optimized267.2.2 programs268 (bitmapPrefix, 644) (step267 bitmapPrefix, 652) (after268 (step267 bitmapPrefix), 658) stackBody267_462 6 bodies268 frames268 (function267_eq bitmapPrefix) (compiled268_eq (step267 bitmapPrefix))
def step266 (bitmapPrefix : AppList (BitVec 64)) := (function266 bitmapPrefix).2.2.1
def programs266 := (266, StackAnalysis.optimized266.2.1, StackAnalysis.optimized266.2.2) :: programs267
def bodies266 := (266, stackBody266_574) :: bodies267
def frames266 := 6 :: frames267
def after266 (bitmapPrefix : AppList (BitVec 64)) := after267 (step266 bitmapPrefix)
theorem compiled266_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs266 (bitmapPrefix, 635) = (bodies266, frames266, after266 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 266 StackAnalysis.optimized266.2.1 StackAnalysis.optimized266.2.2 programs267 (bitmapPrefix, 635) (step266 bitmapPrefix, 644) (after267 (step266 bitmapPrefix), 658) stackBody266_574 6 bodies267 frames267 (function266_eq bitmapPrefix) (compiled267_eq (step266 bitmapPrefix))
def step265 (bitmapPrefix : AppList (BitVec 64)) := (function265 bitmapPrefix).2.2.1
def programs265 := (265, StackAnalysis.optimized265.2.1, StackAnalysis.optimized265.2.2) :: programs266
def bodies265 := (265, stackBody265_893) :: bodies266
def frames265 := 10 :: frames266
def after265 (bitmapPrefix : AppList (BitVec 64)) := after266 (step265 bitmapPrefix)
theorem compiled265_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs265 (bitmapPrefix, 626) = (bodies265, frames265, after265 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 265 StackAnalysis.optimized265.2.1 StackAnalysis.optimized265.2.2 programs266 (bitmapPrefix, 626) (step265 bitmapPrefix, 635) (after266 (step265 bitmapPrefix), 658) stackBody265_893 10 bodies266 frames266 (function265_eq bitmapPrefix) (compiled266_eq (step265 bitmapPrefix))
def step264 (bitmapPrefix : AppList (BitVec 64)) := (function264 bitmapPrefix).2.2.1
def programs264 := (264, StackAnalysis.optimized264.2.1, StackAnalysis.optimized264.2.2) :: programs265
def bodies264 := (264, stackBody264_334) :: bodies265
def frames264 := 6 :: frames265
def after264 (bitmapPrefix : AppList (BitVec 64)) := after265 (step264 bitmapPrefix)
theorem compiled264_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs264 (bitmapPrefix, 620) = (bodies264, frames264, after264 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 264 StackAnalysis.optimized264.2.1 StackAnalysis.optimized264.2.2 programs265 (bitmapPrefix, 620) (step264 bitmapPrefix, 626) (after265 (step264 bitmapPrefix), 658) stackBody264_334 6 bodies265 frames265 (function264_eq bitmapPrefix) (compiled265_eq (step264 bitmapPrefix))
def step263 (bitmapPrefix : AppList (BitVec 64)) := (function263 bitmapPrefix).2.2.1
def programs263 := (263, StackAnalysis.optimized263.2.1, StackAnalysis.optimized263.2.2) :: programs264
def bodies263 := (263, stackBody263_460) :: bodies264
def frames263 := 6 :: frames264
def after263 (bitmapPrefix : AppList (BitVec 64)) := after264 (step263 bitmapPrefix)
theorem compiled263_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs263 (bitmapPrefix, 612) = (bodies263, frames263, after263 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 263 StackAnalysis.optimized263.2.1 StackAnalysis.optimized263.2.2 programs264 (bitmapPrefix, 612) (step263 bitmapPrefix, 620) (after264 (step263 bitmapPrefix), 658) stackBody263_460 6 bodies264 frames264 (function263_eq bitmapPrefix) (compiled264_eq (step263 bitmapPrefix))
def step262 (bitmapPrefix : AppList (BitVec 64)) := (function262 bitmapPrefix).2.2.1
def programs262 := (262, StackAnalysis.optimized262.2.1, StackAnalysis.optimized262.2.2) :: programs263
def bodies262 := (262, stackBody262_398) :: bodies263
def frames262 := 6 :: frames263
def after262 (bitmapPrefix : AppList (BitVec 64)) := after263 (step262 bitmapPrefix)
theorem compiled262_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs262 (bitmapPrefix, 605) = (bodies262, frames262, after262 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 262 StackAnalysis.optimized262.2.1 StackAnalysis.optimized262.2.2 programs263 (bitmapPrefix, 605) (step262 bitmapPrefix, 612) (after263 (step262 bitmapPrefix), 658) stackBody262_398 6 bodies263 frames263 (function262_eq bitmapPrefix) (compiled263_eq (step262 bitmapPrefix))
def step261 (bitmapPrefix : AppList (BitVec 64)) := (function261 bitmapPrefix).2.2.1
def programs261 := (261, StackAnalysis.optimized261.2.1, StackAnalysis.optimized261.2.2) :: programs262
def bodies261 := (261, stackBody261_396) :: bodies262
def frames261 := 6 :: frames262
def after261 (bitmapPrefix : AppList (BitVec 64)) := after262 (step261 bitmapPrefix)
theorem compiled261_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs261 (bitmapPrefix, 598) = (bodies261, frames261, after261 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 261 StackAnalysis.optimized261.2.1 StackAnalysis.optimized261.2.2 programs262 (bitmapPrefix, 598) (step261 bitmapPrefix, 605) (after262 (step261 bitmapPrefix), 658) stackBody261_396 6 bodies262 frames262 (function261_eq bitmapPrefix) (compiled262_eq (step261 bitmapPrefix))
def step260 (bitmapPrefix : AppList (BitVec 64)) := (function260 bitmapPrefix).2.2.1
def programs260 := (260, StackAnalysis.optimized260.2.1, StackAnalysis.optimized260.2.2) :: programs261
def bodies260 := (260, stackBody260_522) :: bodies261
def frames260 := 6 :: frames261
def after260 (bitmapPrefix : AppList (BitVec 64)) := after261 (step260 bitmapPrefix)
theorem compiled260_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs260 (bitmapPrefix, 589) = (bodies260, frames260, after260 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 260 StackAnalysis.optimized260.2.1 StackAnalysis.optimized260.2.2 programs261 (bitmapPrefix, 589) (step260 bitmapPrefix, 598) (after261 (step260 bitmapPrefix), 658) stackBody260_522 6 bodies261 frames261 (function260_eq bitmapPrefix) (compiled261_eq (step260 bitmapPrefix))
def step259 (bitmapPrefix : AppList (BitVec 64)) := (function259 bitmapPrefix).2.2.1
def programs259 := (259, StackAnalysis.optimized259.2.1, StackAnalysis.optimized259.2.2) :: programs260
def bodies259 := (259, stackBody259_2232) :: bodies260
def frames259 := 14 :: frames260
def after259 (bitmapPrefix : AppList (BitVec 64)) := after260 (step259 bitmapPrefix)
theorem compiled259_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs259 (bitmapPrefix, 559) = (bodies259, frames259, after259 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 259 StackAnalysis.optimized259.2.1 StackAnalysis.optimized259.2.2 programs260 (bitmapPrefix, 559) (step259 bitmapPrefix, 589) (after260 (step259 bitmapPrefix), 658) stackBody259_2232 14 bodies260 frames260 (function259_eq bitmapPrefix) (compiled260_eq (step259 bitmapPrefix))
def step258 (bitmapPrefix : AppList (BitVec 64)) := (function258 bitmapPrefix).2.2.1
def programs258 := (258, StackAnalysis.optimized258.2.1, StackAnalysis.optimized258.2.2) :: programs259
def bodies258 := (258, stackBody258_112) :: bodies259
def frames258 := 4 :: frames259
def after258 (bitmapPrefix : AppList (BitVec 64)) := after259 (step258 bitmapPrefix)
theorem compiled258_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs258 (bitmapPrefix, 557) = (bodies258, frames258, after258 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 258 StackAnalysis.optimized258.2.1 StackAnalysis.optimized258.2.2 programs259 (bitmapPrefix, 557) (step258 bitmapPrefix, 559) (after259 (step258 bitmapPrefix), 658) stackBody258_112 4 bodies259 frames259 (function258_eq bitmapPrefix) (compiled259_eq (step258 bitmapPrefix))
def step257 (bitmapPrefix : AppList (BitVec 64)) := (function257 bitmapPrefix).2.2.1
def programs257 := (257, StackAnalysis.optimized257.2.1, StackAnalysis.optimized257.2.2) :: programs258
def bodies257 := (257, stackBody257_456) :: bodies258
def frames257 := 6 :: frames258
def after257 (bitmapPrefix : AppList (BitVec 64)) := after258 (step257 bitmapPrefix)
theorem compiled257_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs257 (bitmapPrefix, 549) = (bodies257, frames257, after257 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 257 StackAnalysis.optimized257.2.1 StackAnalysis.optimized257.2.2 programs258 (bitmapPrefix, 549) (step257 bitmapPrefix, 557) (after258 (step257 bitmapPrefix), 658) stackBody257_456 6 bodies258 frames258 (function257_eq bitmapPrefix) (compiled258_eq (step257 bitmapPrefix))
def step256 (bitmapPrefix : AppList (BitVec 64)) := (function256 bitmapPrefix).2.2.1
def programs256 := (256, StackAnalysis.optimized256.2.1, StackAnalysis.optimized256.2.2) :: programs257
def bodies256 := (256, stackBody256_1821) :: bodies257
def frames256 := 17 :: frames257
def after256 (bitmapPrefix : AppList (BitVec 64)) := after257 (step256 bitmapPrefix)
theorem compiled256_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs256 (bitmapPrefix, 534) = (bodies256, frames256, after256 bitmapPrefix, 658) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 256 StackAnalysis.optimized256.2.1 StackAnalysis.optimized256.2.2 programs257 (bitmapPrefix, 534) (step256 bitmapPrefix, 549) (after257 (step256 bitmapPrefix), 658) stackBody256_1821 17 bodies257 frames257 (function256_eq bitmapPrefix) (compiled257_eq (step256 bitmapPrefix))
def programs := programs256
def bodies := bodies256
def frames := frames256
def after := after256
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 658)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 534) = result bitmapPrefix := compiled256_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk256_271
