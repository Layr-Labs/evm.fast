import InitECandidate.Proofs.StackAnalysis.Data649
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
def frame649 : Nat := 0
def slim649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame649_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized649.2.1 optimized649.2.2 = frame649 := by cbv
theorem slim649_eq : WordDepth.Executable.slim optimized649.2.2 = slim649 := by cbv
theorem frameEntry649_eq : frameEntry optimized649 = (649, frame649) := by
  unfold frameEntry
  rw [frame649_eq]
  rfl
theorem slimEntry649_eq : slimEntry optimized649 = (649, 10, slim649) := by
  unfold slimEntry
  rw [slim649_eq]
  rfl
#print axioms frame649_eq
#print axioms slim649_eq
end InitECandidate.Proofs.StackAnalysis
