import InitECandidate.Proofs.StackAnalysis.Data355
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
def frame355 : Nat := 0
def slim355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame355_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized355.2.1 optimized355.2.2 = frame355 := by cbv
theorem slim355_eq : WordDepth.Executable.slim optimized355.2.2 = slim355 := by cbv
theorem frameEntry355_eq : frameEntry optimized355 = (355, frame355) := by
  unfold frameEntry
  rw [frame355_eq]
  rfl
theorem slimEntry355_eq : slimEntry optimized355 = (355, 2, slim355) := by
  unfold slimEntry
  rw [slim355_eq]
  rfl
#print axioms frame355_eq
#print axioms slim355_eq
end InitECandidate.Proofs.StackAnalysis
