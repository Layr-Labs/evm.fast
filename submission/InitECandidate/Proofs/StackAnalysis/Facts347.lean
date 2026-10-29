import InitECandidate.Proofs.StackAnalysis.Data347
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
def frame347 : Nat := 0
def slim347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame347_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized347.2.1 optimized347.2.2 = frame347 := by cbv
theorem slim347_eq : WordDepth.Executable.slim optimized347.2.2 = slim347 := by cbv
theorem frameEntry347_eq : frameEntry optimized347 = (347, frame347) := by
  unfold frameEntry
  rw [frame347_eq]
  rfl
theorem slimEntry347_eq : slimEntry optimized347 = (347, 2, slim347) := by
  unfold slimEntry
  rw [slim347_eq]
  rfl
#print axioms frame347_eq
#print axioms slim347_eq
end InitECandidate.Proofs.StackAnalysis
