import InitECandidate.Proofs.StackAnalysis.Data681
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
def frame681 : Nat := 0
def slim681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.call Option.none (Option.some 676) List.nil Option.none
theorem frame681_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized681.2.1 optimized681.2.2 = frame681 := by cbv
theorem slim681_eq : WordDepth.Executable.slim optimized681.2.2 = slim681 := by cbv
theorem frameEntry681_eq : frameEntry optimized681 = (681, frame681) := by
  unfold frameEntry
  rw [frame681_eq]
  rfl
theorem slimEntry681_eq : slimEntry optimized681 = (681, 3, slim681) := by
  unfold slimEntry
  rw [slim681_eq]
  rfl
#print axioms frame681_eq
#print axioms slim681_eq
end InitECandidate.Proofs.StackAnalysis
