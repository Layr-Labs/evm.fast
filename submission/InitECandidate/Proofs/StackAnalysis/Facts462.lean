import InitECandidate.Proofs.StackAnalysis.Data462
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
def frame462 : Nat := 0
def slim462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame462_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized462.2.1 optimized462.2.2 = frame462 := by cbv
theorem slim462_eq : WordDepth.Executable.slim optimized462.2.2 = slim462 := by cbv
theorem frameEntry462_eq : frameEntry optimized462 = (462, frame462) := by
  unfold frameEntry
  rw [frame462_eq]
  rfl
theorem slimEntry462_eq : slimEntry optimized462 = (462, 5, slim462) := by
  unfold slimEntry
  rw [slim462_eq]
  rfl
#print axioms frame462_eq
#print axioms slim462_eq
end InitECandidate.Proofs.StackAnalysis
