import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function240
import InitECandidate.Proofs.BackendStages.Function241
import InitECandidate.Proofs.BackendStages.Function242
import InitECandidate.Proofs.BackendStages.Function243
import InitECandidate.Proofs.BackendStages.Function244
import InitECandidate.Proofs.BackendStages.Function245
import InitECandidate.Proofs.BackendStages.Function246
import InitECandidate.Proofs.BackendStages.Function247
import InitECandidate.Proofs.BackendStages.Function248
import InitECandidate.Proofs.BackendStages.Function249
import InitECandidate.Proofs.BackendStages.Function250
import InitECandidate.Proofs.BackendStages.Function251
import InitECandidate.Proofs.BackendStages.Function252
import InitECandidate.Proofs.BackendStages.Function253
import InitECandidate.Proofs.BackendStages.Function254
import InitECandidate.Proofs.BackendStages.Function255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk240_255
def programs256 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies256 : List (Nat × StackLang.HolProg 64) := []
def frames256 : List Nat := []
def after256 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled256_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs256 (bitmapPrefix, 534) = (bodies256, frames256, after256 bitmapPrefix, 534) := by rfl
def step255 (bitmapPrefix : AppList (BitVec 64)) := (function255 bitmapPrefix).2.2.1
def programs255 := (255, StackAnalysis.optimized255.2.1, StackAnalysis.optimized255.2.2) :: programs256
def bodies255 := (255, stackBody255_243) :: bodies256
def frames255 := 9 :: frames256
def after255 (bitmapPrefix : AppList (BitVec 64)) := after256 (step255 bitmapPrefix)
theorem compiled255_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs255 (bitmapPrefix, 532) = (bodies255, frames255, after255 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 255 StackAnalysis.optimized255.2.1 StackAnalysis.optimized255.2.2 programs256 (bitmapPrefix, 532) (step255 bitmapPrefix, 534) (after256 (step255 bitmapPrefix), 534) stackBody255_243 9 bodies256 frames256 (function255_eq bitmapPrefix) (compiled256_eq (step255 bitmapPrefix))
def step254 (bitmapPrefix : AppList (BitVec 64)) := (function254 bitmapPrefix).2.2.1
def programs254 := (254, StackAnalysis.optimized254.2.1, StackAnalysis.optimized254.2.2) :: programs255
def bodies254 := (254, stackBody254_809) :: bodies255
def frames254 := 13 :: frames255
def after254 (bitmapPrefix : AppList (BitVec 64)) := after255 (step254 bitmapPrefix)
theorem compiled254_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs254 (bitmapPrefix, 524) = (bodies254, frames254, after254 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 254 StackAnalysis.optimized254.2.1 StackAnalysis.optimized254.2.2 programs255 (bitmapPrefix, 524) (step254 bitmapPrefix, 532) (after255 (step254 bitmapPrefix), 534) stackBody254_809 13 bodies255 frames255 (function254_eq bitmapPrefix) (compiled255_eq (step254 bitmapPrefix))
def step253 (bitmapPrefix : AppList (BitVec 64)) := (function253 bitmapPrefix).2.2.1
def programs253 := (253, StackAnalysis.optimized253.2.1, StackAnalysis.optimized253.2.2) :: programs254
def bodies253 := (253, stackBody253_1476) :: bodies254
def frames253 := 9 :: frames254
def after253 (bitmapPrefix : AppList (BitVec 64)) := after254 (step253 bitmapPrefix)
theorem compiled253_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs253 (bitmapPrefix, 518) = (bodies253, frames253, after253 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 253 StackAnalysis.optimized253.2.1 StackAnalysis.optimized253.2.2 programs254 (bitmapPrefix, 518) (step253 bitmapPrefix, 524) (after254 (step253 bitmapPrefix), 534) stackBody253_1476 9 bodies254 frames254 (function253_eq bitmapPrefix) (compiled254_eq (step253 bitmapPrefix))
def step252 (bitmapPrefix : AppList (BitVec 64)) := (function252 bitmapPrefix).2.2.1
def programs252 := (252, StackAnalysis.optimized252.2.1, StackAnalysis.optimized252.2.2) :: programs253
def bodies252 := (252, stackBody252_190) :: bodies253
def frames252 := 4 :: frames253
def after252 (bitmapPrefix : AppList (BitVec 64)) := after253 (step252 bitmapPrefix)
theorem compiled252_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs252 (bitmapPrefix, 515) = (bodies252, frames252, after252 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 252 StackAnalysis.optimized252.2.1 StackAnalysis.optimized252.2.2 programs253 (bitmapPrefix, 515) (step252 bitmapPrefix, 518) (after253 (step252 bitmapPrefix), 534) stackBody252_190 4 bodies253 frames253 (function252_eq bitmapPrefix) (compiled253_eq (step252 bitmapPrefix))
def step251 (bitmapPrefix : AppList (BitVec 64)) := (function251 bitmapPrefix).2.2.1
def programs251 := (251, StackAnalysis.optimized251.2.1, StackAnalysis.optimized251.2.2) :: programs252
def bodies251 := (251, stackBody251_751) :: bodies252
def frames251 := 11 :: frames252
def after251 (bitmapPrefix : AppList (BitVec 64)) := after252 (step251 bitmapPrefix)
theorem compiled251_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs251 (bitmapPrefix, 510) = (bodies251, frames251, after251 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 251 StackAnalysis.optimized251.2.1 StackAnalysis.optimized251.2.2 programs252 (bitmapPrefix, 510) (step251 bitmapPrefix, 515) (after252 (step251 bitmapPrefix), 534) stackBody251_751 11 bodies252 frames252 (function251_eq bitmapPrefix) (compiled252_eq (step251 bitmapPrefix))
def step250 (bitmapPrefix : AppList (BitVec 64)) := (function250 bitmapPrefix).2.2.1
def programs250 := (250, StackAnalysis.optimized250.2.1, StackAnalysis.optimized250.2.2) :: programs251
def bodies250 := (250, stackBody250_363) :: bodies251
def frames250 := 8 :: frames251
def after250 (bitmapPrefix : AppList (BitVec 64)) := after251 (step250 bitmapPrefix)
theorem compiled250_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs250 (bitmapPrefix, 507) = (bodies250, frames250, after250 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 250 StackAnalysis.optimized250.2.1 StackAnalysis.optimized250.2.2 programs251 (bitmapPrefix, 507) (step250 bitmapPrefix, 510) (after251 (step250 bitmapPrefix), 534) stackBody250_363 8 bodies251 frames251 (function250_eq bitmapPrefix) (compiled251_eq (step250 bitmapPrefix))
def step249 (bitmapPrefix : AppList (BitVec 64)) := (function249 bitmapPrefix).2.2.1
def programs249 := (249, StackAnalysis.optimized249.2.1, StackAnalysis.optimized249.2.2) :: programs250
def bodies249 := (249, stackBody249_106) :: bodies250
def frames249 := 2 :: frames250
def after249 (bitmapPrefix : AppList (BitVec 64)) := after250 (step249 bitmapPrefix)
theorem compiled249_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs249 (bitmapPrefix, 505) = (bodies249, frames249, after249 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 249 StackAnalysis.optimized249.2.1 StackAnalysis.optimized249.2.2 programs250 (bitmapPrefix, 505) (step249 bitmapPrefix, 507) (after250 (step249 bitmapPrefix), 534) stackBody249_106 2 bodies250 frames250 (function249_eq bitmapPrefix) (compiled250_eq (step249 bitmapPrefix))
def step248 (bitmapPrefix : AppList (BitVec 64)) := (function248 bitmapPrefix).2.2.1
def programs248 := (248, StackAnalysis.optimized248.2.1, StackAnalysis.optimized248.2.2) :: programs249
def bodies248 := (248, stackBody248_1310) :: bodies249
def frames248 := 6 :: frames249
def after248 (bitmapPrefix : AppList (BitVec 64)) := after249 (step248 bitmapPrefix)
theorem compiled248_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs248 (bitmapPrefix, 486) = (bodies248, frames248, after248 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 248 StackAnalysis.optimized248.2.1 StackAnalysis.optimized248.2.2 programs249 (bitmapPrefix, 486) (step248 bitmapPrefix, 505) (after249 (step248 bitmapPrefix), 534) stackBody248_1310 6 bodies249 frames249 (function248_eq bitmapPrefix) (compiled249_eq (step248 bitmapPrefix))
def step247 (bitmapPrefix : AppList (BitVec 64)) := (function247 bitmapPrefix).2.2.1
def programs247 := (247, StackAnalysis.optimized247.2.1, StackAnalysis.optimized247.2.2) :: programs248
def bodies247 := (247, stackBody247_256) :: bodies248
def frames247 := 5 :: frames248
def after247 (bitmapPrefix : AppList (BitVec 64)) := after248 (step247 bitmapPrefix)
theorem compiled247_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs247 (bitmapPrefix, 482) = (bodies247, frames247, after247 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 247 StackAnalysis.optimized247.2.1 StackAnalysis.optimized247.2.2 programs248 (bitmapPrefix, 482) (step247 bitmapPrefix, 486) (after248 (step247 bitmapPrefix), 534) stackBody247_256 5 bodies248 frames248 (function247_eq bitmapPrefix) (compiled248_eq (step247 bitmapPrefix))
def step246 (bitmapPrefix : AppList (BitVec 64)) := (function246 bitmapPrefix).2.2.1
def programs246 := (246, StackAnalysis.optimized246.2.1, StackAnalysis.optimized246.2.2) :: programs247
def bodies246 := (246, stackBody246_26) :: bodies247
def frames246 := 0 :: frames247
def after246 (bitmapPrefix : AppList (BitVec 64)) := after247 (step246 bitmapPrefix)
theorem compiled246_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs246 (bitmapPrefix, 482) = (bodies246, frames246, after246 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 246 StackAnalysis.optimized246.2.1 StackAnalysis.optimized246.2.2 programs247 (bitmapPrefix, 482) (step246 bitmapPrefix, 482) (after247 (step246 bitmapPrefix), 534) stackBody246_26 0 bodies247 frames247 (function246_eq bitmapPrefix) (compiled247_eq (step246 bitmapPrefix))
def step245 (bitmapPrefix : AppList (BitVec 64)) := (function245 bitmapPrefix).2.2.1
def programs245 := (245, StackAnalysis.optimized245.2.1, StackAnalysis.optimized245.2.2) :: programs246
def bodies245 := (245, stackBody245_10) :: bodies246
def frames245 := 0 :: frames246
def after245 (bitmapPrefix : AppList (BitVec 64)) := after246 (step245 bitmapPrefix)
theorem compiled245_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs245 (bitmapPrefix, 482) = (bodies245, frames245, after245 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 245 StackAnalysis.optimized245.2.1 StackAnalysis.optimized245.2.2 programs246 (bitmapPrefix, 482) (step245 bitmapPrefix, 482) (after246 (step245 bitmapPrefix), 534) stackBody245_10 0 bodies246 frames246 (function245_eq bitmapPrefix) (compiled246_eq (step245 bitmapPrefix))
def step244 (bitmapPrefix : AppList (BitVec 64)) := (function244 bitmapPrefix).2.2.1
def programs244 := (244, StackAnalysis.optimized244.2.1, StackAnalysis.optimized244.2.2) :: programs245
def bodies244 := (244, stackBody244_122) :: bodies245
def frames244 := 4 :: frames245
def after244 (bitmapPrefix : AppList (BitVec 64)) := after245 (step244 bitmapPrefix)
theorem compiled244_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs244 (bitmapPrefix, 480) = (bodies244, frames244, after244 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 244 StackAnalysis.optimized244.2.1 StackAnalysis.optimized244.2.2 programs245 (bitmapPrefix, 480) (step244 bitmapPrefix, 482) (after245 (step244 bitmapPrefix), 534) stackBody244_122 4 bodies245 frames245 (function244_eq bitmapPrefix) (compiled245_eq (step244 bitmapPrefix))
def step243 (bitmapPrefix : AppList (BitVec 64)) := (function243 bitmapPrefix).2.2.1
def programs243 := (243, StackAnalysis.optimized243.2.1, StackAnalysis.optimized243.2.2) :: programs244
def bodies243 := (243, stackBody243_278) :: bodies244
def frames243 := 6 :: frames244
def after243 (bitmapPrefix : AppList (BitVec 64)) := after244 (step243 bitmapPrefix)
theorem compiled243_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs243 (bitmapPrefix, 475) = (bodies243, frames243, after243 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 243 StackAnalysis.optimized243.2.1 StackAnalysis.optimized243.2.2 programs244 (bitmapPrefix, 475) (step243 bitmapPrefix, 480) (after244 (step243 bitmapPrefix), 534) stackBody243_278 6 bodies244 frames244 (function243_eq bitmapPrefix) (compiled244_eq (step243 bitmapPrefix))
def step242 (bitmapPrefix : AppList (BitVec 64)) := (function242 bitmapPrefix).2.2.1
def programs242 := (242, StackAnalysis.optimized242.2.1, StackAnalysis.optimized242.2.2) :: programs243
def bodies242 := (242, stackBody242_362) :: bodies243
def frames242 := 6 :: frames243
def after242 (bitmapPrefix : AppList (BitVec 64)) := after243 (step242 bitmapPrefix)
theorem compiled242_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs242 (bitmapPrefix, 469) = (bodies242, frames242, after242 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 242 StackAnalysis.optimized242.2.1 StackAnalysis.optimized242.2.2 programs243 (bitmapPrefix, 469) (step242 bitmapPrefix, 475) (after243 (step242 bitmapPrefix), 534) stackBody242_362 6 bodies243 frames243 (function242_eq bitmapPrefix) (compiled243_eq (step242 bitmapPrefix))
def step241 (bitmapPrefix : AppList (BitVec 64)) := (function241 bitmapPrefix).2.2.1
def programs241 := (241, StackAnalysis.optimized241.2.1, StackAnalysis.optimized241.2.2) :: programs242
def bodies241 := (241, stackBody241_206) :: bodies242
def frames241 := 5 :: frames242
def after241 (bitmapPrefix : AppList (BitVec 64)) := after242 (step241 bitmapPrefix)
theorem compiled241_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs241 (bitmapPrefix, 466) = (bodies241, frames241, after241 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 241 StackAnalysis.optimized241.2.1 StackAnalysis.optimized241.2.2 programs242 (bitmapPrefix, 466) (step241 bitmapPrefix, 469) (after242 (step241 bitmapPrefix), 534) stackBody241_206 5 bodies242 frames242 (function241_eq bitmapPrefix) (compiled242_eq (step241 bitmapPrefix))
def step240 (bitmapPrefix : AppList (BitVec 64)) := (function240 bitmapPrefix).2.2.1
def programs240 := (240, StackAnalysis.optimized240.2.1, StackAnalysis.optimized240.2.2) :: programs241
def bodies240 := (240, stackBody240_407) :: bodies241
def frames240 := 8 :: frames241
def after240 (bitmapPrefix : AppList (BitVec 64)) := after241 (step240 bitmapPrefix)
theorem compiled240_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs240 (bitmapPrefix, 460) = (bodies240, frames240, after240 bitmapPrefix, 534) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 240 StackAnalysis.optimized240.2.1 StackAnalysis.optimized240.2.2 programs241 (bitmapPrefix, 460) (step240 bitmapPrefix, 466) (after241 (step240 bitmapPrefix), 534) stackBody240_407 8 bodies241 frames241 (function240_eq bitmapPrefix) (compiled241_eq (step240 bitmapPrefix))
def programs := programs240
def bodies := bodies240
def frames := frames240
def after := after240
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 534)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 460) = result bitmapPrefix := compiled240_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk240_255
