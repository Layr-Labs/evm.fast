import InitECandidate.Proofs.StackAnalysis.Data473
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
def frame473 : Nat := 0
def slim473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip
theorem frame473_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized473.2.1 optimized473.2.2 = frame473 := by cbv
theorem slim473_eq : WordDepth.Executable.slim optimized473.2.2 = slim473 := by cbv
theorem frameEntry473_eq : frameEntry optimized473 = (473, frame473) := by
  unfold frameEntry
  rw [frame473_eq]
  rfl
theorem slimEntry473_eq : slimEntry optimized473 = (473, 2, slim473) := by
  unfold slimEntry
  rw [slim473_eq]
  rfl
#print axioms frame473_eq
#print axioms slim473_eq
end InitECandidate.Proofs.StackAnalysis
