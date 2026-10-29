import InitECandidate.Proofs.StackAnalysis.Data456
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
def frame456 : Nat := 0
def slim456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame456_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized456.2.1 optimized456.2.2 = frame456 := by cbv
theorem slim456_eq : WordDepth.Executable.slim optimized456.2.2 = slim456 := by cbv
theorem frameEntry456_eq : frameEntry optimized456 = (456, frame456) := by
  unfold frameEntry
  rw [frame456_eq]
  rfl
theorem slimEntry456_eq : slimEntry optimized456 = (456, 4, slim456) := by
  unfold slimEntry
  rw [slim456_eq]
  rfl
#print axioms frame456_eq
#print axioms slim456_eq
end InitECandidate.Proofs.StackAnalysis
