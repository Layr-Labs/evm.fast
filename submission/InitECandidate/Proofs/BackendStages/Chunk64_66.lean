import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function64
import InitECandidate.Proofs.BackendStages.Function65
import InitECandidate.Proofs.BackendStages.Function66
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Chunk64_66
abbrev state64 (bitmapPrefix : AppList (BitVec 64)) : AppList (BitVec 64) := bitmapPrefix
abbrev state65 (bitmapPrefix : AppList (BitVec 64)) : AppList (BitVec 64) := (function64 (state64 bitmapPrefix)).2.2.1
abbrev state66 (bitmapPrefix : AppList (BitVec 64)) : AppList (BitVec 64) := (function65 (state65 bitmapPrefix)).2.2.1
theorem state64_eq (bitmapPrefix : AppList (BitVec 64)) : (function64 (state64 bitmapPrefix)).2.2 = (state65 bitmapPrefix, 1) := by rfl
theorem state65_eq (bitmapPrefix : AppList (BitVec 64)) : (function65 (state65 bitmapPrefix)).2.2 = (state66 bitmapPrefix, 27) := by rfl
def programs : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := [
  (64, StackAnalysis.optimized64.2.1, StackAnalysis.optimized64.2.2),
  (65, StackAnalysis.optimized65.2.1, StackAnalysis.optimized65.2.2),
  (66, StackAnalysis.optimized66.2.1, StackAnalysis.optimized66.2.2)]
theorem compiled_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs (bitmapPrefix, 1) = ([(64, (function64 (state64 bitmapPrefix)).1), (65, (function65 (state65 bitmapPrefix)).1), (66, (function66 (state66 bitmapPrefix)).1)], [(function64 (state64 bitmapPrefix)).2.1, (function65 (state65 bitmapPrefix)).2.1, (function66 (state66 bitmapPrefix)).2.1], (function66 (state66 bitmapPrefix)).2.2) := by
  unfold programs
  simp only [WordToStack.Native.compileWordToStackNative]
  rw [function64_eq]
  change _ = _
  rw [state64_eq bitmapPrefix]
  rw [function65_eq]
  change _ = _
  rw [state65_eq bitmapPrefix]
  rw [function66_eq]
  try rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.Chunk64_66
