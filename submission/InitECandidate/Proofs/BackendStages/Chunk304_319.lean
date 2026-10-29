import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function304
import InitECandidate.Proofs.BackendStages.Function305
import InitECandidate.Proofs.BackendStages.Function306
import InitECandidate.Proofs.BackendStages.Function307
import InitECandidate.Proofs.BackendStages.Function308
import InitECandidate.Proofs.BackendStages.Function309
import InitECandidate.Proofs.BackendStages.Function310
import InitECandidate.Proofs.BackendStages.Function311
import InitECandidate.Proofs.BackendStages.Function312
import InitECandidate.Proofs.BackendStages.Function313
import InitECandidate.Proofs.BackendStages.Function314
import InitECandidate.Proofs.BackendStages.Function315
import InitECandidate.Proofs.BackendStages.Function316
import InitECandidate.Proofs.BackendStages.Function317
import InitECandidate.Proofs.BackendStages.Function318
import InitECandidate.Proofs.BackendStages.Function319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk304_319
def programs320 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies320 : List (Nat × StackLang.HolProg 64) := []
def frames320 : List Nat := []
def after320 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled320_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs320 (bitmapPrefix, 895) = (bodies320, frames320, after320 bitmapPrefix, 895) := by rfl
def step319 (bitmapPrefix : AppList (BitVec 64)) := (function319 bitmapPrefix).2.2.1
def programs319 := (319, StackAnalysis.optimized319.2.1, StackAnalysis.optimized319.2.2) :: programs320
def bodies319 := (319, stackBody319_256) :: bodies320
def frames319 := 6 :: frames320
def after319 (bitmapPrefix : AppList (BitVec 64)) := after320 (step319 bitmapPrefix)
theorem compiled319_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs319 (bitmapPrefix, 891) = (bodies319, frames319, after319 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 319 StackAnalysis.optimized319.2.1 StackAnalysis.optimized319.2.2 programs320 (bitmapPrefix, 891) (step319 bitmapPrefix, 895) (after320 (step319 bitmapPrefix), 895) stackBody319_256 6 bodies320 frames320 (function319_eq bitmapPrefix) (compiled320_eq (step319 bitmapPrefix))
def step318 (bitmapPrefix : AppList (BitVec 64)) := (function318 bitmapPrefix).2.2.1
def programs318 := (318, StackAnalysis.optimized318.2.1, StackAnalysis.optimized318.2.2) :: programs319
def bodies318 := (318, stackBody318_1136) :: bodies319
def frames318 := 11 :: frames319
def after318 (bitmapPrefix : AppList (BitVec 64)) := after319 (step318 bitmapPrefix)
theorem compiled318_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs318 (bitmapPrefix, 882) = (bodies318, frames318, after318 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 318 StackAnalysis.optimized318.2.1 StackAnalysis.optimized318.2.2 programs319 (bitmapPrefix, 882) (step318 bitmapPrefix, 891) (after319 (step318 bitmapPrefix), 895) stackBody318_1136 11 bodies319 frames319 (function318_eq bitmapPrefix) (compiled319_eq (step318 bitmapPrefix))
def step317 (bitmapPrefix : AppList (BitVec 64)) := (function317 bitmapPrefix).2.2.1
def programs317 := (317, StackAnalysis.optimized317.2.1, StackAnalysis.optimized317.2.2) :: programs318
def bodies317 := (317, stackBody317_262) :: bodies318
def frames317 := 6 :: frames318
def after317 (bitmapPrefix : AppList (BitVec 64)) := after318 (step317 bitmapPrefix)
theorem compiled317_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs317 (bitmapPrefix, 880) = (bodies317, frames317, after317 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 317 StackAnalysis.optimized317.2.1 StackAnalysis.optimized317.2.2 programs318 (bitmapPrefix, 880) (step317 bitmapPrefix, 882) (after318 (step317 bitmapPrefix), 895) stackBody317_262 6 bodies318 frames318 (function317_eq bitmapPrefix) (compiled318_eq (step317 bitmapPrefix))
def step316 (bitmapPrefix : AppList (BitVec 64)) := (function316 bitmapPrefix).2.2.1
def programs316 := (316, StackAnalysis.optimized316.2.1, StackAnalysis.optimized316.2.2) :: programs317
def bodies316 := (316, stackBody316_531) :: bodies317
def frames316 := 6 :: frames317
def after316 (bitmapPrefix : AppList (BitVec 64)) := after317 (step316 bitmapPrefix)
theorem compiled316_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs316 (bitmapPrefix, 876) = (bodies316, frames316, after316 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 316 StackAnalysis.optimized316.2.1 StackAnalysis.optimized316.2.2 programs317 (bitmapPrefix, 876) (step316 bitmapPrefix, 880) (after317 (step316 bitmapPrefix), 895) stackBody316_531 6 bodies317 frames317 (function316_eq bitmapPrefix) (compiled317_eq (step316 bitmapPrefix))
def step315 (bitmapPrefix : AppList (BitVec 64)) := (function315 bitmapPrefix).2.2.1
def programs315 := (315, StackAnalysis.optimized315.2.1, StackAnalysis.optimized315.2.2) :: programs316
def bodies315 := (315, stackBody315_1185) :: bodies316
def frames315 := 16 :: frames316
def after315 (bitmapPrefix : AppList (BitVec 64)) := after316 (step315 bitmapPrefix)
theorem compiled315_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs315 (bitmapPrefix, 869) = (bodies315, frames315, after315 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 315 StackAnalysis.optimized315.2.1 StackAnalysis.optimized315.2.2 programs316 (bitmapPrefix, 869) (step315 bitmapPrefix, 876) (after316 (step315 bitmapPrefix), 895) stackBody315_1185 16 bodies316 frames316 (function315_eq bitmapPrefix) (compiled316_eq (step315 bitmapPrefix))
def step314 (bitmapPrefix : AppList (BitVec 64)) := (function314 bitmapPrefix).2.2.1
def programs314 := (314, StackAnalysis.optimized314.2.1, StackAnalysis.optimized314.2.2) :: programs315
def bodies314 := (314, stackBody314_522) :: bodies315
def frames314 := 10 :: frames315
def after314 (bitmapPrefix : AppList (BitVec 64)) := after315 (step314 bitmapPrefix)
theorem compiled314_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs314 (bitmapPrefix, 865) = (bodies314, frames314, after314 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 314 StackAnalysis.optimized314.2.1 StackAnalysis.optimized314.2.2 programs315 (bitmapPrefix, 865) (step314 bitmapPrefix, 869) (after315 (step314 bitmapPrefix), 895) stackBody314_522 10 bodies315 frames315 (function314_eq bitmapPrefix) (compiled315_eq (step314 bitmapPrefix))
def step313 (bitmapPrefix : AppList (BitVec 64)) := (function313 bitmapPrefix).2.2.1
def programs313 := (313, StackAnalysis.optimized313.2.1, StackAnalysis.optimized313.2.2) :: programs314
def bodies313 := (313, stackBody313_378) :: bodies314
def frames313 := 12 :: frames314
def after313 (bitmapPrefix : AppList (BitVec 64)) := after314 (step313 bitmapPrefix)
theorem compiled313_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs313 (bitmapPrefix, 862) = (bodies313, frames313, after313 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 313 StackAnalysis.optimized313.2.1 StackAnalysis.optimized313.2.2 programs314 (bitmapPrefix, 862) (step313 bitmapPrefix, 865) (after314 (step313 bitmapPrefix), 895) stackBody313_378 12 bodies314 frames314 (function313_eq bitmapPrefix) (compiled314_eq (step313 bitmapPrefix))
def step312 (bitmapPrefix : AppList (BitVec 64)) := (function312 bitmapPrefix).2.2.1
def programs312 := (312, StackAnalysis.optimized312.2.1, StackAnalysis.optimized312.2.2) :: programs313
def bodies312 := (312, stackBody312_370) :: bodies313
def frames312 := 10 :: frames313
def after312 (bitmapPrefix : AppList (BitVec 64)) := after313 (step312 bitmapPrefix)
theorem compiled312_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs312 (bitmapPrefix, 859) = (bodies312, frames312, after312 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 312 StackAnalysis.optimized312.2.1 StackAnalysis.optimized312.2.2 programs313 (bitmapPrefix, 859) (step312 bitmapPrefix, 862) (after313 (step312 bitmapPrefix), 895) stackBody312_370 10 bodies313 frames313 (function312_eq bitmapPrefix) (compiled313_eq (step312 bitmapPrefix))
def step311 (bitmapPrefix : AppList (BitVec 64)) := (function311 bitmapPrefix).2.2.1
def programs311 := (311, StackAnalysis.optimized311.2.1, StackAnalysis.optimized311.2.2) :: programs312
def bodies311 := (311, stackBody311_254) :: bodies312
def frames311 := 5 :: frames312
def after311 (bitmapPrefix : AppList (BitVec 64)) := after312 (step311 bitmapPrefix)
theorem compiled311_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs311 (bitmapPrefix, 855) = (bodies311, frames311, after311 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 311 StackAnalysis.optimized311.2.1 StackAnalysis.optimized311.2.2 programs312 (bitmapPrefix, 855) (step311 bitmapPrefix, 859) (after312 (step311 bitmapPrefix), 895) stackBody311_254 5 bodies312 frames312 (function311_eq bitmapPrefix) (compiled312_eq (step311 bitmapPrefix))
def step310 (bitmapPrefix : AppList (BitVec 64)) := (function310 bitmapPrefix).2.2.1
def programs310 := (310, StackAnalysis.optimized310.2.1, StackAnalysis.optimized310.2.2) :: programs311
def bodies310 := (310, stackBody310_328) :: bodies311
def frames310 := 5 :: frames311
def after310 (bitmapPrefix : AppList (BitVec 64)) := after311 (step310 bitmapPrefix)
theorem compiled310_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs310 (bitmapPrefix, 850) = (bodies310, frames310, after310 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 310 StackAnalysis.optimized310.2.1 StackAnalysis.optimized310.2.2 programs311 (bitmapPrefix, 850) (step310 bitmapPrefix, 855) (after311 (step310 bitmapPrefix), 895) stackBody310_328 5 bodies311 frames311 (function310_eq bitmapPrefix) (compiled311_eq (step310 bitmapPrefix))
def step309 (bitmapPrefix : AppList (BitVec 64)) := (function309 bitmapPrefix).2.2.1
def programs309 := (309, StackAnalysis.optimized309.2.1, StackAnalysis.optimized309.2.2) :: programs310
def bodies309 := (309, stackBody309_64) :: bodies310
def frames309 := 3 :: frames310
def after309 (bitmapPrefix : AppList (BitVec 64)) := after310 (step309 bitmapPrefix)
theorem compiled309_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs309 (bitmapPrefix, 849) = (bodies309, frames309, after309 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 309 StackAnalysis.optimized309.2.1 StackAnalysis.optimized309.2.2 programs310 (bitmapPrefix, 849) (step309 bitmapPrefix, 850) (after310 (step309 bitmapPrefix), 895) stackBody309_64 3 bodies310 frames310 (function309_eq bitmapPrefix) (compiled310_eq (step309 bitmapPrefix))
def step308 (bitmapPrefix : AppList (BitVec 64)) := (function308 bitmapPrefix).2.2.1
def programs308 := (308, StackAnalysis.optimized308.2.1, StackAnalysis.optimized308.2.2) :: programs309
def bodies308 := (308, stackBody308_84) :: bodies309
def frames308 := 4 :: frames309
def after308 (bitmapPrefix : AppList (BitVec 64)) := after309 (step308 bitmapPrefix)
theorem compiled308_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs308 (bitmapPrefix, 848) = (bodies308, frames308, after308 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 308 StackAnalysis.optimized308.2.1 StackAnalysis.optimized308.2.2 programs309 (bitmapPrefix, 848) (step308 bitmapPrefix, 849) (after309 (step308 bitmapPrefix), 895) stackBody308_84 4 bodies309 frames309 (function308_eq bitmapPrefix) (compiled309_eq (step308 bitmapPrefix))
def step307 (bitmapPrefix : AppList (BitVec 64)) := (function307 bitmapPrefix).2.2.1
def programs307 := (307, StackAnalysis.optimized307.2.1, StackAnalysis.optimized307.2.2) :: programs308
def bodies307 := (307, stackBody307_88) :: bodies308
def frames307 := 3 :: frames308
def after307 (bitmapPrefix : AppList (BitVec 64)) := after308 (step307 bitmapPrefix)
theorem compiled307_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs307 (bitmapPrefix, 847) = (bodies307, frames307, after307 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 307 StackAnalysis.optimized307.2.1 StackAnalysis.optimized307.2.2 programs308 (bitmapPrefix, 847) (step307 bitmapPrefix, 848) (after308 (step307 bitmapPrefix), 895) stackBody307_88 3 bodies308 frames308 (function307_eq bitmapPrefix) (compiled308_eq (step307 bitmapPrefix))
def step306 (bitmapPrefix : AppList (BitVec 64)) := (function306 bitmapPrefix).2.2.1
def programs306 := (306, StackAnalysis.optimized306.2.1, StackAnalysis.optimized306.2.2) :: programs307
def bodies306 := (306, stackBody306_539) :: bodies307
def frames306 := 7 :: frames307
def after306 (bitmapPrefix : AppList (BitVec 64)) := after307 (step306 bitmapPrefix)
theorem compiled306_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs306 (bitmapPrefix, 844) = (bodies306, frames306, after306 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 306 StackAnalysis.optimized306.2.1 StackAnalysis.optimized306.2.2 programs307 (bitmapPrefix, 844) (step306 bitmapPrefix, 847) (after307 (step306 bitmapPrefix), 895) stackBody306_539 7 bodies307 frames307 (function306_eq bitmapPrefix) (compiled307_eq (step306 bitmapPrefix))
def step305 (bitmapPrefix : AppList (BitVec 64)) := (function305 bitmapPrefix).2.2.1
def programs305 := (305, StackAnalysis.optimized305.2.1, StackAnalysis.optimized305.2.2) :: programs306
def bodies305 := (305, stackBody305_412) :: bodies306
def frames305 := 6 :: frames306
def after305 (bitmapPrefix : AppList (BitVec 64)) := after306 (step305 bitmapPrefix)
theorem compiled305_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs305 (bitmapPrefix, 838) = (bodies305, frames305, after305 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 305 StackAnalysis.optimized305.2.1 StackAnalysis.optimized305.2.2 programs306 (bitmapPrefix, 838) (step305 bitmapPrefix, 844) (after306 (step305 bitmapPrefix), 895) stackBody305_412 6 bodies306 frames306 (function305_eq bitmapPrefix) (compiled306_eq (step305 bitmapPrefix))
def step304 (bitmapPrefix : AppList (BitVec 64)) := (function304 bitmapPrefix).2.2.1
def programs304 := (304, StackAnalysis.optimized304.2.1, StackAnalysis.optimized304.2.2) :: programs305
def bodies304 := (304, stackBody304_250) :: bodies305
def frames304 := 5 :: frames305
def after304 (bitmapPrefix : AppList (BitVec 64)) := after305 (step304 bitmapPrefix)
theorem compiled304_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs304 (bitmapPrefix, 834) = (bodies304, frames304, after304 bitmapPrefix, 895) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 304 StackAnalysis.optimized304.2.1 StackAnalysis.optimized304.2.2 programs305 (bitmapPrefix, 834) (step304 bitmapPrefix, 838) (after305 (step304 bitmapPrefix), 895) stackBody304_250 5 bodies305 frames305 (function304_eq bitmapPrefix) (compiled305_eq (step304 bitmapPrefix))
def programs := programs304
def bodies := bodies304
def frames := frames304
def after := after304
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 895)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 834) = result bitmapPrefix := compiled304_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk304_319
