import InitECandidate.Proofs.StackAnalysis.Data82
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
def frame82 : Nat := 0
def slim82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame82_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized82.2.1 optimized82.2.2 = frame82 := by cbv
theorem slim82_eq : WordDepth.Executable.slim optimized82.2.2 = slim82 := by cbv
theorem frameEntry82_eq : frameEntry optimized82 = (82, frame82) := by
  unfold frameEntry
  rw [frame82_eq]
  rfl
theorem slimEntry82_eq : slimEntry optimized82 = (82, 2, slim82) := by
  unfold slimEntry
  rw [slim82_eq]
  rfl
#print axioms frame82_eq
#print axioms slim82_eq
end InitECandidate.Proofs.StackAnalysis
