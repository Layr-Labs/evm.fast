import InitECandidate.Proofs.StackAnalysis.Data629
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
def frame629 : Nat := 0
def slim629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame629_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized629.2.1 optimized629.2.2 = frame629 := by cbv
theorem slim629_eq : WordDepth.Executable.slim optimized629.2.2 = slim629 := by cbv
theorem frameEntry629_eq : frameEntry optimized629 = (629, frame629) := by
  unfold frameEntry
  rw [frame629_eq]
  rfl
theorem slimEntry629_eq : slimEntry optimized629 = (629, 2, slim629) := by
  unfold slimEntry
  rw [slim629_eq]
  rfl
#print axioms frame629_eq
#print axioms slim629_eq
end InitECandidate.Proofs.StackAnalysis
