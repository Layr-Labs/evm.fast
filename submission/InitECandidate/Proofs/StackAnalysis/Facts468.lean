import InitECandidate.Proofs.StackAnalysis.Data468
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
def frame468 : Nat := 0
def slim468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame468_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized468.2.1 optimized468.2.2 = frame468 := by cbv
theorem slim468_eq : WordDepth.Executable.slim optimized468.2.2 = slim468 := by cbv
theorem frameEntry468_eq : frameEntry optimized468 = (468, frame468) := by
  unfold frameEntry
  rw [frame468_eq]
  rfl
theorem slimEntry468_eq : slimEntry optimized468 = (468, 3, slim468) := by
  unfold slimEntry
  rw [slim468_eq]
  rfl
#print axioms frame468_eq
#print axioms slim468_eq
end InitECandidate.Proofs.StackAnalysis
