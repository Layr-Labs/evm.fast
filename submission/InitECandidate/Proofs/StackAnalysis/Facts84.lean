import InitECandidate.Proofs.StackAnalysis.Data84
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
def frame84 : Nat := 0
def slim84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame84_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized84.2.1 optimized84.2.2 = frame84 := by cbv
theorem slim84_eq : WordDepth.Executable.slim optimized84.2.2 = slim84 := by cbv
theorem frameEntry84_eq : frameEntry optimized84 = (84, frame84) := by
  unfold frameEntry
  rw [frame84_eq]
  rfl
theorem slimEntry84_eq : slimEntry optimized84 = (84, 2, slim84) := by
  unfold slimEntry
  rw [slim84_eq]
  rfl
#print axioms frame84_eq
#print axioms slim84_eq
end InitECandidate.Proofs.StackAnalysis
