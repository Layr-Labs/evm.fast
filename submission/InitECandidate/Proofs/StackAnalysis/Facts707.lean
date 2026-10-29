import InitECandidate.Proofs.StackAnalysis.Data707
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
def frame707 : Nat := 0
def slim707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame707_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized707.2.1 optimized707.2.2 = frame707 := by cbv
theorem slim707_eq : WordDepth.Executable.slim optimized707.2.2 = slim707 := by cbv
theorem frameEntry707_eq : frameEntry optimized707 = (707, frame707) := by
  unfold frameEntry
  rw [frame707_eq]
  rfl
theorem slimEntry707_eq : slimEntry optimized707 = (707, 13, slim707) := by
  unfold slimEntry
  rw [slim707_eq]
  rfl
#print axioms frame707_eq
#print axioms slim707_eq
end InitECandidate.Proofs.StackAnalysis
