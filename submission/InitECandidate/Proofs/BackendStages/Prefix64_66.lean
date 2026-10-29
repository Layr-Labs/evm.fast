import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Function64
import InitECandidate.Proofs.BackendStages.Function65
import InitECandidate.Proofs.BackendStages.Function66
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages

def programs64_66 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) :=
  [(64, StackAnalysis.optimized64.2.1, StackAnalysis.optimized64.2.2),
   (65, StackAnalysis.optimized65.2.1, StackAnalysis.optimized65.2.2),
   (66, StackAnalysis.optimized66.2.1, StackAnalysis.optimized66.2.2)]

theorem prefix64_66_eq (bitmapPrefix : AppList (BitVec 64)) :
    WordToStack.Native.compileWordToStackNative riscvConfig false
      (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs64_66 (bitmapPrefix, 1) =
      ([(64, (function64 bitmapPrefix).1), (65, (function65 bitmapPrefix).1),
        (66, (function66 (function65 bitmapPrefix).2.2.1).1)],
       [(function64 bitmapPrefix).2.1, (function65 bitmapPrefix).2.1,
        (function66 (function65 bitmapPrefix).2.2.1).2.1],
       (function66 (function65 bitmapPrefix).2.2.1).2.2) := by
  have first_state : (function64 bitmapPrefix).2.2 = (bitmapPrefix, 1) := by rfl
  have second_state : (function65 bitmapPrefix).2.2 = ((function65 bitmapPrefix).2.2.1, 27) := by rfl
  unfold programs64_66
  simp only [WordToStack.Native.compileWordToStackNative, function64_eq]
  rw [first_state]
  rw [function65_eq]
  rw [second_state]
  rw [function66_eq]

#print axioms prefix64_66_eq
end InitECandidate.Proofs.BackendStages
