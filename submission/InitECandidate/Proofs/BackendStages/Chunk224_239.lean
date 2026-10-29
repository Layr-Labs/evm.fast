import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function224
import InitECandidate.Proofs.BackendStages.Function225
import InitECandidate.Proofs.BackendStages.Function226
import InitECandidate.Proofs.BackendStages.Function227
import InitECandidate.Proofs.BackendStages.Function228
import InitECandidate.Proofs.BackendStages.Function229
import InitECandidate.Proofs.BackendStages.Function230
import InitECandidate.Proofs.BackendStages.Function231
import InitECandidate.Proofs.BackendStages.Function232
import InitECandidate.Proofs.BackendStages.Function233
import InitECandidate.Proofs.BackendStages.Function234
import InitECandidate.Proofs.BackendStages.Function235
import InitECandidate.Proofs.BackendStages.Function236
import InitECandidate.Proofs.BackendStages.Function237
import InitECandidate.Proofs.BackendStages.Function238
import InitECandidate.Proofs.BackendStages.Function239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk224_239
def programs240 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies240 : List (Nat × StackLang.HolProg 64) := []
def frames240 : List Nat := []
def after240 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled240_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs240 (bitmapPrefix, 460) = (bodies240, frames240, after240 bitmapPrefix, 460) := by rfl
def step239 (bitmapPrefix : AppList (BitVec 64)) := (function239 bitmapPrefix).2.2.1
def programs239 := (239, StackAnalysis.optimized239.2.1, StackAnalysis.optimized239.2.2) :: programs240
def bodies239 := (239, stackBody239_230) :: bodies240
def frames239 := 5 :: frames240
def after239 (bitmapPrefix : AppList (BitVec 64)) := after240 (step239 bitmapPrefix)
theorem compiled239_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs239 (bitmapPrefix, 456) = (bodies239, frames239, after239 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 239 StackAnalysis.optimized239.2.1 StackAnalysis.optimized239.2.2 programs240 (bitmapPrefix, 456) (step239 bitmapPrefix, 460) (after240 (step239 bitmapPrefix), 460) stackBody239_230 5 bodies240 frames240 (function239_eq bitmapPrefix) (compiled240_eq (step239 bitmapPrefix))
def step238 (bitmapPrefix : AppList (BitVec 64)) := (function238 bitmapPrefix).2.2.1
def programs238 := (238, StackAnalysis.optimized238.2.1, StackAnalysis.optimized238.2.2) :: programs239
def bodies238 := (238, stackBody238_114) :: bodies239
def frames238 := 4 :: frames239
def after238 (bitmapPrefix : AppList (BitVec 64)) := after239 (step238 bitmapPrefix)
theorem compiled238_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs238 (bitmapPrefix, 454) = (bodies238, frames238, after238 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 238 StackAnalysis.optimized238.2.1 StackAnalysis.optimized238.2.2 programs239 (bitmapPrefix, 454) (step238 bitmapPrefix, 456) (after239 (step238 bitmapPrefix), 460) stackBody238_114 4 bodies239 frames239 (function238_eq bitmapPrefix) (compiled239_eq (step238 bitmapPrefix))
def step237 (bitmapPrefix : AppList (BitVec 64)) := (function237 bitmapPrefix).2.2.1
def programs237 := (237, StackAnalysis.optimized237.2.1, StackAnalysis.optimized237.2.2) :: programs238
def bodies237 := (237, stackBody237_694) :: bodies238
def frames237 := 11 :: frames238
def after237 (bitmapPrefix : AppList (BitVec 64)) := after238 (step237 bitmapPrefix)
theorem compiled237_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs237 (bitmapPrefix, 446) = (bodies237, frames237, after237 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 237 StackAnalysis.optimized237.2.1 StackAnalysis.optimized237.2.2 programs238 (bitmapPrefix, 446) (step237 bitmapPrefix, 454) (after238 (step237 bitmapPrefix), 460) stackBody237_694 11 bodies238 frames238 (function237_eq bitmapPrefix) (compiled238_eq (step237 bitmapPrefix))
def step236 (bitmapPrefix : AppList (BitVec 64)) := (function236 bitmapPrefix).2.2.1
def programs236 := (236, StackAnalysis.optimized236.2.1, StackAnalysis.optimized236.2.2) :: programs237
def bodies236 := (236, stackBody236_210) :: bodies237
def frames236 := 5 :: frames237
def after236 (bitmapPrefix : AppList (BitVec 64)) := after237 (step236 bitmapPrefix)
theorem compiled236_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs236 (bitmapPrefix, 443) = (bodies236, frames236, after236 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 236 StackAnalysis.optimized236.2.1 StackAnalysis.optimized236.2.2 programs237 (bitmapPrefix, 443) (step236 bitmapPrefix, 446) (after237 (step236 bitmapPrefix), 460) stackBody236_210 5 bodies237 frames237 (function236_eq bitmapPrefix) (compiled237_eq (step236 bitmapPrefix))
def step235 (bitmapPrefix : AppList (BitVec 64)) := (function235 bitmapPrefix).2.2.1
def programs235 := (235, StackAnalysis.optimized235.2.1, StackAnalysis.optimized235.2.2) :: programs236
def bodies235 := (235, stackBody235_1163) :: bodies236
def frames235 := 15 :: frames236
def after235 (bitmapPrefix : AppList (BitVec 64)) := after236 (step235 bitmapPrefix)
theorem compiled235_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs235 (bitmapPrefix, 431) = (bodies235, frames235, after235 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 235 StackAnalysis.optimized235.2.1 StackAnalysis.optimized235.2.2 programs236 (bitmapPrefix, 431) (step235 bitmapPrefix, 443) (after236 (step235 bitmapPrefix), 460) stackBody235_1163 15 bodies236 frames236 (function235_eq bitmapPrefix) (compiled236_eq (step235 bitmapPrefix))
def step234 (bitmapPrefix : AppList (BitVec 64)) := (function234 bitmapPrefix).2.2.1
def programs234 := (234, StackAnalysis.optimized234.2.1, StackAnalysis.optimized234.2.2) :: programs235
def bodies234 := (234, stackBody234_3294) :: bodies235
def frames234 := 2 :: frames235
def after234 (bitmapPrefix : AppList (BitVec 64)) := after235 (step234 bitmapPrefix)
theorem compiled234_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs234 (bitmapPrefix, 428) = (bodies234, frames234, after234 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 234 StackAnalysis.optimized234.2.1 StackAnalysis.optimized234.2.2 programs235 (bitmapPrefix, 428) (step234 bitmapPrefix, 431) (after235 (step234 bitmapPrefix), 460) stackBody234_3294 2 bodies235 frames235 (function234_eq bitmapPrefix) (compiled235_eq (step234 bitmapPrefix))
def step233 (bitmapPrefix : AppList (BitVec 64)) := (function233 bitmapPrefix).2.2.1
def programs233 := (233, StackAnalysis.optimized233.2.1, StackAnalysis.optimized233.2.2) :: programs234
def bodies233 := (233, stackBody233_396) :: bodies234
def frames233 := 14 :: frames234
def after233 (bitmapPrefix : AppList (BitVec 64)) := after234 (step233 bitmapPrefix)
theorem compiled233_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs233 (bitmapPrefix, 423) = (bodies233, frames233, after233 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 233 StackAnalysis.optimized233.2.1 StackAnalysis.optimized233.2.2 programs234 (bitmapPrefix, 423) (step233 bitmapPrefix, 428) (after234 (step233 bitmapPrefix), 460) stackBody233_396 14 bodies234 frames234 (function233_eq bitmapPrefix) (compiled234_eq (step233 bitmapPrefix))
def step232 (bitmapPrefix : AppList (BitVec 64)) := (function232 bitmapPrefix).2.2.1
def programs232 := (232, StackAnalysis.optimized232.2.1, StackAnalysis.optimized232.2.2) :: programs233
def bodies232 := (232, stackBody232_278) :: bodies233
def frames232 := 5 :: frames233
def after232 (bitmapPrefix : AppList (BitVec 64)) := after233 (step232 bitmapPrefix)
theorem compiled232_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs232 (bitmapPrefix, 418) = (bodies232, frames232, after232 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 232 StackAnalysis.optimized232.2.1 StackAnalysis.optimized232.2.2 programs233 (bitmapPrefix, 418) (step232 bitmapPrefix, 423) (after233 (step232 bitmapPrefix), 460) stackBody232_278 5 bodies233 frames233 (function232_eq bitmapPrefix) (compiled233_eq (step232 bitmapPrefix))
def step231 (bitmapPrefix : AppList (BitVec 64)) := (function231 bitmapPrefix).2.2.1
def programs231 := (231, StackAnalysis.optimized231.2.1, StackAnalysis.optimized231.2.2) :: programs232
def bodies231 := (231, stackBody231_2224) :: bodies232
def frames231 := 29 :: frames232
def after231 (bitmapPrefix : AppList (BitVec 64)) := after232 (step231 bitmapPrefix)
theorem compiled231_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs231 (bitmapPrefix, 396) = (bodies231, frames231, after231 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 231 StackAnalysis.optimized231.2.1 StackAnalysis.optimized231.2.2 programs232 (bitmapPrefix, 396) (step231 bitmapPrefix, 418) (after232 (step231 bitmapPrefix), 460) stackBody231_2224 29 bodies232 frames232 (function231_eq bitmapPrefix) (compiled232_eq (step231 bitmapPrefix))
def step230 (bitmapPrefix : AppList (BitVec 64)) := (function230 bitmapPrefix).2.2.1
def programs230 := (230, StackAnalysis.optimized230.2.1, StackAnalysis.optimized230.2.2) :: programs231
def bodies230 := (230, stackBody230_826) :: bodies231
def frames230 := 16 :: frames231
def after230 (bitmapPrefix : AppList (BitVec 64)) := after231 (step230 bitmapPrefix)
theorem compiled230_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs230 (bitmapPrefix, 386) = (bodies230, frames230, after230 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 230 StackAnalysis.optimized230.2.1 StackAnalysis.optimized230.2.2 programs231 (bitmapPrefix, 386) (step230 bitmapPrefix, 396) (after231 (step230 bitmapPrefix), 460) stackBody230_826 16 bodies231 frames231 (function230_eq bitmapPrefix) (compiled231_eq (step230 bitmapPrefix))
def step229 (bitmapPrefix : AppList (BitVec 64)) := (function229 bitmapPrefix).2.2.1
def programs229 := (229, StackAnalysis.optimized229.2.1, StackAnalysis.optimized229.2.2) :: programs230
def bodies229 := (229, stackBody229_332) :: bodies230
def frames229 := 10 :: frames230
def after229 (bitmapPrefix : AppList (BitVec 64)) := after230 (step229 bitmapPrefix)
theorem compiled229_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs229 (bitmapPrefix, 382) = (bodies229, frames229, after229 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 229 StackAnalysis.optimized229.2.1 StackAnalysis.optimized229.2.2 programs230 (bitmapPrefix, 382) (step229 bitmapPrefix, 386) (after230 (step229 bitmapPrefix), 460) stackBody229_332 10 bodies230 frames230 (function229_eq bitmapPrefix) (compiled230_eq (step229 bitmapPrefix))
def step228 (bitmapPrefix : AppList (BitVec 64)) := (function228 bitmapPrefix).2.2.1
def programs228 := (228, StackAnalysis.optimized228.2.1, StackAnalysis.optimized228.2.2) :: programs229
def bodies228 := (228, stackBody228_588) :: bodies229
def frames228 := 11 :: frames229
def after228 (bitmapPrefix : AppList (BitVec 64)) := after229 (step228 bitmapPrefix)
theorem compiled228_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs228 (bitmapPrefix, 375) = (bodies228, frames228, after228 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 228 StackAnalysis.optimized228.2.1 StackAnalysis.optimized228.2.2 programs229 (bitmapPrefix, 375) (step228 bitmapPrefix, 382) (after229 (step228 bitmapPrefix), 460) stackBody228_588 11 bodies229 frames229 (function228_eq bitmapPrefix) (compiled229_eq (step228 bitmapPrefix))
def step227 (bitmapPrefix : AppList (BitVec 64)) := (function227 bitmapPrefix).2.2.1
def programs227 := (227, StackAnalysis.optimized227.2.1, StackAnalysis.optimized227.2.2) :: programs228
def bodies227 := (227, stackBody227_3035) :: bodies228
def frames227 := 42 :: frames228
def after227 (bitmapPrefix : AppList (BitVec 64)) := after228 (step227 bitmapPrefix)
theorem compiled227_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs227 (bitmapPrefix, 358) = (bodies227, frames227, after227 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 227 StackAnalysis.optimized227.2.1 StackAnalysis.optimized227.2.2 programs228 (bitmapPrefix, 358) (step227 bitmapPrefix, 375) (after228 (step227 bitmapPrefix), 460) stackBody227_3035 42 bodies228 frames228 (function227_eq bitmapPrefix) (compiled228_eq (step227 bitmapPrefix))
def step226 (bitmapPrefix : AppList (BitVec 64)) := (function226 bitmapPrefix).2.2.1
def programs226 := (226, StackAnalysis.optimized226.2.1, StackAnalysis.optimized226.2.2) :: programs227
def bodies226 := (226, stackBody226_671) :: bodies227
def frames226 := 17 :: frames227
def after226 (bitmapPrefix : AppList (BitVec 64)) := after227 (step226 bitmapPrefix)
theorem compiled226_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs226 (bitmapPrefix, 353) = (bodies226, frames226, after226 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 226 StackAnalysis.optimized226.2.1 StackAnalysis.optimized226.2.2 programs227 (bitmapPrefix, 353) (step226 bitmapPrefix, 358) (after227 (step226 bitmapPrefix), 460) stackBody226_671 17 bodies227 frames227 (function226_eq bitmapPrefix) (compiled227_eq (step226 bitmapPrefix))
def step225 (bitmapPrefix : AppList (BitVec 64)) := (function225 bitmapPrefix).2.2.1
def programs225 := (225, StackAnalysis.optimized225.2.1, StackAnalysis.optimized225.2.2) :: programs226
def bodies225 := (225, stackBody225_3768) :: bodies226
def frames225 := 35 :: frames226
def after225 (bitmapPrefix : AppList (BitVec 64)) := after226 (step225 bitmapPrefix)
theorem compiled225_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs225 (bitmapPrefix, 323) = (bodies225, frames225, after225 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 225 StackAnalysis.optimized225.2.1 StackAnalysis.optimized225.2.2 programs226 (bitmapPrefix, 323) (step225 bitmapPrefix, 353) (after226 (step225 bitmapPrefix), 460) stackBody225_3768 35 bodies226 frames226 (function225_eq bitmapPrefix) (compiled226_eq (step225 bitmapPrefix))
def step224 (bitmapPrefix : AppList (BitVec 64)) := (function224 bitmapPrefix).2.2.1
def programs224 := (224, StackAnalysis.optimized224.2.1, StackAnalysis.optimized224.2.2) :: programs225
def bodies224 := (224, stackBody224_2986) :: bodies225
def frames224 := 31 :: frames225
def after224 (bitmapPrefix : AppList (BitVec 64)) := after225 (step224 bitmapPrefix)
theorem compiled224_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs224 (bitmapPrefix, 298) = (bodies224, frames224, after224 bitmapPrefix, 460) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 224 StackAnalysis.optimized224.2.1 StackAnalysis.optimized224.2.2 programs225 (bitmapPrefix, 298) (step224 bitmapPrefix, 323) (after225 (step224 bitmapPrefix), 460) stackBody224_2986 31 bodies225 frames225 (function224_eq bitmapPrefix) (compiled225_eq (step224 bitmapPrefix))
def programs := programs224
def bodies := bodies224
def frames := frames224
def after := after224
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 460)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 298) = result bitmapPrefix := compiled224_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk224_239
