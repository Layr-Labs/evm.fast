import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function400
import InitECandidate.Proofs.BackendStages.Function401
import InitECandidate.Proofs.BackendStages.Function402
import InitECandidate.Proofs.BackendStages.Function403
import InitECandidate.Proofs.BackendStages.Function404
import InitECandidate.Proofs.BackendStages.Function405
import InitECandidate.Proofs.BackendStages.Function406
import InitECandidate.Proofs.BackendStages.Function407
import InitECandidate.Proofs.BackendStages.Function408
import InitECandidate.Proofs.BackendStages.Function409
import InitECandidate.Proofs.BackendStages.Function410
import InitECandidate.Proofs.BackendStages.Function411
import InitECandidate.Proofs.BackendStages.Function412
import InitECandidate.Proofs.BackendStages.Function413
import InitECandidate.Proofs.BackendStages.Function414
import InitECandidate.Proofs.BackendStages.Function415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk400_415
def programs416 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies416 : List (Nat × StackLang.HolProg 64) := []
def frames416 : List Nat := []
def after416 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled416_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs416 (bitmapPrefix, 1240) = (bodies416, frames416, after416 bitmapPrefix, 1240) := by rfl
def step415 (bitmapPrefix : AppList (BitVec 64)) := (function415 bitmapPrefix).2.2.1
def programs415 := (415, StackAnalysis.optimized415.2.1, StackAnalysis.optimized415.2.2) :: programs416
def bodies415 := (415, stackBody415_242) :: bodies416
def frames415 := 3 :: frames416
def after415 (bitmapPrefix : AppList (BitVec 64)) := after416 (step415 bitmapPrefix)
theorem compiled415_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs415 (bitmapPrefix, 1237) = (bodies415, frames415, after415 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 415 StackAnalysis.optimized415.2.1 StackAnalysis.optimized415.2.2 programs416 (bitmapPrefix, 1237) (step415 bitmapPrefix, 1240) (after416 (step415 bitmapPrefix), 1240) stackBody415_242 3 bodies416 frames416 (function415_eq bitmapPrefix) (compiled416_eq (step415 bitmapPrefix))
def step414 (bitmapPrefix : AppList (BitVec 64)) := (function414 bitmapPrefix).2.2.1
def programs414 := (414, StackAnalysis.optimized414.2.1, StackAnalysis.optimized414.2.2) :: programs415
def bodies414 := (414, stackBody414_308) :: bodies415
def frames414 := 3 :: frames415
def after414 (bitmapPrefix : AppList (BitVec 64)) := after415 (step414 bitmapPrefix)
theorem compiled414_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs414 (bitmapPrefix, 1233) = (bodies414, frames414, after414 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 414 StackAnalysis.optimized414.2.1 StackAnalysis.optimized414.2.2 programs415 (bitmapPrefix, 1233) (step414 bitmapPrefix, 1237) (after415 (step414 bitmapPrefix), 1240) stackBody414_308 3 bodies415 frames415 (function414_eq bitmapPrefix) (compiled415_eq (step414 bitmapPrefix))
def step413 (bitmapPrefix : AppList (BitVec 64)) := (function413 bitmapPrefix).2.2.1
def programs413 := (413, StackAnalysis.optimized413.2.1, StackAnalysis.optimized413.2.2) :: programs414
def bodies413 := (413, stackBody413_78) :: bodies414
def frames413 := 2 :: frames414
def after413 (bitmapPrefix : AppList (BitVec 64)) := after414 (step413 bitmapPrefix)
theorem compiled413_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs413 (bitmapPrefix, 1232) = (bodies413, frames413, after413 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 413 StackAnalysis.optimized413.2.1 StackAnalysis.optimized413.2.2 programs414 (bitmapPrefix, 1232) (step413 bitmapPrefix, 1233) (after414 (step413 bitmapPrefix), 1240) stackBody413_78 2 bodies414 frames414 (function413_eq bitmapPrefix) (compiled414_eq (step413 bitmapPrefix))
def step412 (bitmapPrefix : AppList (BitVec 64)) := (function412 bitmapPrefix).2.2.1
def programs412 := (412, StackAnalysis.optimized412.2.1, StackAnalysis.optimized412.2.2) :: programs413
def bodies412 := (412, stackBody412_158) :: bodies413
def frames412 := 2 :: frames413
def after412 (bitmapPrefix : AppList (BitVec 64)) := after413 (step412 bitmapPrefix)
theorem compiled412_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs412 (bitmapPrefix, 1230) = (bodies412, frames412, after412 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 412 StackAnalysis.optimized412.2.1 StackAnalysis.optimized412.2.2 programs413 (bitmapPrefix, 1230) (step412 bitmapPrefix, 1232) (after413 (step412 bitmapPrefix), 1240) stackBody412_158 2 bodies413 frames413 (function412_eq bitmapPrefix) (compiled413_eq (step412 bitmapPrefix))
def step411 (bitmapPrefix : AppList (BitVec 64)) := (function411 bitmapPrefix).2.2.1
def programs411 := (411, StackAnalysis.optimized411.2.1, StackAnalysis.optimized411.2.2) :: programs412
def bodies411 := (411, stackBody411_320) :: bodies412
def frames411 := 4 :: frames412
def after411 (bitmapPrefix : AppList (BitVec 64)) := after412 (step411 bitmapPrefix)
theorem compiled411_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs411 (bitmapPrefix, 1226) = (bodies411, frames411, after411 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 411 StackAnalysis.optimized411.2.1 StackAnalysis.optimized411.2.2 programs412 (bitmapPrefix, 1226) (step411 bitmapPrefix, 1230) (after412 (step411 bitmapPrefix), 1240) stackBody411_320 4 bodies412 frames412 (function411_eq bitmapPrefix) (compiled412_eq (step411 bitmapPrefix))
def step410 (bitmapPrefix : AppList (BitVec 64)) := (function410 bitmapPrefix).2.2.1
def programs410 := (410, StackAnalysis.optimized410.2.1, StackAnalysis.optimized410.2.2) :: programs411
def bodies410 := (410, stackBody410_440) :: bodies411
def frames410 := 4 :: frames411
def after410 (bitmapPrefix : AppList (BitVec 64)) := after411 (step410 bitmapPrefix)
theorem compiled410_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs410 (bitmapPrefix, 1220) = (bodies410, frames410, after410 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 410 StackAnalysis.optimized410.2.1 StackAnalysis.optimized410.2.2 programs411 (bitmapPrefix, 1220) (step410 bitmapPrefix, 1226) (after411 (step410 bitmapPrefix), 1240) stackBody410_440 4 bodies411 frames411 (function410_eq bitmapPrefix) (compiled411_eq (step410 bitmapPrefix))
def step409 (bitmapPrefix : AppList (BitVec 64)) := (function409 bitmapPrefix).2.2.1
def programs409 := (409, StackAnalysis.optimized409.2.1, StackAnalysis.optimized409.2.2) :: programs410
def bodies409 := (409, stackBody409_140) :: bodies410
def frames409 := 3 :: frames410
def after409 (bitmapPrefix : AppList (BitVec 64)) := after410 (step409 bitmapPrefix)
theorem compiled409_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs409 (bitmapPrefix, 1218) = (bodies409, frames409, after409 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 409 StackAnalysis.optimized409.2.1 StackAnalysis.optimized409.2.2 programs410 (bitmapPrefix, 1218) (step409 bitmapPrefix, 1220) (after410 (step409 bitmapPrefix), 1240) stackBody409_140 3 bodies410 frames410 (function409_eq bitmapPrefix) (compiled410_eq (step409 bitmapPrefix))
def step408 (bitmapPrefix : AppList (BitVec 64)) := (function408 bitmapPrefix).2.2.1
def programs408 := (408, StackAnalysis.optimized408.2.1, StackAnalysis.optimized408.2.2) :: programs409
def bodies408 := (408, stackBody408_456) :: bodies409
def frames408 := 4 :: frames409
def after408 (bitmapPrefix : AppList (BitVec 64)) := after409 (step408 bitmapPrefix)
theorem compiled408_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs408 (bitmapPrefix, 1212) = (bodies408, frames408, after408 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 408 StackAnalysis.optimized408.2.1 StackAnalysis.optimized408.2.2 programs409 (bitmapPrefix, 1212) (step408 bitmapPrefix, 1218) (after409 (step408 bitmapPrefix), 1240) stackBody408_456 4 bodies409 frames409 (function408_eq bitmapPrefix) (compiled409_eq (step408 bitmapPrefix))
def step407 (bitmapPrefix : AppList (BitVec 64)) := (function407 bitmapPrefix).2.2.1
def programs407 := (407, StackAnalysis.optimized407.2.1, StackAnalysis.optimized407.2.2) :: programs408
def bodies407 := (407, stackBody407_118) :: bodies408
def frames407 := 2 :: frames408
def after407 (bitmapPrefix : AppList (BitVec 64)) := after408 (step407 bitmapPrefix)
theorem compiled407_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs407 (bitmapPrefix, 1210) = (bodies407, frames407, after407 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 407 StackAnalysis.optimized407.2.1 StackAnalysis.optimized407.2.2 programs408 (bitmapPrefix, 1210) (step407 bitmapPrefix, 1212) (after408 (step407 bitmapPrefix), 1240) stackBody407_118 2 bodies408 frames408 (function407_eq bitmapPrefix) (compiled408_eq (step407 bitmapPrefix))
def step406 (bitmapPrefix : AppList (BitVec 64)) := (function406 bitmapPrefix).2.2.1
def programs406 := (406, StackAnalysis.optimized406.2.1, StackAnalysis.optimized406.2.2) :: programs407
def bodies406 := (406, stackBody406_206) :: bodies407
def frames406 := 3 :: frames407
def after406 (bitmapPrefix : AppList (BitVec 64)) := after407 (step406 bitmapPrefix)
theorem compiled406_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs406 (bitmapPrefix, 1207) = (bodies406, frames406, after406 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 406 StackAnalysis.optimized406.2.1 StackAnalysis.optimized406.2.2 programs407 (bitmapPrefix, 1207) (step406 bitmapPrefix, 1210) (after407 (step406 bitmapPrefix), 1240) stackBody406_206 3 bodies407 frames407 (function406_eq bitmapPrefix) (compiled407_eq (step406 bitmapPrefix))
def step405 (bitmapPrefix : AppList (BitVec 64)) := (function405 bitmapPrefix).2.2.1
def programs405 := (405, StackAnalysis.optimized405.2.1, StackAnalysis.optimized405.2.2) :: programs406
def bodies405 := (405, stackBody405_118) :: bodies406
def frames405 := 2 :: frames406
def after405 (bitmapPrefix : AppList (BitVec 64)) := after406 (step405 bitmapPrefix)
theorem compiled405_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs405 (bitmapPrefix, 1205) = (bodies405, frames405, after405 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 405 StackAnalysis.optimized405.2.1 StackAnalysis.optimized405.2.2 programs406 (bitmapPrefix, 1205) (step405 bitmapPrefix, 1207) (after406 (step405 bitmapPrefix), 1240) stackBody405_118 2 bodies406 frames406 (function405_eq bitmapPrefix) (compiled406_eq (step405 bitmapPrefix))
def step404 (bitmapPrefix : AppList (BitVec 64)) := (function404 bitmapPrefix).2.2.1
def programs404 := (404, StackAnalysis.optimized404.2.1, StackAnalysis.optimized404.2.2) :: programs405
def bodies404 := (404, stackBody404_256) :: bodies405
def frames404 := 3 :: frames405
def after404 (bitmapPrefix : AppList (BitVec 64)) := after405 (step404 bitmapPrefix)
theorem compiled404_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs404 (bitmapPrefix, 1201) = (bodies404, frames404, after404 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 404 StackAnalysis.optimized404.2.1 StackAnalysis.optimized404.2.2 programs405 (bitmapPrefix, 1201) (step404 bitmapPrefix, 1205) (after405 (step404 bitmapPrefix), 1240) stackBody404_256 3 bodies405 frames405 (function404_eq bitmapPrefix) (compiled405_eq (step404 bitmapPrefix))
def step403 (bitmapPrefix : AppList (BitVec 64)) := (function403 bitmapPrefix).2.2.1
def programs403 := (403, StackAnalysis.optimized403.2.1, StackAnalysis.optimized403.2.2) :: programs404
def bodies403 := (403, stackBody403_138) :: bodies404
def frames403 := 2 :: frames404
def after403 (bitmapPrefix : AppList (BitVec 64)) := after404 (step403 bitmapPrefix)
theorem compiled403_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs403 (bitmapPrefix, 1199) = (bodies403, frames403, after403 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 403 StackAnalysis.optimized403.2.1 StackAnalysis.optimized403.2.2 programs404 (bitmapPrefix, 1199) (step403 bitmapPrefix, 1201) (after404 (step403 bitmapPrefix), 1240) stackBody403_138 2 bodies404 frames404 (function403_eq bitmapPrefix) (compiled404_eq (step403 bitmapPrefix))
def step402 (bitmapPrefix : AppList (BitVec 64)) := (function402 bitmapPrefix).2.2.1
def programs402 := (402, StackAnalysis.optimized402.2.1, StackAnalysis.optimized402.2.2) :: programs403
def bodies402 := (402, stackBody402_184) :: bodies403
def frames402 := 3 :: frames403
def after402 (bitmapPrefix : AppList (BitVec 64)) := after403 (step402 bitmapPrefix)
theorem compiled402_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs402 (bitmapPrefix, 1197) = (bodies402, frames402, after402 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 402 StackAnalysis.optimized402.2.1 StackAnalysis.optimized402.2.2 programs403 (bitmapPrefix, 1197) (step402 bitmapPrefix, 1199) (after403 (step402 bitmapPrefix), 1240) stackBody402_184 3 bodies403 frames403 (function402_eq bitmapPrefix) (compiled403_eq (step402 bitmapPrefix))
def step401 (bitmapPrefix : AppList (BitVec 64)) := (function401 bitmapPrefix).2.2.1
def programs401 := (401, StackAnalysis.optimized401.2.1, StackAnalysis.optimized401.2.2) :: programs402
def bodies401 := (401, stackBody401_664) :: bodies402
def frames401 := 5 :: frames402
def after401 (bitmapPrefix : AppList (BitVec 64)) := after402 (step401 bitmapPrefix)
theorem compiled401_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs401 (bitmapPrefix, 1187) = (bodies401, frames401, after401 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 401 StackAnalysis.optimized401.2.1 StackAnalysis.optimized401.2.2 programs402 (bitmapPrefix, 1187) (step401 bitmapPrefix, 1197) (after402 (step401 bitmapPrefix), 1240) stackBody401_664 5 bodies402 frames402 (function401_eq bitmapPrefix) (compiled402_eq (step401 bitmapPrefix))
def step400 (bitmapPrefix : AppList (BitVec 64)) := (function400 bitmapPrefix).2.2.1
def programs400 := (400, StackAnalysis.optimized400.2.1, StackAnalysis.optimized400.2.2) :: programs401
def bodies400 := (400, stackBody400_222) :: bodies401
def frames400 := 4 :: frames401
def after400 (bitmapPrefix : AppList (BitVec 64)) := after401 (step400 bitmapPrefix)
theorem compiled400_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs400 (bitmapPrefix, 1184) = (bodies400, frames400, after400 bitmapPrefix, 1240) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 400 StackAnalysis.optimized400.2.1 StackAnalysis.optimized400.2.2 programs401 (bitmapPrefix, 1184) (step400 bitmapPrefix, 1187) (after401 (step400 bitmapPrefix), 1240) stackBody400_222 4 bodies401 frames401 (function400_eq bitmapPrefix) (compiled401_eq (step400 bitmapPrefix))
def programs := programs400
def bodies := bodies400
def frames := frames400
def after := after400
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 1240)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1184) = result bitmapPrefix := compiled400_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk400_415
