import InitECandidate.Proofs.StackAnalysis.Data290
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
def frame290 : Nat := 0
def slim290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame290_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized290.2.1 optimized290.2.2 = frame290 := by cbv
theorem slim290_eq : WordDepth.Executable.slim optimized290.2.2 = slim290 := by cbv
theorem frameEntry290_eq : frameEntry optimized290 = (290, frame290) := by
  unfold frameEntry
  rw [frame290_eq]
  rfl
theorem slimEntry290_eq : slimEntry optimized290 = (290, 5, slim290) := by
  unfold slimEntry
  rw [slim290_eq]
  rfl
#print axioms frame290_eq
#print axioms slim290_eq
end InitECandidate.Proofs.StackAnalysis
