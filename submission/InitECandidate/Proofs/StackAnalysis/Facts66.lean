import InitECandidate.Proofs.StackAnalysis.Data66
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
def frame66 : Nat := 3
def slim66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame66_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized66.2.1 optimized66.2.2 = frame66 := by cbv
theorem slim66_eq : WordDepth.Executable.slim optimized66.2.2 = slim66 := by cbv
theorem frameEntry66_eq : frameEntry optimized66 = (66, frame66) := by
  unfold frameEntry
  rw [frame66_eq]
  rfl
theorem slimEntry66_eq : slimEntry optimized66 = (66, 2, slim66) := by
  unfold slimEntry
  rw [slim66_eq]
  rfl
#print axioms frame66_eq
#print axioms slim66_eq
end InitECandidate.Proofs.StackAnalysis
