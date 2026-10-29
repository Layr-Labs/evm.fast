import InitECandidate.Proofs.StackAnalysis.Data72
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
def frame72 : Nat := 0
def slim72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame72_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized72.2.1 optimized72.2.2 = frame72 := by cbv
theorem slim72_eq : WordDepth.Executable.slim optimized72.2.2 = slim72 := by cbv
theorem frameEntry72_eq : frameEntry optimized72 = (72, frame72) := by
  unfold frameEntry
  rw [frame72_eq]
  rfl
theorem slimEntry72_eq : slimEntry optimized72 = (72, 1, slim72) := by
  unfold slimEntry
  rw [slim72_eq]
  rfl
#print axioms frame72_eq
#print axioms slim72_eq
end InitECandidate.Proofs.StackAnalysis
