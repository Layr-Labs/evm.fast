import InitECandidate.Proofs.StackAnalysis.Data636
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
def frame636 : Nat := 0
def slim636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame636_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized636.2.1 optimized636.2.2 = frame636 := by cbv
theorem slim636_eq : WordDepth.Executable.slim optimized636.2.2 = slim636 := by cbv
theorem frameEntry636_eq : frameEntry optimized636 = (636, frame636) := by
  unfold frameEntry
  rw [frame636_eq]
  rfl
theorem slimEntry636_eq : slimEntry optimized636 = (636, 5, slim636) := by
  unfold slimEntry
  rw [slim636_eq]
  rfl
#print axioms frame636_eq
#print axioms slim636_eq
end InitECandidate.Proofs.StackAnalysis
