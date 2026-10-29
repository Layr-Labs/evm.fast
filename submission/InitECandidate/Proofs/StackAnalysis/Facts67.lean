import InitECandidate.Proofs.StackAnalysis.Data67
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
def frame67 : Nat := 0
def slim67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame67_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized67.2.1 optimized67.2.2 = frame67 := by cbv
theorem slim67_eq : WordDepth.Executable.slim optimized67.2.2 = slim67 := by cbv
theorem frameEntry67_eq : frameEntry optimized67 = (67, frame67) := by
  unfold frameEntry
  rw [frame67_eq]
  rfl
theorem slimEntry67_eq : slimEntry optimized67 = (67, 1, slim67) := by
  unfold slimEntry
  rw [slim67_eq]
  rfl
#print axioms frame67_eq
#print axioms slim67_eq
end InitECandidate.Proofs.StackAnalysis
