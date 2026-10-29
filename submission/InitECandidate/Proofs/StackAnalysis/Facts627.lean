import InitECandidate.Proofs.StackAnalysis.Data627
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
def frame627 : Nat := 0
def slim627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame627_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized627.2.1 optimized627.2.2 = frame627 := by cbv
theorem slim627_eq : WordDepth.Executable.slim optimized627.2.2 = slim627 := by cbv
theorem frameEntry627_eq : frameEntry optimized627 = (627, frame627) := by
  unfold frameEntry
  rw [frame627_eq]
  rfl
theorem slimEntry627_eq : slimEntry optimized627 = (627, 5, slim627) := by
  unfold slimEntry
  rw [slim627_eq]
  rfl
#print axioms frame627_eq
#print axioms slim627_eq
end InitECandidate.Proofs.StackAnalysis
