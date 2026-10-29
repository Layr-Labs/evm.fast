import InitECandidate.Proofs.StackAnalysis.Data141
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
def frame141 : Nat := 0
def slim141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame141_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized141.2.1 optimized141.2.2 = frame141 := by cbv
theorem slim141_eq : WordDepth.Executable.slim optimized141.2.2 = slim141 := by cbv
theorem frameEntry141_eq : frameEntry optimized141 = (141, frame141) := by
  unfold frameEntry
  rw [frame141_eq]
  rfl
theorem slimEntry141_eq : slimEntry optimized141 = (141, 6, slim141) := by
  unfold slimEntry
  rw [slim141_eq]
  rfl
#print axioms frame141_eq
#print axioms slim141_eq
end InitECandidate.Proofs.StackAnalysis
