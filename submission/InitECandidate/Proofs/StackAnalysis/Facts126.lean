import InitECandidate.Proofs.StackAnalysis.Data126
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
def frame126 : Nat := 0
def slim126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame126_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized126.2.1 optimized126.2.2 = frame126 := by cbv
theorem slim126_eq : WordDepth.Executable.slim optimized126.2.2 = slim126 := by cbv
theorem frameEntry126_eq : frameEntry optimized126 = (126, frame126) := by
  unfold frameEntry
  rw [frame126_eq]
  rfl
theorem slimEntry126_eq : slimEntry optimized126 = (126, 3, slim126) := by
  unfold slimEntry
  rw [slim126_eq]
  rfl
#print axioms frame126_eq
#print axioms slim126_eq
end InitECandidate.Proofs.StackAnalysis
