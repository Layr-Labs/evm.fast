import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function208
import InitECandidate.Proofs.BackendStages.Function209
import InitECandidate.Proofs.BackendStages.Function210
import InitECandidate.Proofs.BackendStages.Function211
import InitECandidate.Proofs.BackendStages.Function212
import InitECandidate.Proofs.BackendStages.Function213
import InitECandidate.Proofs.BackendStages.Function214
import InitECandidate.Proofs.BackendStages.Function215
import InitECandidate.Proofs.BackendStages.Function216
import InitECandidate.Proofs.BackendStages.Function217
import InitECandidate.Proofs.BackendStages.Function218
import InitECandidate.Proofs.BackendStages.Function219
import InitECandidate.Proofs.BackendStages.Function220
import InitECandidate.Proofs.BackendStages.Function221
import InitECandidate.Proofs.BackendStages.Function222
import InitECandidate.Proofs.BackendStages.Function223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk208_223
def programs224 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies224 : List (Nat × StackLang.HolProg 64) := []
def frames224 : List Nat := []
def after224 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled224_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs224 (bitmapPrefix, 298) = (bodies224, frames224, after224 bitmapPrefix, 298) := by rfl
def step223 (bitmapPrefix : AppList (BitVec 64)) := (function223 bitmapPrefix).2.2.1
def programs223 := (223, StackAnalysis.optimized223.2.1, StackAnalysis.optimized223.2.2) :: programs224
def bodies223 := (223, stackBody223_1964) :: bodies224
def frames223 := 27 :: frames224
def after223 (bitmapPrefix : AppList (BitVec 64)) := after224 (step223 bitmapPrefix)
theorem compiled223_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs223 (bitmapPrefix, 276) = (bodies223, frames223, after223 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 223 StackAnalysis.optimized223.2.1 StackAnalysis.optimized223.2.2 programs224 (bitmapPrefix, 276) (step223 bitmapPrefix, 298) (after224 (step223 bitmapPrefix), 298) stackBody223_1964 27 bodies224 frames224 (function223_eq bitmapPrefix) (compiled224_eq (step223 bitmapPrefix))
def step222 (bitmapPrefix : AppList (BitVec 64)) := (function222 bitmapPrefix).2.2.1
def programs222 := (222, StackAnalysis.optimized222.2.1, StackAnalysis.optimized222.2.2) :: programs223
def bodies222 := (222, stackBody222_22) :: bodies223
def frames222 := 0 :: frames223
def after222 (bitmapPrefix : AppList (BitVec 64)) := after223 (step222 bitmapPrefix)
theorem compiled222_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs222 (bitmapPrefix, 276) = (bodies222, frames222, after222 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 222 StackAnalysis.optimized222.2.1 StackAnalysis.optimized222.2.2 programs223 (bitmapPrefix, 276) (step222 bitmapPrefix, 276) (after223 (step222 bitmapPrefix), 298) stackBody222_22 0 bodies223 frames223 (function222_eq bitmapPrefix) (compiled223_eq (step222 bitmapPrefix))
def step221 (bitmapPrefix : AppList (BitVec 64)) := (function221 bitmapPrefix).2.2.1
def programs221 := (221, StackAnalysis.optimized221.2.1, StackAnalysis.optimized221.2.2) :: programs222
def bodies221 := (221, stackBody221_70) :: bodies222
def frames221 := 0 :: frames222
def after221 (bitmapPrefix : AppList (BitVec 64)) := after222 (step221 bitmapPrefix)
theorem compiled221_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs221 (bitmapPrefix, 276) = (bodies221, frames221, after221 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 221 StackAnalysis.optimized221.2.1 StackAnalysis.optimized221.2.2 programs222 (bitmapPrefix, 276) (step221 bitmapPrefix, 276) (after222 (step221 bitmapPrefix), 298) stackBody221_70 0 bodies222 frames222 (function221_eq bitmapPrefix) (compiled222_eq (step221 bitmapPrefix))
def step220 (bitmapPrefix : AppList (BitVec 64)) := (function220 bitmapPrefix).2.2.1
def programs220 := (220, StackAnalysis.optimized220.2.1, StackAnalysis.optimized220.2.2) :: programs221
def bodies220 := (220, stackBody220_88) :: bodies221
def frames220 := 0 :: frames221
def after220 (bitmapPrefix : AppList (BitVec 64)) := after221 (step220 bitmapPrefix)
theorem compiled220_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs220 (bitmapPrefix, 276) = (bodies220, frames220, after220 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 220 StackAnalysis.optimized220.2.1 StackAnalysis.optimized220.2.2 programs221 (bitmapPrefix, 276) (step220 bitmapPrefix, 276) (after221 (step220 bitmapPrefix), 298) stackBody220_88 0 bodies221 frames221 (function220_eq bitmapPrefix) (compiled221_eq (step220 bitmapPrefix))
def step219 (bitmapPrefix : AppList (BitVec 64)) := (function219 bitmapPrefix).2.2.1
def programs219 := (219, StackAnalysis.optimized219.2.1, StackAnalysis.optimized219.2.2) :: programs220
def bodies219 := (219, stackBody219_16) :: bodies220
def frames219 := 0 :: frames220
def after219 (bitmapPrefix : AppList (BitVec 64)) := after220 (step219 bitmapPrefix)
theorem compiled219_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs219 (bitmapPrefix, 276) = (bodies219, frames219, after219 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 219 StackAnalysis.optimized219.2.1 StackAnalysis.optimized219.2.2 programs220 (bitmapPrefix, 276) (step219 bitmapPrefix, 276) (after220 (step219 bitmapPrefix), 298) stackBody219_16 0 bodies220 frames220 (function219_eq bitmapPrefix) (compiled220_eq (step219 bitmapPrefix))
def step218 (bitmapPrefix : AppList (BitVec 64)) := (function218 bitmapPrefix).2.2.1
def programs218 := (218, StackAnalysis.optimized218.2.1, StackAnalysis.optimized218.2.2) :: programs219
def bodies218 := (218, stackBody218_16) :: bodies219
def frames218 := 0 :: frames219
def after218 (bitmapPrefix : AppList (BitVec 64)) := after219 (step218 bitmapPrefix)
theorem compiled218_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs218 (bitmapPrefix, 276) = (bodies218, frames218, after218 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 218 StackAnalysis.optimized218.2.1 StackAnalysis.optimized218.2.2 programs219 (bitmapPrefix, 276) (step218 bitmapPrefix, 276) (after219 (step218 bitmapPrefix), 298) stackBody218_16 0 bodies219 frames219 (function218_eq bitmapPrefix) (compiled219_eq (step218 bitmapPrefix))
def step217 (bitmapPrefix : AppList (BitVec 64)) := (function217 bitmapPrefix).2.2.1
def programs217 := (217, StackAnalysis.optimized217.2.1, StackAnalysis.optimized217.2.2) :: programs218
def bodies217 := (217, stackBody217_519) :: bodies218
def frames217 := 16 :: frames218
def after217 (bitmapPrefix : AppList (BitVec 64)) := after218 (step217 bitmapPrefix)
theorem compiled217_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs217 (bitmapPrefix, 273) = (bodies217, frames217, after217 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 217 StackAnalysis.optimized217.2.1 StackAnalysis.optimized217.2.2 programs218 (bitmapPrefix, 273) (step217 bitmapPrefix, 276) (after218 (step217 bitmapPrefix), 298) stackBody217_519 16 bodies218 frames218 (function217_eq bitmapPrefix) (compiled218_eq (step217 bitmapPrefix))
def step216 (bitmapPrefix : AppList (BitVec 64)) := (function216 bitmapPrefix).2.2.1
def programs216 := (216, StackAnalysis.optimized216.2.1, StackAnalysis.optimized216.2.2) :: programs217
def bodies216 := (216, stackBody216_16) :: bodies217
def frames216 := 0 :: frames217
def after216 (bitmapPrefix : AppList (BitVec 64)) := after217 (step216 bitmapPrefix)
theorem compiled216_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs216 (bitmapPrefix, 273) = (bodies216, frames216, after216 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 216 StackAnalysis.optimized216.2.1 StackAnalysis.optimized216.2.2 programs217 (bitmapPrefix, 273) (step216 bitmapPrefix, 273) (after217 (step216 bitmapPrefix), 298) stackBody216_16 0 bodies217 frames217 (function216_eq bitmapPrefix) (compiled217_eq (step216 bitmapPrefix))
def step215 (bitmapPrefix : AppList (BitVec 64)) := (function215 bitmapPrefix).2.2.1
def programs215 := (215, StackAnalysis.optimized215.2.1, StackAnalysis.optimized215.2.2) :: programs216
def bodies215 := (215, stackBody215_16) :: bodies216
def frames215 := 0 :: frames216
def after215 (bitmapPrefix : AppList (BitVec 64)) := after216 (step215 bitmapPrefix)
theorem compiled215_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs215 (bitmapPrefix, 273) = (bodies215, frames215, after215 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 215 StackAnalysis.optimized215.2.1 StackAnalysis.optimized215.2.2 programs216 (bitmapPrefix, 273) (step215 bitmapPrefix, 273) (after216 (step215 bitmapPrefix), 298) stackBody215_16 0 bodies216 frames216 (function215_eq bitmapPrefix) (compiled216_eq (step215 bitmapPrefix))
def step214 (bitmapPrefix : AppList (BitVec 64)) := (function214 bitmapPrefix).2.2.1
def programs214 := (214, StackAnalysis.optimized214.2.1, StackAnalysis.optimized214.2.2) :: programs215
def bodies214 := (214, stackBody214_16) :: bodies215
def frames214 := 0 :: frames215
def after214 (bitmapPrefix : AppList (BitVec 64)) := after215 (step214 bitmapPrefix)
theorem compiled214_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs214 (bitmapPrefix, 273) = (bodies214, frames214, after214 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 214 StackAnalysis.optimized214.2.1 StackAnalysis.optimized214.2.2 programs215 (bitmapPrefix, 273) (step214 bitmapPrefix, 273) (after215 (step214 bitmapPrefix), 298) stackBody214_16 0 bodies215 frames215 (function214_eq bitmapPrefix) (compiled215_eq (step214 bitmapPrefix))
def step213 (bitmapPrefix : AppList (BitVec 64)) := (function213 bitmapPrefix).2.2.1
def programs213 := (213, StackAnalysis.optimized213.2.1, StackAnalysis.optimized213.2.2) :: programs214
def bodies213 := (213, stackBody213_16) :: bodies214
def frames213 := 0 :: frames214
def after213 (bitmapPrefix : AppList (BitVec 64)) := after214 (step213 bitmapPrefix)
theorem compiled213_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs213 (bitmapPrefix, 273) = (bodies213, frames213, after213 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 213 StackAnalysis.optimized213.2.1 StackAnalysis.optimized213.2.2 programs214 (bitmapPrefix, 273) (step213 bitmapPrefix, 273) (after214 (step213 bitmapPrefix), 298) stackBody213_16 0 bodies214 frames214 (function213_eq bitmapPrefix) (compiled214_eq (step213 bitmapPrefix))
def step212 (bitmapPrefix : AppList (BitVec 64)) := (function212 bitmapPrefix).2.2.1
def programs212 := (212, StackAnalysis.optimized212.2.1, StackAnalysis.optimized212.2.2) :: programs213
def bodies212 := (212, stackBody212_272) :: bodies213
def frames212 := 14 :: frames213
def after212 (bitmapPrefix : AppList (BitVec 64)) := after213 (step212 bitmapPrefix)
theorem compiled212_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs212 (bitmapPrefix, 270) = (bodies212, frames212, after212 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 212 StackAnalysis.optimized212.2.1 StackAnalysis.optimized212.2.2 programs213 (bitmapPrefix, 270) (step212 bitmapPrefix, 273) (after213 (step212 bitmapPrefix), 298) stackBody212_272 14 bodies213 frames213 (function212_eq bitmapPrefix) (compiled213_eq (step212 bitmapPrefix))
def step211 (bitmapPrefix : AppList (BitVec 64)) := (function211 bitmapPrefix).2.2.1
def programs211 := (211, StackAnalysis.optimized211.2.1, StackAnalysis.optimized211.2.2) :: programs212
def bodies211 := (211, stackBody211_164) :: bodies212
def frames211 := 2 :: frames212
def after211 (bitmapPrefix : AppList (BitVec 64)) := after212 (step211 bitmapPrefix)
theorem compiled211_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs211 (bitmapPrefix, 269) = (bodies211, frames211, after211 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 211 StackAnalysis.optimized211.2.1 StackAnalysis.optimized211.2.2 programs212 (bitmapPrefix, 269) (step211 bitmapPrefix, 270) (after212 (step211 bitmapPrefix), 298) stackBody211_164 2 bodies212 frames212 (function211_eq bitmapPrefix) (compiled212_eq (step211 bitmapPrefix))
def step210 (bitmapPrefix : AppList (BitVec 64)) := (function210 bitmapPrefix).2.2.1
def programs210 := (210, StackAnalysis.optimized210.2.1, StackAnalysis.optimized210.2.2) :: programs211
def bodies210 := (210, stackBody210_1761) :: bodies211
def frames210 := 27 :: frames211
def after210 (bitmapPrefix : AppList (BitVec 64)) := after211 (step210 bitmapPrefix)
theorem compiled210_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs210 (bitmapPrefix, 261) = (bodies210, frames210, after210 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 210 StackAnalysis.optimized210.2.1 StackAnalysis.optimized210.2.2 programs211 (bitmapPrefix, 261) (step210 bitmapPrefix, 269) (after211 (step210 bitmapPrefix), 298) stackBody210_1761 27 bodies211 frames211 (function210_eq bitmapPrefix) (compiled211_eq (step210 bitmapPrefix))
def step209 (bitmapPrefix : AppList (BitVec 64)) := (function209 bitmapPrefix).2.2.1
def programs209 := (209, StackAnalysis.optimized209.2.1, StackAnalysis.optimized209.2.2) :: programs210
def bodies209 := (209, stackBody209_16) :: bodies210
def frames209 := 0 :: frames210
def after209 (bitmapPrefix : AppList (BitVec 64)) := after210 (step209 bitmapPrefix)
theorem compiled209_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs209 (bitmapPrefix, 261) = (bodies209, frames209, after209 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 209 StackAnalysis.optimized209.2.1 StackAnalysis.optimized209.2.2 programs210 (bitmapPrefix, 261) (step209 bitmapPrefix, 261) (after210 (step209 bitmapPrefix), 298) stackBody209_16 0 bodies210 frames210 (function209_eq bitmapPrefix) (compiled210_eq (step209 bitmapPrefix))
def step208 (bitmapPrefix : AppList (BitVec 64)) := (function208 bitmapPrefix).2.2.1
def programs208 := (208, StackAnalysis.optimized208.2.1, StackAnalysis.optimized208.2.2) :: programs209
def bodies208 := (208, stackBody208_511) :: bodies209
def frames208 := 16 :: frames209
def after208 (bitmapPrefix : AppList (BitVec 64)) := after209 (step208 bitmapPrefix)
theorem compiled208_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs208 (bitmapPrefix, 258) = (bodies208, frames208, after208 bitmapPrefix, 298) := by
  exact InitECandidate.Proofs.BackendComputation.compileWordToStack_cons riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) 208 StackAnalysis.optimized208.2.1 StackAnalysis.optimized208.2.2 programs209 (bitmapPrefix, 258) (step208 bitmapPrefix, 261) (after209 (step208 bitmapPrefix), 298) stackBody208_511 16 bodies209 frames209 (function208_eq bitmapPrefix) (compiled209_eq (step208 bitmapPrefix))
def programs := programs208
def bodies := bodies208
def frames := frames208
def after := after208
def result (bitmapPrefix : AppList (BitVec 64)) := (bodies, frames, after bitmapPrefix, 298)
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 258) = result bitmapPrefix := compiled208_eq bitmapPrefix
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk208_223
