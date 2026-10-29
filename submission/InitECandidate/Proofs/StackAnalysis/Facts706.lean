import InitECandidate.Proofs.StackAnalysis.Data706
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
def frame706 : Nat := 0
def slim706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame706_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized706.2.1 optimized706.2.2 = frame706 := by cbv
theorem slim706_eq : WordDepth.Executable.slim optimized706.2.2 = slim706 := by cbv
theorem frameEntry706_eq : frameEntry optimized706 = (706, frame706) := by
  unfold frameEntry
  rw [frame706_eq]
  rfl
theorem slimEntry706_eq : slimEntry optimized706 = (706, 13, slim706) := by
  unfold slimEntry
  rw [slim706_eq]
  rfl
#print axioms frame706_eq
#print axioms slim706_eq
end InitECandidate.Proofs.StackAnalysis
