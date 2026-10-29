import InitECandidate.Proofs.StackAnalysis.Data206
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
def frame206 : Nat := 9
def slim206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.call Option.none (Option.some 116) List.nil Option.none)
  (Flapjack.WordLangProgHOL.call Option.none (Option.some 205) List.nil Option.none)
theorem frame206_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized206.2.1 optimized206.2.2 = frame206 := by cbv
theorem slim206_eq : WordDepth.Executable.slim optimized206.2.2 = slim206 := by cbv
theorem frameEntry206_eq : frameEntry optimized206 = (206, frame206) := by
  unfold frameEntry
  rw [frame206_eq]
  rfl
theorem slimEntry206_eq : slimEntry optimized206 = (206, 9, slim206) := by
  unfold slimEntry
  rw [slim206_eq]
  rfl
#print axioms frame206_eq
#print axioms slim206_eq
end InitECandidate.Proofs.StackAnalysis
