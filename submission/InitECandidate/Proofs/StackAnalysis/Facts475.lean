import InitECandidate.Proofs.StackAnalysis.Data475
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
def frame475 : Nat := 0
def slim475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame475_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized475.2.1 optimized475.2.2 = frame475 := by cbv
theorem slim475_eq : WordDepth.Executable.slim optimized475.2.2 = slim475 := by cbv
theorem frameEntry475_eq : frameEntry optimized475 = (475, frame475) := by
  unfold frameEntry
  rw [frame475_eq]
  rfl
theorem slimEntry475_eq : slimEntry optimized475 = (475, 1, slim475) := by
  unfold slimEntry
  rw [slim475_eq]
  rfl
#print axioms frame475_eq
#print axioms slim475_eq
end InitECandidate.Proofs.StackAnalysis
