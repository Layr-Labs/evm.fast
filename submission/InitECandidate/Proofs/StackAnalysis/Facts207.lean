import InitECandidate.Proofs.StackAnalysis.Data207
import InitECandidate.Proofs.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.StackAnalysis
def frame207 : Nat := 0
def slim207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.call Option.none (Option.some 116) List.nil Option.none)
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 205) List.nil Option.none)
theorem frame207_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized207.2.1 optimized207.2.2 = frame207 := by cbv
theorem slim207_eq : WordDepth.Executable.slim optimized207.2.2 = slim207 := by cbv
theorem frameEntry207_eq : frameEntry optimized207 = (207, frame207) := by
  unfold frameEntry
  rw [frame207_eq]
  rfl
theorem slimEntry207_eq : slimEntry optimized207 = (207, 5, slim207) := by
  unfold slimEntry
  rw [slim207_eq]
  rfl
#print axioms frame207_eq
#print axioms slim207_eq
end InitECandidate.Proofs.StackAnalysis
