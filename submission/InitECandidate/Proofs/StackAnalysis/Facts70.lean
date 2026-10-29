import InitECandidate.Proofs.StackAnalysis.Data70
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
def frame70 : Nat := 0
def slim70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame70_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized70.2.1 optimized70.2.2 = frame70 := by cbv
theorem slim70_eq : WordDepth.Executable.slim optimized70.2.2 = slim70 := by cbv
theorem frameEntry70_eq : frameEntry optimized70 = (70, frame70) := by
  unfold frameEntry
  rw [frame70_eq]
  rfl
theorem slimEntry70_eq : slimEntry optimized70 = (70, 2, slim70) := by
  unfold slimEntry
  rw [slim70_eq]
  rfl
#print axioms frame70_eq
#print axioms slim70_eq
end InitECandidate.Proofs.StackAnalysis
