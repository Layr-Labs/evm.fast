import InitECandidate.Proofs.StackAnalysis.Data93
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
def frame93 : Nat := 0
def slim93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame93_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized93.2.1 optimized93.2.2 = frame93 := by cbv
theorem slim93_eq : WordDepth.Executable.slim optimized93.2.2 = slim93 := by cbv
theorem frameEntry93_eq : frameEntry optimized93 = (93, frame93) := by
  unfold frameEntry
  rw [frame93_eq]
  rfl
theorem slimEntry93_eq : slimEntry optimized93 = (93, 3, slim93) := by
  unfold slimEntry
  rw [slim93_eq]
  rfl
#print axioms frame93_eq
#print axioms slim93_eq
end InitECandidate.Proofs.StackAnalysis
