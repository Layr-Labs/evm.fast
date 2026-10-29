import InitECandidate.Proofs.StackAnalysis.Data123
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
def frame123 : Nat := 0
def slim123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame123_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized123.2.1 optimized123.2.2 = frame123 := by cbv
theorem slim123_eq : WordDepth.Executable.slim optimized123.2.2 = slim123 := by cbv
theorem frameEntry123_eq : frameEntry optimized123 = (123, frame123) := by
  unfold frameEntry
  rw [frame123_eq]
  rfl
theorem slimEntry123_eq : slimEntry optimized123 = (123, 4, slim123) := by
  unfold slimEntry
  rw [slim123_eq]
  rfl
#print axioms frame123_eq
#print axioms slim123_eq
end InitECandidate.Proofs.StackAnalysis
