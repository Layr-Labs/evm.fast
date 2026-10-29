import InitECandidate.Proofs.StackAnalysis.Data677
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
def frame677 : Nat := 0
def slim677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 79) List.nil Option.none
theorem frame677_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized677.2.1 optimized677.2.2 = frame677 := by cbv
theorem slim677_eq : WordDepth.Executable.slim optimized677.2.2 = slim677 := by cbv
theorem frameEntry677_eq : frameEntry optimized677 = (677, frame677) := by
  unfold frameEntry
  rw [frame677_eq]
  rfl
theorem slimEntry677_eq : slimEntry optimized677 = (677, 4, slim677) := by
  unfold slimEntry
  rw [slim677_eq]
  rfl
#print axioms frame677_eq
#print axioms slim677_eq
end InitECandidate.Proofs.StackAnalysis
