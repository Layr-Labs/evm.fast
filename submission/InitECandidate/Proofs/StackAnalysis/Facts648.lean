import InitECandidate.Proofs.StackAnalysis.Data648
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
def frame648 : Nat := 0
def slim648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame648_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized648.2.1 optimized648.2.2 = frame648 := by cbv
theorem slim648_eq : WordDepth.Executable.slim optimized648.2.2 = slim648 := by cbv
theorem frameEntry648_eq : frameEntry optimized648 = (648, frame648) := by
  unfold frameEntry
  rw [frame648_eq]
  rfl
theorem slimEntry648_eq : slimEntry optimized648 = (648, 2, slim648) := by
  unfold slimEntry
  rw [slim648_eq]
  rfl
#print axioms frame648_eq
#print axioms slim648_eq
end InitECandidate.Proofs.StackAnalysis
