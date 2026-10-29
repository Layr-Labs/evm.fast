import InitECandidate.Proofs.StackAnalysis.Data354
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
def frame354 : Nat := 0
def slim354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame354_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized354.2.1 optimized354.2.2 = frame354 := by cbv
theorem slim354_eq : WordDepth.Executable.slim optimized354.2.2 = slim354 := by cbv
theorem frameEntry354_eq : frameEntry optimized354 = (354, frame354) := by
  unfold frameEntry
  rw [frame354_eq]
  rfl
theorem slimEntry354_eq : slimEntry optimized354 = (354, 2, slim354) := by
  unfold slimEntry
  rw [slim354_eq]
  rfl
#print axioms frame354_eq
#print axioms slim354_eq
end InitECandidate.Proofs.StackAnalysis
