import InitECandidate.Proofs.StackAnalysis.Data111
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
def frame111 : Nat := 0
def slim111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame111_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized111.2.1 optimized111.2.2 = frame111 := by cbv
theorem slim111_eq : WordDepth.Executable.slim optimized111.2.2 = slim111 := by cbv
theorem frameEntry111_eq : frameEntry optimized111 = (111, frame111) := by
  unfold frameEntry
  rw [frame111_eq]
  rfl
theorem slimEntry111_eq : slimEntry optimized111 = (111, 5, slim111) := by
  unfold slimEntry
  rw [slim111_eq]
  rfl
#print axioms frame111_eq
#print axioms slim111_eq
end InitECandidate.Proofs.StackAnalysis
