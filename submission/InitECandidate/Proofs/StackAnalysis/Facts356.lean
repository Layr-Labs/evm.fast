import InitECandidate.Proofs.StackAnalysis.Data356
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
def frame356 : Nat := 0
def slim356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame356_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized356.2.1 optimized356.2.2 = frame356 := by cbv
theorem slim356_eq : WordDepth.Executable.slim optimized356.2.2 = slim356 := by cbv
theorem frameEntry356_eq : frameEntry optimized356 = (356, frame356) := by
  unfold frameEntry
  rw [frame356_eq]
  rfl
theorem slimEntry356_eq : slimEntry optimized356 = (356, 2, slim356) := by
  unfold slimEntry
  rw [slim356_eq]
  rfl
#print axioms frame356_eq
#print axioms slim356_eq
end InitECandidate.Proofs.StackAnalysis
